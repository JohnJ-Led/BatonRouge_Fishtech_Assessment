# BatonRouge_Fishtech_Assessment

## Possible Data Points
* Lighting Conditions
* Accident Type count(s)
* Road Conditions/Surface
* Collision Types
* City

## Risk Score
* Probability of an Accident Under x,y,z conditions?
* Random Forest Tree for day by day selection?

## Predict Future Accidents
* Same as Risk Score? Probability of an Accident/Random Forest
--------------------------------------------------------------
## Thoughts
The application that takes this information needs more validation checks/required fields/autofill...

**First Determine columns to keep/remove for cleaning.**
* Zone, Subzone, Nearest Street, Long, Lat, GEO
  * For purpose of assessment these columns will either take to long to fill in missing data or make proper use of.
  * EX: Heat Map Sectioned into Zones useing the GEO locations of Incidents.
* Keep Incident number,	crash date,	street address,	city,	state,	zip code,	district,	total vehicles,	road class,	hit and run,	train,	fatality,	injury,	pedestrian,	intersection,	manner of collision,	roadway surface,	roadway condition,	roadway design,	alignment,	primary factor,	secondary factor,	weather,	location type,	roadway relation,	access control,	lighting

**Cleaning**
* Manually Deleting Duplicates from Excel for now. Easier with the amount of data.
* Move Data to MySQL table(staging)
* Found US Zip Code Database and added to a MySQL table.
* Brute Force Correction Of Missing Data! WOOOOO!!!!!!

**Brute Force Thoughts**
* Use Zone and Subzone to fill in missing Zips, and Zip to fill in and correct City/State inconsistencies
  * Unqiueness does not occurr with Zip to Zone/Subzone and therefore not effective.
* Use Duplicate Street Addresses to fill in Zips and Zone and Subzone.
  * Duplicate Streets multiple Zips, Zones, and Subzones.
* Find a Street Database for LA....MAYBE....I found one.....rabbit hole.
* Not Going to Happen, but take Street and Nearest Street and use a Map API to possible search for the streets intersections to obtain Zip code.....

Data Reference Location:

UnitedStatesZipCodes.org. (n.d.). Louisiana ZIP Codes List, Map, Demographics, and Shipping. United States Zip Codes.Org. https://www.unitedstateszipcodes.org/la/#zips-list

Street Address Listing | Open Data BR. (2021, December 20). Open Data BR. https://data.brla.gov/Housing-and-Development/Street-Address-Listing/6fyg-p3r9
