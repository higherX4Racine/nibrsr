## Copyright (C) 2025 by Higher Expectations for Racine County

TYPES_OF_WEAPONS <- tibble::tribble(
    ~ weapon_code,	~ Gun, ~ weapon_name,
    "11",	        TRUE,  "Firearm",
    "11A",	        TRUE,  "Firearm (Automatic)",
    "12",	        TRUE,  "Handgun",
    "12A",	        TRUE,  "Handgun (Automatic)",
    "13",	        TRUE,  "Rifle",
    "13A",	        TRUE,  "Rifle (Automatic)",
    "14",	        TRUE,  "Shotgun",
    "14A",	        TRUE,  "Shotgun (Automatic)",
    "15",	        TRUE,  "Other Firearm",
    "15A",	        TRUE,  "Other Firearm (Automatic)",
    "20",	        FALSE, "Knife/Cutting Instrument",
    "30",	        FALSE, "Blunt Object",
    "35",	        FALSE, "Motor Vehicle/Vessel",
    "40",	        FALSE, "Personal Weapons",
    "50",	        FALSE, "Poison",
    "60",	        FALSE, "Explosives",
    "65",	        FALSE, "Fire/Incendiary Device",
    "70",	        FALSE, "Drugs/Narcotics/Sleeping Pills",
    "85",	        FALSE, "Asphyxiation",
    "90",	        FALSE, "Other",
    "95",	        FALSE, "Unknown",
    "99",	        FALSE, "None"
)

usethis::use_data(TYPES_OF_WEAPONS, overwrite = TRUE)
