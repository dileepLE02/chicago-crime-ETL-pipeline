-- Create the schema database environment
CREATE DATABASE IF NOT EXISTS chicago_crime_db;
USE chicago_crime_db;

-- Construct target destination schema table
CREATE TABLE IF NOT EXISTS crimes (
    crime_id VARCHAR(15) NOT NULL,
    case_number VARCHAR(15),
    occurred_on DATETIME NOT NULL,
    block VARCHAR(100),
    primary_type VARCHAR(100) NOT NULL,
    description VARCHAR(150) NOT NULL DEFAULT 'NOT SPECIFIED',
    location_description VARCHAR(100) NOT NULL DEFAULT 'UNKNOWN',
    arrest TINYINT(1) NOT NULL DEFAULT 0,
    domestic TINYINT(1) NOT NULL DEFAULT 0,
    beat SMALLINT,
    district SMALLINT,
    ward SMALLINT,
    community_area SMALLINT,
    fbi_code VARCHAR(5),
    year SMALLINT NOT NULL,
    updated_on DATETIME,
    latitude DECIMAL(11, 8),
    longitude DECIMAL(11, 8),
    severity_tier VARCHAR(20) NOT NULL,
    PRIMARY KEY (crime_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


SHOW TABLES;
DESCRIBE crimes;

USE chicago_crime_db;
DESCRIBE crimes;

USE chicago_crime_db;
TRUNCATE TABLE crimes;