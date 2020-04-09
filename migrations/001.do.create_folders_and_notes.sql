-- DROP the tables and constraints
DROP TABLE IF EXISTS folders CASCADE ;
DROP TABLE IF EXISTS notes CASCADE;

-- create the folders table, it depends on no other
CREATE TABLE folders (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  name TEXT NOT NULL
);

-- create the folders table without the foreign key
CREATE TABLE notes (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  name TEXT NOT NULL,
  modified TIMESTAMP DEFAULT NOW(),
  folder_id INTEGER REFERENCES folders(id) ON DELETE CASCADE,
  content TEXT NOT NULL
);