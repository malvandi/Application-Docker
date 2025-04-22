CREATE USER kyc_user WITH ENCRYPTED PASSWORD 'keycloak_user';
CREATE USER vs_user WITH ENCRYPTED PASSWORD 'vector_service_user';
CREATE USER ts_user WITH ENCRYPTED PASSWORD 'tile_service_user';
CREATE USER trader_service_user WITH ENCRYPTED PASSWORD 'trader_service_user';

CREATE DATABASE keycloak WITH OWNER kyc_user;
CREATE DATABASE vector_service WITH OWNER vs_user;
CREATE DATABASE tile_service WITH OWNER ts_user;
CREATE DATABASE trader_service WITH OWNER trader_service_user;

\c kyc_user
ALTER SCHEMA "public" OWNER TO "kyc_user";

\c vector_service
ALTER SCHEMA "public" OWNER TO "vs_user";
CREATE SCHEMA "layers" AUTHORIZATION "vs_user";
CREATE EXTENSION "postgis";
ALTER TABLE "public"."spatial_ref_sys" OWNER TO "vs_user";

\c tile_service
ALTER SCHEMA "public" OWNER TO "ts_user";

\c trader_service
ALTER SCHEMA "public" OWNER TO "trader_service_user";

