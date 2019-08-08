-- Verify nz-rivers:rivers_lds/schema_and_tables on pg

BEGIN;

SELECT pg_catalog.has_schema_privilege('rivers_lds', 'usage');

SELECT
      river_section_id
    , feat_type
    , name_ascii
    , macronated
    , name
    , shape 
FROM rivers_lds.nz_river_name_lines
WHERE FALSE;

DO $$
BEGIN
    PERFORM TRUE
    FROM pg_indexes
    WHERE schemaname = 'rivers_lds'
    AND tablename = 'nz_river_name_lines'
    AND indexdef LIKE '%river_section_id%';
    IF NOT FOUND THEN
        RAISE EXCEPTION 'MISSING INDEX: Schema "rivers_lds", table '
        '"nz_river_name_lines", column "river_section_id" has a missing index named '
        '"idx_nz_river_name_lines_river_section_id"';
    END IF;
END;
$$;

DO $$
BEGIN
    PERFORM TRUE
    FROM pg_indexes
    WHERE schemaname = 'rivers_lds'
    AND tablename = 'nz_river_name_lines'
    AND indexdef LIKE '%shx_nz_river_name_lines%';
    IF NOT FOUND THEN
        RAISE EXCEPTION 'MISSING INDEX: Schema "rivers_lds", table '
        '"nz_river_name_lines", column "shape" has a missing index named '
        '"shx_nz_river_name_lines"';
    END IF;
END;
$$;

SELECT
      river_section_id
    , feat_type
    , name_ascii
    , macronated
    , name
    , shape 
FROM rivers_lds.nz_river_name_polygons
WHERE FALSE;

DO $$
BEGIN
    PERFORM TRUE
    FROM pg_indexes
    WHERE schemaname = 'rivers_lds'
    AND tablename = 'nz_river_name_polygons'
    AND indexdef LIKE '%river_section_id%';
    IF NOT FOUND THEN
        RAISE EXCEPTION 'MISSING INDEX: Schema "rivers_lds", table '
        '"nz_river_name_polygons", column "river_section_id" has a missing index named '
        '"idx_nz_river_name_polygons_river_section_id"';
    END IF;
END;
$$;

DO $$
BEGIN
    PERFORM TRUE
    FROM pg_indexes
    WHERE schemaname = 'rivers_lds'
    AND tablename = 'nz_river_name_polygons'
    AND indexdef LIKE '%shx_nz_river_name_polygons%';
    IF NOT FOUND THEN
        RAISE EXCEPTION 'MISSING INDEX: Schema "rivers_lds", table '
        '"nz_river_name_polygons", column "shape" has a missing index named '
        '"shx_nz_river_name_polygons"';
    END IF;
END;
$$;


ROLLBACK;
