## Copyright (C) 2025 by Higher Expectations

#' Categories of law enforcement activities that are cataloged in the NIBRS
#'
#' @format an object of type `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 11 rows and 2 columns
#' \describe{
#'  \item{activity_type_code}{`<chr>` a two-digit identifier for the activity type}
#'  \item{activity_type_name}{`<chr>` a human-readable description of the activity type}
#' }
#' @source <https://cde.ucr.cjis.gov/LATEST/webapp/>
"GLOSSARY_OF_ACTIVITY_TYPES"

#' Categories of arrest that are cataloged in the NIBRS
#'
#' @format an object of type `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 3 rows and 2 columns
#' \describe{
#'  \item{arrest_type_code}{`<chr>` a two-digit identifier for the arrest type}
#'  \item{arrest_type_name}{`<chr>` a human-readable description of the arrest type}
#' }
#' @source <https://cde.ucr.cjis.gov/LATEST/webapp/>
"GLOSSARY_OF_ARREST_TYPES"

#' Categories of law enforcement assignment that are cataloged in the NIBRS
#'
#' @format an object of type `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 7 rows and 2 columns
#' \describe{
#'  \item{assignment_type_code}{`<chr>` a two-digit identifier for the assignment type}
#'  \item{assignment_type_name}{`<chr>` a human-readable description of the assignment type}
#' }
#' @source <https://cde.ucr.cjis.gov/LATEST/webapp/>
"GLOSSARY_OF_ASSIGNMENT_TYPES"

#' Categories of criminal acts that are cataloged in the NIBRS
#'
#' @format an object of type `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 17 rows and 3 columns
#' \describe{
#'  \item{criminal_act_code}{`<chr>` a two-digit identifier for the type of criminal act}
#'  \item{criminal_act_name}{`<chr>` a short label for the type of criminal act}
#'  \item{criminal_act_desc}{`<chr>` a human-readable description for the type of criminal act}
#' }
#' @source <https://cde.ucr.cjis.gov/LATEST/webapp/>
"GLOSSARY_OF_CRIMINAL_ACT_TYPES"

#' Units of drug quantities that are cataloged in the NIBRS
#'
#' @format an object of type `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 11 rows and 2 columns
#' \describe{
#'  \item{drug_measure_type_code}{`<chr>` a two-digit identifier for the unit type}
#'  \item{drug_measure_type_name}{`<chr>` a human-readable description of the unit type}
#' }
#' @source <https://cde.ucr.cjis.gov/LATEST/webapp/>
"GLOSSARY_OF_DRUG_MEASURE_TYPES"

#' Categories of venues for crimes that are cataloged in the NIBRS
#'
#' @format an object of type `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 47 rows and 2 columns
#' \describe{
#'  \item{location_type_code}{`<chr>` a two-digit identifier for the venue}
#'  \item{location_type_name}{`<chr>` a human-readable description of the venue}
#' }
#' @source <https://cde.ucr.cjis.gov/LATEST/webapp/>
"GLOSSARY_OF_LOCATION_TYPES"

#' Categories of criminal offense that are cataloged in the NIBRS
#'
#' @format an object of type `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 81 rows and 6 columns
#' \describe{
#'  \item{Group}{`<chr>` Either "A" (serious crimes) or "B" (not so serious)}
#'  \item{Category}{`<chr>` A broad category of crime, like "Assault" or "Larceny"}
#'  \item{Offense}{`<chr>` A more specific category of crime, like "Pocket-picking" or "Purse-snatching"}
#'  \item{Code}{`<chr>` A three-character code for the offense, either 3-digit or 2-digit-plus-letter}
#'  \item{Against}{`<chr>` Either "Person," "Property", or "Society." I chose for Group "B" crimes.}
#'  \item{NCIC Code}{`<lst>` zero or more codes in the NCIC that count as this type of offense.}
#' }
#' @source <https://le.fbi.gov/informational-tools/ucr/ucr-technical-specifications-user-manuals-and-data-tools>
"GLOSSARY_OF_OFFENSE_CODES"

