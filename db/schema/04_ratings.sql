DROP TABLE IF EXISTS ratings CASCADE;
CREATE TABLE ratings(
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  pin_id INTEGER NOT NULL REFERENCES pins(id) ON DELETE CASCADE,
  rating INTEGER NOT NULL,
  UNIQUE (user_id, pin_id)
);
