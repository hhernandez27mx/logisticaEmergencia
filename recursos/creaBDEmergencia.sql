CREATE TABLE public.voluntario (
                id_voluntario INTEGER NOT NULL,
                asignacion VARCHAR(20) NOT NULL,
                correo VARCHAR(200) NOT NULL,
                fecha_nacimiento TIMESTAMP NOT NULL,
                nombre VARCHAR(255) NOT NULL,
                CONSTRAINT voluntario_pk PRIMARY KEY (id_voluntario)
);


CREATE TABLE public.suministro (
                id_suministro INTEGER NOT NULL,
                nombre VARCHAR(100) NOT NULL,
                CONSTRAINT suministro_pk PRIMARY KEY (id_suministro)
);


CREATE TABLE public.persona (
                id_persona INTEGER NOT NULL,
                locacion VARCHAR(50) NOT NULL,
                correo VARCHAR(100) NOT NULL,
                perfil VARCHAR(30) NOT NULL,
                celular INTEGER NOT NULL,
                direccion VARCHAR(500) NOT NULL,
                nombre VARCHAR(100) NOT NULL,
                CONSTRAINT persona_pk PRIMARY KEY (id_persona)
);


CREATE TABLE public.inst_encargada (
                id_instencargada INTEGER NOT NULL,
                nombre VARCHAR(100) NOT NULL,
                id_responsable INTEGER NOT NULL,
                funciones VARCHAR(100) NOT NULL,
                CONSTRAINT inst_encargada_pk PRIMARY KEY (id_instencargada)
);


CREATE TABLE public.poblacion (
                id_poblacion INTEGER NOT NULL,
                lugar VARCHAR(100) NOT NULL,
                dano VARCHAR(2000) NOT NULL,
                solucion INTEGER NOT NULL,
                sector_descriptivo VARCHAR(100) NOT NULL,
                num_evacuados INTEGER NOT NULL,
                num_refugiados INTEGER NOT NULL,
                id_instencargada INTEGER NOT NULL,
                id_emergencia INTEGER NOT NULL,
                CONSTRAINT poblacion_pk PRIMARY KEY (id_poblacion)
);


CREATE TABLE public.sci (
                id_sci INTEGER NOT NULL,
                comandante INTEGER NOT NULL,
                seguridad INTEGER NOT NULL,
                enlace INTEGER NOT NULL,
                informacion_publica INTEGER NOT NULL,
                planeacion INTEGER NOT NULL,
                operaciones INTEGER NOT NULL,
                logistica INTEGER NOT NULL,
                adm_financiera INTEGER NOT NULL,
                id_poblacion INTEGER NOT NULL,
                CONSTRAINT sci_pk PRIMARY KEY (id_sci)
);


CREATE TABLE public.emergencia_suministro (
                id_emer_sumi INTEGER NOT NULL,
                id_emergencia INTEGER NOT NULL,
                cantidad INTEGER NOT NULL,
                id_suministro INTEGER NOT NULL,
                CONSTRAINT emergencia_suministro_pk PRIMARY KEY (id_emer_sumi)
);


CREATE TABLE public.consejo (
                id_consejo INTEGER NOT NULL,
                id_responsable INTEGER NOT NULL,
                nombre VARCHAR(100),
                CONSTRAINT consejo_pk PRIMARY KEY (id_consejo)
);


CREATE TABLE public.centro_acopio (
                id_centroacopio INTEGER NOT NULL,
                id_emergencia INTEGER NOT NULL,
                fecha_inicio TIMESTAMP NOT NULL,
                fecha_fin TIMESTAMP NOT NULL,
                id_encargado INTEGER NOT NULL,
                CONSTRAINT centro_acopio_pk PRIMARY KEY (id_centroacopio)
);


CREATE TABLE public.ca_suministro (
                id_ca_suministro INTEGER NOT NULL,
                id_centroacopio INTEGER NOT NULL,
                id_suministro INTEGER NOT NULL,
                CONSTRAINT ca_suministro_pk PRIMARY KEY (id_ca_suministro)
);


ALTER TABLE public.ca_suministro ADD CONSTRAINT suministro_ca_fk
FOREIGN KEY (id_suministro)
REFERENCES public.suministro (id_suministro)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.emergencia_suministro ADD CONSTRAINT suministro_new_table_fk
FOREIGN KEY (id_suministro)
REFERENCES public.suministro (id_suministro)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;


ALTER TABLE public.centro_acopio ADD CONSTRAINT persona_centro_acopio_fk
FOREIGN KEY (id_encargado)
REFERENCES public.persona (id_persona)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.poblacion ADD CONSTRAINT new_table_poblacion_fk
FOREIGN KEY (id_instencargada)
REFERENCES public.inst_encargada (id_instencargada)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.sci ADD CONSTRAINT poblacion_new_table_fk
FOREIGN KEY (id_poblacion)
REFERENCES public.poblacion (id_poblacion)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ca_suministro ADD CONSTRAINT centro_acopio_new_table_fk
FOREIGN KEY (id_centroacopio)
REFERENCES public.centro_acopio (id_centroacopio)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
