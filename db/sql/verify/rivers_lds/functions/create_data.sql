-- Verify nz-rivers:rivers_lds/functions/create_data on pg

BEGIN;

SELECT has_function_privilege('rivers_lds.create_nz_river_name_lines()', 'execute');
SELECT has_function_privilege('rivers_lds.create_nz_river_name_polygons()', 'execute');

ROLLBACK;
