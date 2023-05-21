-- CROP TABLES IF THEY EXIST
DROP TABLE IF EXISTS contacts CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS subcategory CASCADE;
DROP TABLE IF EXISTS campaign CASCADE;

-- CREATE TABLES
CREATE TABLE contacts (
	contact_id int PRIMARY KEY NOT NULL,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	email varchar NOT NULL
);

CREATE TABLE category (
	category_id varchar PRIMARY KEY NOT NULL,
	Category varchar NOT NULL
);

CREATE TABLE subcategory (
	subcategory_id varchar PRIMARY KEY NOT NULL,
	Subcategory varchar NOT NULL
);

CREATE TABLE campaign (
	cf_id int PRIMARY KEY NOT NULL,
	contact_id int NOT NULL,
	company_name varchar NOT NULL,
	description varchar NOT NULL,
	goal float NOT NULL,
	pledged float NOT NULL,
	outcome varchar NOT NULL,
	backers_count int NOT NULL,
	country varchar NOT NULL,
	currency varchar NOT NULL,
	launch_date varchar NOT NULL,
	end_date varchar NOT NULL,
	category_id varchar NOT NULL,
	subcategory_id varchar NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

