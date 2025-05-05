CREATE DATABASE weblogs;

CREATE TABLE IF NOT EXISTS weblogs.logs (
    id SERIAL PRIMARY KEY,
    ip_address TEXT,
    method TEXT,
    path TEXT,
    user_agent TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pg_stat_statements";