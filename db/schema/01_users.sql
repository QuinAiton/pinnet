-- Drop and recreate Users table (Example)
DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  email VARCHAR(255) NOT NULL,
  passord VARCHAR(255) NOT NULL,
  profile_picture VARCHAR(255) NOT NULL
);
