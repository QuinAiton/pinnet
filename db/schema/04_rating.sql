DROP TABLE IF EXISTS ratings CASCADE;
CREATE TABLE ratings(
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  pin_id INTEGER REFERENCES pins(id) ON DELETE CASCADE,
  rating INTEGER,
  UNIQUE (user_id, pin_id)
);
