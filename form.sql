-- STEP 1️⃣: Create database and use it
CREATE DATABASE IF NOT EXISTS lead_db;
USE lead_db;

-- STEP 2️⃣: Create users table first (so leads can reference it)
CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('user','admin') DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;
alter table users add column gender varchar(20);
-- STEP 3️⃣: Alter users table (your original commands)
ALTER TABLE users DROP COLUMN id;
ALTER TABLE users ADD COLUMN id INT;
ROLLBACK;  -- (No effect on DDL, but kept as in your original)
ALTER TABLE users
ADD COLUMN created_by INT NULL;
-- STEP 4️⃣: View users table
SELECT * FROM users;

-- STEP 5️⃣: Create leads table (foreign key properly formed)
CREATE TABLE IF NOT EXISTS leads (
    id INT AUTO_INCREMENT PRIMARY KEY,
    our_firm VARCHAR(255),
    campaign_id VARCHAR(100),
    lead_owner VARCHAR(255),
    response_date DATE,
    stage VARCHAR(100),
    close_probability VARCHAR(50),
    priority VARCHAR(50),
    current_currency VARCHAR(50),
    client_category VARCHAR(100),
    existing_competitor VARCHAR(100),
    company_name VARCHAR(255),
    website VARCHAR(255),
    industry VARCHAR(100),
    employee_range VARCHAR(50),
    company_country VARCHAR(100),
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    job_title VARCHAR(100),
    linkedin_url VARCHAR(255),
    email_id VARCHAR(255),
    profile_picture VARCHAR(255),
    direct_number VARCHAR(50),
    left_company VARCHAR(3),
    past_company_name VARCHAR(255),
    person_country VARCHAR(100),
	currency VARCHAR(100),
    amount_received DECIMAL(10,2),
    deal_closed_amount DECIMAL(10,2),
    tax_amount DECIMAL(10,2),
    inr_amount DECIMAL(10,2),
    invoice VARCHAR(255),
    remarks TEXT,
    created_by INT NOT NULL,  -- ✅ foreign key to users.id
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_lead_user FOREIGN KEY (created_by) REFERENCES users(id) ON DELETE CASCADE
) ENGINE=InnoDB;
SHOW COLUMNS FROM leads;

-- STEP 6️⃣: Alter table leads (extra columns and constraints)
ALTER TABLE leads ADD COLUMN created_by INT NOT NULL;
ALTER TABLE leads MODIFY created_by INT NOT NULL;
ALTER TABLE leads
ADD CONSTRAINT fk_created_by FOREIGN KEY (created_by) REFERENCES users(id);

ALTER TABLE leads 
ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP AFTER created_by;
ALTER TABLE leads 
ADD CONSTRAINT fk_leads_users 
FOREIGN KEY (created_by) REFERENCES users(id) 
ON DELETE CASCADE;

ROLLBACK;  -- (No real effect, kept for consistency)

-- STEP 7️⃣: Drop and re-add created_by (your original steps)
ALTER TABLE leads DROP COLUMN created_by;
ALTER TABLE leads 
ADD COLUMN created_by INT NOT NULL AFTER invoice;
ALTER TABLE leads 
ADD CONSTRAINT fk_leads_users 
FOREIGN KEY (created_by) REFERENCES users(id) 
ON DELETE CASCADE;
select * from leads;
-- STEP 8️⃣: Update leads table
UPDATE leads SET created_by = 1 WHERE created_by IS NULL OR created_by = 0;

-- STEP 9️⃣: Drop and add columns (your customization)
ALTER TABLE leads DROP COLUMN current_currency;
SELECT * FROM leads;
ALTER TABLE leads ADD COLUMN current_status VARCHAR(50);
ALTER TABLE leads DROP COLUMN company_country;
ALTER TABLE leads ADD COLUMN country VARCHAR(50);
select * from leads;

alter table leads drop column stage;
alter table leads add column deal_stage varchar(40);
alter table leads drop column linkedin_url;
alter table leads add column linkedin VARCHAR(255);
alter table leads drop column email_id;
alter table leads add column email VARCHAR(255);
alter table leads drop column deal_closed_amount;
alter table leads add column deal_closed DECIMAL(10,2);

SHOW COLUMNS FROM leads LIKE 'created_by';
