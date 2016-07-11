# docking station story

## First user story
|object    | message|  
|----------|--------|
|Person     |              |
|Bike       |use_a_bike    |
|Docking_station|release_a_bike|

## Second user story
|object    | message|  
|----------|--------|
|Person     |          |
|Bike       |use_a_bike|
|Bike       |test_bike_working|

## Combine user story
|object    | message|  
|----------|--------|
|Person         |                  |
|Docking_station|release_a_bike    |
|Bike           |test_if_working   |

## interaction diagram
Bike <--- release_a_bike --> Docking_station
Bike <--- test_if_working --> true/false
