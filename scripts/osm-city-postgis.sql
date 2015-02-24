-- select all lines from city data that don't intersect with osm data
SELECT a.* FROM cscl_bike_routes AS a 
LEFT JOIN
osm_bike_lines AS b ON
St_Intersects(a.the_geom, b.the_geom)
WHERE b.cartodb_id IS NULL;