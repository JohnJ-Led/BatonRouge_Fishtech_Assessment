# Analysis Thought Process
### And Rambling
* Most of the qualitative columns can provide nice little "Good to Knows".
  * Ex: In the last Year(and a month) 51% of all Incidents have taken place on City Streets.
  * These will be possible good factors for incident prediction.
  * Make a few examples of "Good to Knows"

 Maybe request to predict future incidents is just a want for potential number of incidents.....
O....Predict # Incidents Based off Conditions(factors). Get current count of incidents through grouping all factors and creating current count(s).
....Predict based of per month counts....
modle <- lm(i_count ~ factors, data=BRTI) #First or Second order...Still think Random Forest would be interesting to see.

* Make some visuals.

 I have that irs population data. Would be interesting to compare amount of incidents by city/area population.
Another nice data set to have would be historical weather data. Are there more incidents in clear weather because people are more confident or is there just more clear weather? Could make assumptions based on date and weather conditions.  N number of incident dates show clear in M month.

*Random thought: Some qualitative values are possibly opinion based. Ex: Lighting - when is DAYLIGHT DAYTLIGHT and no longer DAWN*

Population Count for Baton Rouge and surrounding areas - 448957, Total Incidents in 2021 - 14109
Percent of incidents for population 3.14% *Nice*

* Put it all together. Some kind of story.

## Risk Score Thoughts
Scale 1-5
1. Very Low - No Injury/No Fatality
2. Low - Injury/ No Fatality
3. Medium - Multiple Persons Injury/ No Fatality
4. High - No Injury/ Fatality
5. Very High - Injury/Fatality

Create Location Based Risk Score. Create model to predict likelyhood of Injury/Fatality based on indicators like Weather, Location Type, Lighting, and ZIP/zone. A live heat map that updates at regular intervals and uses input such as time and current weather to update ZIP/Zones with a Current Risk Score. Such a map could help direct law inforcment to high risk areas.

## Some Tables
Table Of Totals By City

|CITY |	Incident_Count|
| ---------|----------|
|	Unknown|186|
|BAKER|	5|
|BATON ROUGE|	13866|
|CLINTON|	1|
|DAMXUNG COUNTY|	11|
|DENHAM SPRINGS|	12|
|GREENWELL SPRINGS|	3|
|LHVNZHUB COUNTY|	2|
|PORT ALLEN|	15|
|PRAIRIEVILLE|	2|
|ZACHARY|	6|

Precentage Of Incidents By City
|CITY	|Hit And Run |	TRAIN	|FATALITY	|INJURY	|PEDESTRIAN	|INTERSECTION	|Total|
|----------|----------|----------|----------|----------|----------|----------|----------|
BATON ROUGE|	23.93%|	0.07%|	0.18%|	7.47%|	0.53%|	36.82%|	13866|
UNKNOWN|	21.5%|	0%|	0%|	12.37%|	0.54%|	49.46%|	186|
DENHAM SPRINGS|	25%|	0%|	0%|	25%|	8.33%|	16.67%|	12|
PORT ALLEN|	40%|	0%|	0%|	13.33%|	0%|	13.33%|	15|
BAKER|	20%|	0%|	0%|	0%|	0%|	60%|	5|
ZACHARY|	33.33%|	0%|	0%|	0%|	0%|	50%|	6|
PRAIRIEVILLE|	0%|	0%|	0%|	50%|	0%|	0%|	2|
GREENWELL SPRINGS|	0%|	0%|	0%|	33.33%|	0%|	33.33%|	3|
DAMXUNG COUNTY|	18.18%|	0%|	0%|	9.09%|	0%|	27.27%|	11|
LHVNZHUB COUNTY|	50%|	0%|	0%|	50%|	0%|	100%|	2|
CLINTON|	0%|	0%|	0%|	0%|	0%|	0%|	1|
TOTAL_INCIDENTS|	23.91%|	0.07%|	0.18%|	7.57%|	0.53%|	36.94%|	14113|

*Personal Note: I just wanted to make tables with markdown language*
