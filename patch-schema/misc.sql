BEGIN;

CREATE TABLE IF NOT EXISTS public.feature_weapon
(
    start_time TIMESTAMP WITH TIME ZONE NOT NULL,
    featured INTEGER NOT NULL
);

ALTER TABLE IF EXISTS public.characters DROP COLUMN IF EXISTS cafe_time;

ALTER TABLE IF EXISTS public.characters ADD COLUMN IF NOT EXISTS cafe_reset TIMESTAMP WITH TIME ZONE;

DROP TABLE IF EXISTS public.user_binaries;

DROP PROCEDURE IF EXISTS raviinit;

DROP PROCEDURE IF EXISTS ravireset;

END;