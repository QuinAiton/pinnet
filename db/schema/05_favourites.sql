DROP TABLE IF EXISTS favourites CASCADE;
CREATE TABLE favourites(
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  pin_id INTEGER REFERENCES pins(id) ON DELETE CASCADE,
  is_liked BOOLEAN NOT NULL DEFAULT FALSE
);