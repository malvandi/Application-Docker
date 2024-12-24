CREATE USER kyc_user WITH ENCRYPTED PASSWORD 'keycloak_user';

-- \c kyc_user
CREATE DATABASE keycloak WITH OWNER kyc_user;
GRANT ALL PRIVILEGES ON DATABASE keycloak TO kyc_user;
