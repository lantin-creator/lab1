CREATE TABLE IF NOT EXISTS public.placement
(
    warhouse_number integer NOT NULL,
    producrt_code integer NOT NULL,
    numver_of_packages integer,
    shipment_date date,
    weight numeric,
    receipt_acknowledgment boolean,
    CONSTRAINT placement_pkey PRIMARY KEY (warhouse_number, producrt_code),
    CONSTRAINT fk_placement_warehouse FOREIGN KEY (warhouse_number)
        REFERENCES public."Warhouse" (warheouse_number) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.placement
    OWNER to postgres;

CREATE INDEX IF NOT EXISTS fki_fk_placement_warehouse
    ON public.placement USING btree
    (warhouse_number ASC NULLS LAST)
;