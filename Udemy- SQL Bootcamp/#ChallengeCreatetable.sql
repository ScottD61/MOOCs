#Challenge Create table

CREATE TABLE Leads (
cus_id serial PRIMARY KEY,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
email VARCHAR UNIQUE NOT NULL,
sign_up TIMESTAMP NOT NULL,
min INT NOT NULL
)
;