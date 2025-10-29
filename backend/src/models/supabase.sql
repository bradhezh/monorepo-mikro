CREATE ROLE mikro_user WITH LOGIN PASSWORD 'password';
-- the free tier service could be paused and then needs to be resumed, and after
-- resuming, the password might need to be set again to be activated
-- ALTER ROLE mikro_user WITH LOGIN PASSWORD 'password';

GRANT USAGE, CREATE ON SCHEMA public TO mikro_user;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON ALL TABLES IN SCHEMA public TO mikro_user;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO mikro_user;

ALTER DEFAULT PRIVILEGES IN SCHEMA public
  GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON TABLES TO mikro_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public
  GRANT USAGE, SELECT ON SEQUENCES TO mikro_user;
