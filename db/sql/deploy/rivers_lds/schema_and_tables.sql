-- Deploy nz-rivers:rivers_lds/schema_and_tables to pg

BEGIN;

------------------------------------------------------------------------------
-- Create rivers_lds schema and tables

-- Tables:
-- nz_river_name_lines
-- nz_river_name_polygons

------------------------------------------------------------------------------

--Schema

CREATE SCHEMA IF NOT EXISTS rivers_lds;

COMMENT ON SCHEMA rivers_lds IS
'Schema that holds rivers data to publish on the LDS.';


-- Tables

-- nz river name lines
-- The nz_river_name_lines table holds a line geometry, originating from Topo50 rivers data
CREATE TABLE IF NOT EXISTS rivers_lds.nz_river_name_lines (
      river_section_id integer PRIMARY KEY
    , feat_type character varying(30) NOT NULL DEFAULT ''
    , name_ascii character varying(80) NOT NULL DEFAULT ''
    , macronated character varying(1) NOT NULL DEFAULT 'N'
    , name character varying(80) NOT NULL DEFAULT ''
    , shape public.geometry(LineString, 2193) NOT NULL
);

CREATE INDEX shx_nz_river_name_lines
    ON rivers_lds.nz_river_name_lines USING gist (shape);

COMMENT ON TABLE rivers_lds.nz_river_name_lines IS
'The nz_river_name_lines table holds geometries copied from Topo50 canal_cl '
'drain_cl and river_cl.  It includes name attributes based on Topo50 maps.';
COMMENT ON COLUMN rivers_lds.nz_river_name_lines.river_section_id IS
'Unique identifier for each geometry.';
COMMENT ON COLUMN rivers_lds.nz_river_name_lines.feat_type IS
'Topo50 feature type where the geometry originates from: canal_cl drain_cl '
'or river_cl.';
COMMENT ON COLUMN rivers_lds.nz_river_name_lines.name_ascii IS
'The non-macronated version of the name.';
COMMENT ON COLUMN rivers_lds.nz_river_name_lines.macronated IS
'Whether the name contains a macronated letter.';
COMMENT ON COLUMN rivers_lds.nz_river_name_lines.name IS
'The name based on Topo50 maps.';
COMMENT ON COLUMN rivers_lds.nz_river_name_lines.shape IS
'The geometry of the feature.';

-- nz river name polygons
-- The nz_river_name_polygons table holds a polygon geometry, originating from Topo50 rivers data
CREATE TABLE IF NOT EXISTS rivers_lds.nz_river_name_polygons (
      river_section_id integer PRIMARY KEY
    , feat_type character varying(30) NOT NULL DEFAULT ''
    , name_ascii character varying(80) NOT NULL DEFAULT ''
    , macronated character varying(1) NOT NULL DEFAULT 'N'
    , name character varying(80) NOT NULL DEFAULT ''
    , shape public.geometry(Polygon, 2193) NOT NULL
);

CREATE INDEX shx_nz_river_name_polygons
    ON rivers_lds.nz_river_name_polygons USING gist (shape);
    
COMMENT ON TABLE rivers_lds.nz_river_name_polygons IS
'The nz_river_name_polygons table holds geometries copied from Topo50 canal_poly '
'and river_poly.  It includes name attributes based on Topo50 maps.';
COMMENT ON COLUMN rivers_lds.nz_river_name_polygons.river_section_id IS
'Unique identifier for each geometry.';
COMMENT ON COLUMN rivers_lds.nz_river_name_polygons.feat_type IS
'Topo50 feature type where the geometry originates from: canal_poly or river_poly.';
COMMENT ON COLUMN rivers_lds.nz_river_name_polygons.name_ascii IS
'The non-macronated version of the name.';
COMMENT ON COLUMN rivers_lds.nz_river_name_polygons.macronated IS
'Whether the name contains a macronated letter.';
COMMENT ON COLUMN rivers_lds.nz_river_name_polygons.name IS
'The name based on Topo50 maps.';
COMMENT ON COLUMN rivers_lds.nz_river_name_polygons.shape IS
'The geometry of the feature.';


COMMIT;
