CREATE TABLE cities
(
cd_id bigserial NOT NULL,
state_id bigint,
city_name character varying(255),
CONSTRAINT cities_pkey PRIMARY KEY (cd_id),
	    CONSTRAINT cities_states_id_fkey FOREIGN KEY (state_id)
      REFERENCES states (cd_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cities
  OWNER TO postgres;
