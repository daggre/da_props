# da_props

Custom prop models for RedM — Native American dwellings not present in the base game.
Stream-only: eight models, no gameplay code.

## Models

| Model | What it is |
|---|---|
| `da_inipi` | Ini-pi (sweat lodge) |
| `da_tipi_hide` | Hide tipi |
| `da_tipi_hide_dr` | Hide tipi, door variant |
| `da_tipi_hide_lrg` | Large hide tipi |
| `da_tipi_hide_lrg_dr` | Large hide tipi, door variant |
| `da_wikup01_hide` | Wikiup, hide covering |
| `da_wikup02_blanket` | Wikiup, blanket covering |
| `da_wikup02_thatch` | Wikiup, thatch covering |

## Install

```cfg
ensure da_props
```

No dependencies. Nothing else to configure.

> **Stream files require a full server restart.** `restart da_props` will not pick up
> new or changed models — the client caches them at connect time.

## Use

Spawn them like any other prop:

```lua
local model = `da_tipi_hide`
RequestModel(model)
while not HasModelLoaded(model) do Wait(0) end
local obj = CreateObject(model, x, y, z, true, false, false)
```

If [`da_dev`](https://github.com/daggre/da_dev) is running, these models register
themselves with its object browser — they appear under the **other** spawn category,
searchable and previewable, so you can place them in game rather than by coordinate.
That registration is the only Lua in this resource (`models_cl.lua`), and it is a no-op
when `da_dev` is not started.

## Credits

Models by **daggre_actual**.

## Support

Questions, bug reports, or help getting set up — the **[da.dev Discord](https://discord.com/invite/JgteBpXGaA)**
is the fastest way to reach me. GitHub issues on this repo work too.

## License

[MIT](LICENSE) © daggre_actual