#' Categories of criminal offense that are cataloged in the NIBRS
#'
#' @format an object of type `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 86 rows and 6 columns
#' \describe{
#'  \item{offense_code}{`<chr>` a two-digit-plus-letter or three-digit code for the offense}
#'  \item{offense_name}{`<chr>` a short label for the offense}
#'  \item{crime_against}{`<chr>` whether the target was a person, property, or the social fabric}
#'  \item{hc_flag}{`<lgl>` whether or not the offense can be labeled as a hate crime}
#'  \item{ct_flag}{`<lgl>` whether or not the offense can be labeled as a theft of cargo}
#'  \item{hc_code}{`<chr>` which hate crime (if any), this offense can be categorized as}
#'  \item{offense_category_name}{`<chr>` broad categories of crime like "Homicide" or "Larceny"}
#'  \item{offense_group}{`<chr>` either "A" for intensely tracked crimes, "B" for less-intensely, or NA for non-crimes}
#' }
#' @source <https://cde.ucr.cjis.gov/LATEST/webapp/>
"GLOSSARY_OF_OFFENSE_TYPES"

#' Categories of containing geographic areas in the NIBRS
#'
#' These categories combine both political organization (town, city, county) and
#' population size.
#'
#' @format an object of type `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 9 rows and 2 columns
#' \describe{
#'  \item{parent_pop_group_code}{`<int>` an index that may not be consistent across archives}
#'  \item{parent_pop_group_desc}{`<chr>` a short description of the size and nature of the area}
#' }
#' @source <https://cde.ucr.cjis.gov/LATEST/webapp/>
"GLOSSARY_OF_PARENT_POPULATION_GROUPS"

#' Categories of geographic area in the NIBRS
#'
#' These categories combine both political organization (town, city, county) and
#' population size.
#'
#' @format an object of type `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 17 rows and 3 columns
#' \describe{
#'  \item{population_group_id}{`<int>` an index that may not be consistent across archives}
#'  \item{population_group_code}{`<chr>` a digit-plus-optional-letter code that may be consistent}
#'  \item{population_group_desc}{`<chr>` a short description of the size and nature of the area}
#' }
#' @source <https://cde.ucr.cjis.gov/LATEST/webapp/>
"GLOSSARY_OF_POPULATION_GROUPS"

#' Categories of property damage for offenses that are cataloged in the NIBRS
#'
#' @format an object of type `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 68 rows and 2 columns
#' \describe{
#'  \item{prop_desc_name}{`<chr>` a human-readable description for the type of property}
#'  \item{prop_desc_code}{`<chr>` a two-digit identifier for the type of property}
#' }
#' @source <https://cde.ucr.cjis.gov/LATEST/webapp/>
"GLOSSARY_OF_PROP_DESC_TYPES"

#' Categories of property damage for offenses that are cataloged in the NIBRS
#'
#' @format an object of type `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 8 rows and 2 columns
#' \describe{
#'  \item{prop_loss_code}{`<chr>` a two-digit identifier for the type of damage}
#'  \item{prop_loss_desc}{`<chr>` a human-readable description for the type of damage}
#' }
#' @source <https://cde.ucr.cjis.gov/LATEST/webapp/>
"GLOSSARY_OF_PROP_LOSS_TYPES"

#' Categories of drug for offenses that are cataloged in the NIBRS
#'
#' @format an object of type `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 18 rows and 2 columns
#' \describe{
#'  \item{suspected_drug_code}{`<chr>` a two-digit identifier for the type of drug}
#'  \item{suspected_drug_desc}{`<chr>` a human-readable description for the type of drug}
#' }
#' @source <https://cde.ucr.cjis.gov/LATEST/webapp/>
"GLOSSARY_OF_SUSPECTED_DRUG_TYPES"

#' Categories of victim for offenses that are cataloged in the NIBRS
#'
#' @format an object of type `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 9 rows and 2 columns
#' \describe{
#'  \item{victim_code}{`<chr>` a two-digit identifier for the type of victim}
#'  \item{victim_desc}{`<chr>` a human-readable description for the type of victim}
#' }
#' @source <https://cde.ucr.cjis.gov/LATEST/webapp/>
"GLOSSARY_OF_VICTIM_TYPES"

#' Weapon categories in the NIBRS
#'
#' There is no limit to the number of weapons that might be reported with an
#' incident, so there might be zero or dozens.
#' The only exception to this is homicide, which must have a weapon associated
#' with it.
#'
#' @format an object of type `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 22 rows and  3 columns
#' \describe{
#'  \item{weapon_code}{`<chr>` a two-digit or two-digit-plus-A code}
#'  \item{weapon_name}{`<chr>` a short description of the weapon}
#'  \item{shr_flage}{`<lgl>` whether or not the weapon should be included in a supplemental homicide report}
#' }
#' @source <https://cde.ucr.cjis.gov/LATEST/webapp/>
"GLOSSARY_OF_WEAPON_TYPES"
