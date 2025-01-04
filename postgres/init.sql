CREATE USER kyc_user WITH ENCRYPTED PASSWORD 'keycloak_user';
CREATE USER nav_user WITH ENCRYPTED PASSWORD 'navigation_user';

-- \c kyc_user
CREATE DATABASE keycloak WITH OWNER kyc_user;
GRANT ALL PRIVILEGES ON DATABASE keycloak TO kyc_user;

-- \c nav_user
CREATE DATABASE navigation WITH OWNER nav_user;
GRANT ALL PRIVILEGES ON DATABASE navigation TO nav_user;
-- todo