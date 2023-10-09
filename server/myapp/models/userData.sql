-- Table: public.userData

-- DROP TABLE IF EXISTS public."userData";

CREATE TABLE IF NOT EXISTS public."userData"
(
	id integer NOT NULL DEFAULT nextval('newtbl_id_seq'::regclass),
    name character varying(80) COLLATE pg_catalog."default" NOT NULL,
    email character varying(120) COLLATE pg_catalog."default" NOT NULL,
    username character varying(80) COLLATE pg_catalog."default" NOT NULL,
    password character varying(120) COLLATE pg_catalog."default" NOT NULL,
    birthdate DATE NOT NULL,
    CONSTRAINT newtbl_pkey PRIMARY KEY (id),
    CONSTRAINT newtbl_email_key UNIQUE (email),
    CONSTRAINT newtbl_userName_key UNIQUE (username)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."userData"
    OWNER to postgres;