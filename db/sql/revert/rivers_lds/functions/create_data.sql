-- Revert nz-rivers:rivers_lds/functions/create_data from pg

BEGIN;

DROP FUNCTION rivers_lds.create_nz_river_name_lines();
DROP FUNCTION rivers_lds.create_nz_river_name_polygons();


COMMIT;
