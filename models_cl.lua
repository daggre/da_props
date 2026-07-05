-- Advertise da_props' streamed models to da_dev's object hud so they show up,
-- searchable/previewable/spawnable, under the "other" spawn category.
local MODELS = {
    "da_inipi",
    "da_tipi_hide",
    "da_tipi_hide_dr",
    "da_tipi_hide_lrg",
    "da_tipi_hide_lrg_dr",
    "da_wikup01_hide",
    "da_wikup02_blanket",
    "da_wikup02_thatch",
}

local function register()
    if GetResourceState("da_dev") ~= "started" then return end
    exports["da_dev"]:registerModels(MODELS)
end

-- da_dev asks after it starts (covers da_dev loading/restarting after us).
AddEventHandler("da_dev:requestModels", register)

-- Try immediately (covers us loading after da_dev is already up).
Citizen.CreateThread(register)
