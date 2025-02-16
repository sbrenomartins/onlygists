CREATE TABLE profiles (
  id UUID PRIMARY KEY REFERENCES auth.users(id),
  email VARCHAR NOT NULL,
  username VARCHAR NOT NULL,
  name VARCHAR NOT NULL,
  site VARCHAR,
  phone VARCHAR,
  bio VARCHAR,
  avatar_url VARCHAR NOT NULL,
  address JSONB,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
  payment_connected_account VARCHAR
);
