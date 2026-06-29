# External API

TheoChem Lab exposes a local automation API through a Windows named pipe. It is intended for local helper tools, scripts, and agents that need to inspect or control an open TheoChem Lab session.

## Transport

| Item | Value |
| --- | --- |
| Pipe name | `TheoChemLabPipe-0.0.0.1` |
| Request format | One UTF-8 JSON line |
| Response format | 4-byte little-endian length followed by a UTF-8 JSON payload |

Legacy string commands such as `ping`, `help`, and `get.all.atom.xyz` are still supported, but new integrations should use JSON API v2.

## Request Format

```json
{
  "id": "optional-request-id",
  "method": "viewer.fit",
  "params": {}
}
```

## Response Format

Successful response:

```json
{
  "id": "optional-request-id",
  "ok": true,
  "result": {},
  "error": null
}
```

Error response:

```json
{
  "id": "optional-request-id",
  "ok": false,
  "result": null,
  "error": {
    "code": "NO_ACTIVE_VIEWER",
    "message": "No active molecular viewer.",
    "detail": null
  }
}
```

## Discovery

List available commands:

```json
{"id":"help","method":"api.help","params":{}}
```

Get a machine-readable schema:

```json
{"id":"schema","method":"api.schema","params":{}}
```

## App

```json
{"id":"ping","method":"app.ping","params":{}}
```

```json
{"id":"version","method":"app.version","params":{}}
```

## Project And Documents

```json
{"id":"project","method":"project.info","params":{}}
```

```json
{"id":"files","method":"project.files","params":{}}
```

```json
{"id":"active","method":"document.active","params":{}}
```

```json
{"id":"open","method":"document.open","params":{"relativePath":"molecule.wsd"}}
```

```json
{"id":"save","method":"document.save","params":{}}
```

Export the active structure:

```json
{"id":"export","method":"document.export","params":{"scope":"all","format":"xyz"}}
```

Supported export formats are `xyz`, `mol`, `mol2`, and `json`.

Supported export scopes are `all` and `selection`.

## Viewer

Get the current molecular viewer:

```json
{"id":"viewer","method":"viewer.active","params":{}}
```

Toolbar-equivalent view commands:

```json
{"id":"reset","method":"viewer.resetView","params":{}}
```

```json
{"id":"recenter","method":"viewer.recenter","params":{}}
```

```json
{"id":"fit","method":"viewer.fit","params":{}}
```

Get camera state:

```json
{"id":"camera","method":"viewer.camera.get","params":{}}
```

Set camera rotation:

```json
{
  "id": "rotate",
  "method": "viewer.camera.set",
  "params": {
    "rotation": { "x": 0, "y": 0.3826834, "z": 0, "w": 0.9238795 }
  }
}
```

Render to file:

```json
{
  "id": "render",
  "method": "viewer.render",
  "params": {
    "path": "D:/temp/render.png",
    "samples": 8,
    "hideAxis": true
  }
}
```

If `path` is omitted, `viewer.render` returns base64 PNG data in JSON.

## Selection

```json
{"id":"sel","method":"selection.get","params":{}}
```

```json
{"id":"clear","method":"selection.clear","params":{}}
```

```json
{"id":"select","method":"selection.setAtoms","params":{"atomIds":[1,2,3],"mode":"replace"}}
```

```json
{"id":"select-c","method":"selection.byElement","params":{"element":"C","mode":"replace"}}
```

## Structure

```json
{"id":"summary","method":"structure.summary","params":{}}
```

```json
{"id":"structure","method":"structure.get","params":{"scope":"all"}}
```

Add atoms:

```json
{
  "id": "add-atoms",
  "method": "structure.addAtoms",
  "params": {
    "atoms": [
      { "element": "C", "position": [0, 0, 0] },
      { "element": "H", "position": [0, 0, 1.09] }
    ]
  }
}
```

Add a bond:

```json
{"id":"bond","method":"structure.addBond","params":{"atomA":1,"atomB":2}}
```

Regenerate bonds:

```json
{"id":"bonds","method":"structure.buildBonds","params":{}}
```

Add hydrogens:

```json
{"id":"h","method":"structure.addHydrogens","params":{"selectionOnly":true}}
```

Translate selected atoms:

```json
{"id":"move","method":"structure.translateSelection","params":{"delta":[1,0,0]}}
```

## Style

```json
{"id":"style","method":"style.get","params":{}}
```

```json
{
  "id": "style-set",
  "method": "style.setDisplay",
  "params": {
    "displayStyle": "BallAndStick",
    "atomRadius": 0.35,
    "bondRadius": 0.12
  }
}
```

## Minimal PowerShell Client

```powershell
$pipeName = "TheoChemLabPipe-0.0.0.1"
$command = '{"id":"ping","method":"app.ping","params":{}}'

$client = [System.IO.Pipes.NamedPipeClientStream]::new(".", $pipeName, [System.IO.Pipes.PipeDirection]::InOut)
$client.Connect(3000)

$writer = [System.IO.StreamWriter]::new($client, [System.Text.Encoding]::UTF8, 4096, $true)
$writer.NewLine = "`n"
$writer.AutoFlush = $true

$reader = [System.IO.BinaryReader]::new($client, [System.Text.Encoding]::UTF8, $true)
$writer.WriteLine($command)

$length = $reader.ReadInt32()
$bytes = $reader.ReadBytes($length)
[System.Text.Encoding]::UTF8.GetString($bytes)

$client.Dispose()
```

## Notes

- Commands that touch UI or viewer state are executed on the TheoChem Lab UI thread.
- Structure-editing commands mark the document dirty and use existing undo snapshot helpers where available.
- For many rendered frames, prefer `viewer.render` with a file `path`. Returning base64 is convenient for one image, but slower for animations.
