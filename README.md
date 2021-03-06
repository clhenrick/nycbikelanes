nycbikelanes
============

Coordination for the [NYC bike lane cleanup and
update](wiki.openstreetmap.org/wiki/New_York,_New_York/Bike_Lanes_and_Roads_Cleanup).
We plan on creating [MapRoulette](http://maproulette.org/)
[challenges](https://gist.github.com/mvexel/b5ad1cb0c91ac245ea3f) to update
OSM's bike lane data using the latest data available from the city.


Data
----

The `Makefile` contains recipes for downloading an OSM extract for NYC.
Currently it clips to NYC borders (not just the bounding box) and attempts to
select just the features that are bicycle-related. Run the following to get OSM
data:

    make boroughs osm_bikelanes

The city's latest bike lane data is in `data/cscl_bike_routes/original`. This
data is not currently available online, otherwise we would download it from
there. We have reprojected and simplified it, and you can do the same with:

    make normalize_cscl_bike_routes


Collaborators
-------------

* [Eric Brelsford](https://github.com/ebrelsford)
* [Colin Reilly](https://github.com/colinreilly)
* [Chris Henrick](https://github.com/clhenrick)
