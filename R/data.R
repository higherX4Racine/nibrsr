## Copyright (C) 2025 by Higher Expectations

#' Categories of criminal offense that are cataloged in the NIBRS
#'
#' @format an object of type `tibble/tbl_df/tbl/data.frame`
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

#' Categories of containing geographic areas in the NIBRS
#'
#' These categories combine both political organization (town, city, county) and
#' population size.
#'
#' @format an object of type `tibble/tbl_df/tbl/data.frame`
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
#' @format an object of type `tibble/tbl_df/tbl/data.frame`
#' with 17 rows and 3 columns
#' \describe{
#'  \item{population_group_id}{`<int>` an index that may not be consistent across archives}
#'  \item{population_group_code}{`<chr>` a digit-plus-optional-letter code that may be consistent}
#'  \item{population_group_desc}{`<chr>` a short description of the size and nature of the area}
#' }
#' @source <https://cde.ucr.cjis.gov/LATEST/webapp/>
"GLOSSARY_OF_POPULATION_GROUPS"

#' Weapon categories in the NIBRS
#'
#' There is no limit to the number of weapons that might be reported with an
#' incident, so there might be zero or dozens.
#' The only exception to this is homicide, which must have a weapon associated
#' with it.
#'
#' @format an object of type `tibble/tbl_df/tbl/data.frame`
#' with 22 rows and  3 columns
#' \describe{
#'  \item{weapon_code}{`<chr>` a two-digit or two-digit-plus-A code}
#'  \item{Gun}{`<lgl>` whether or not the weapon is a kind of firearm}
#'  \item{weapon_name}{`<chr>` a short description of the weapon}
#' }
#' @source <https://cde.ucr.cjis.gov/LATEST/webapp/>
"TYPES_OF_WEAPONS"
