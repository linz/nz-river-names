-- Deploy nz-rivers:rivers_lds/functions/create_data to pg

BEGIN;

------------------------------------------------------------------------------
-- Create rivers_lds data (from rivers data)

-- Tables:
-- nz_river_name_lines
-- nz_river_name_polygons

------------------------------------------------------------------------------

-- nz_river_name_lines
CREATE OR REPLACE FUNCTION rivers_lds.create_nz_river_name_lines()
RETURNS integer AS
$$
    WITH create_data AS (
        INSERT INTO rivers_lds.nz_river_name_lines(river_section_id, feat_type, name_ascii, macronated, name, shape)
        SELECT river_section_id, feat_type, name_ascii, macronated, name, shape FROM rivers.river_name_lines
        RETURNING *
    )
    SELECT count(*)::integer FROM create_data;
$$
LANGUAGE sql VOLATILE;

-- nz_river_name_polygons
CREATE OR REPLACE FUNCTION rivers_lds.create_nz_river_name_polygons()
RETURNS integer AS
$$
    WITH create_data AS (
        INSERT INTO rivers_lds.nz_river_name_polygons(river_section_id, feat_type, name_ascii, macronated, name, shape)
        SELECT river_section_id, feat_type, name_ascii, macronated, name, shape FROM rivers.river_name_polygons
        RETURNING *
    )
    SELECT count(*)::integer FROM create_data;
$$
LANGUAGE sql VOLATILE;


COMMIT;
