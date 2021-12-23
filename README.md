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
### Thoughts

First Determine columne to keep/remove for cleaning.
* Remove Street,Zone,Subzone,Nearest Street,Long,Lat,GEO
* * For purpose of assessment these columns will either take to long to fill in missing data or make proper use of.
** EX: Heat Map Sectioned into Zones useing the GEO locations of Incidents.
