CREATE TABLE address
(
cd_id bigserial NOT NULL,
user_id bigint,
street_name character varying(255),
number character varying(6),
complement character varying(100),
neighborhood character varying(100),
city_id bigint,
postal_code character varying(10),
address_name character varying(45),
CONSTRAINT address_pkey PRIMARY KEY (cd_id),
  CONSTRAINT address_user_id_fkey FOREIGN KEY (user_id)
      REFERENCES user (user_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
	    CONSTRAINT address_cities_id_fkey FOREIGN KEY (city_id)
      REFERENCES cities (cd_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE address
  OWNER TO postgres;
