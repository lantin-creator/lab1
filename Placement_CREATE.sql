-- Table: public.placement

-- DROP TABLE IF EXISTS public.placement;

CREATE TABLE IF NOT EXISTS public.placement
(
    warhouse_number integer NOT NULL,
    producrt_code integer NOT NULL,
    numver_of_packages integer,
    shipment_date date,
    weight integer,
    receipt_acknowledgment date,
    CONSTRAINT placement_pkey PRIMARY KEY (warhouse_number, producrt_code),
    CONSTRAINT fk_placement_warehouse FOREIGN KEY (warhouse_number)
        REFERENCES public."Warhouse" (warheouse_number) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.placement
    OWNER to postgres;
-- Index: fki_fk_placement_warehouse

-- DROP INDEX IF EXISTS public.fki_fk_placement_warehouse;

CREATE INDEX IF NOT EXISTS fki_fk_placement_warehouse
    ON public.placement USING btree
    (warhouse_number ASC NULLS LAST)
;