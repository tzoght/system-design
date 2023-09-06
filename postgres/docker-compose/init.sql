-- Create a new schema
CREATE SCHEMA IF NOT EXISTS my_schema;

-- Create a new role
CREATE ROLE my_role;

-- Grant usage of the schema to the role
GRANT USAGE, CREATE ON SCHEMA my_schema TO my_role;

-- Create a new user
CREATE USER my_user WITH ENCRYPTED PASSWORD 'zaq12wsx';

-- Create a superuser
CREATE USER my_admin WITH ENCRYPTED PASSWORD 'xsw21qaz' SUPERUSER;


-- Add the user to the role
GRANT my_role TO my_user;

-- Set default schema search path for the role
ALTER ROLE my_role SET search_path TO my_schema;

-- Optionally, create a table in the new schema
CREATE TABLE my_schema.example_table (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

-- Grant privileges on the table to the role
GRANT ALL PRIVILEGES ON TABLE my_schema.example_table TO my_role;


