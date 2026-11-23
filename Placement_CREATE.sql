CREATE TABLE IF NOT EXISTS public.placement
(
    warhouse_number integer NOT NULL,
    producrt_code integer NOT NULL,
    numver_of_packages integer NOT NULL,
    shipment_date date NOT NULL,
    weight numeric NOT NULL,
    receipt_acknowledgment boolean NOT NULL,
    CONSTRAINT placement_pkey PRIMARY KEY (warhouse_number, producrt_code),
    CONSTRAINT fk_placement_warehouse FOREIGN KEY (warhouse_number)
        REFERENCES public."Warhouse" (warheouse_number) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.placement
    OWNER to postgres;

CREATE INDEX IF NOT EXISTS fki_fk_placement_warehouse
    ON public.placement USING btree
    (warhouse_number ASC NULLS LAST)
;
