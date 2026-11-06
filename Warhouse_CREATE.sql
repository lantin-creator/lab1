-- Table: public.Warhouse

-- DROP TABLE IF EXISTS public."Warhouse";

CREATE TABLE IF NOT EXISTS public."Warhouse"
(
    warheouse_number integer NOT NULL,
    capacity integer NOT NULL,
    warheouse_addres character varying(255) COLLATE pg_catalog."default" NOT NULL,
    warheouse_manger character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Warhouse_pkey" PRIMARY KEY (warheouse_number, warheouse_addres),
    CONSTRAINT uq_warehouse_number UNIQUE (warheouse_number)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Warhouse"
    OWNER to postgres;