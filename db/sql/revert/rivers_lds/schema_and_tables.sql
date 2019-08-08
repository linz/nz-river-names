-- Revert nz-rivers:rivers_lds/schema_and_tables from pg

BEGIN;

DROP SCHEMA rivers_lds CASCADE;

COMMIT;
