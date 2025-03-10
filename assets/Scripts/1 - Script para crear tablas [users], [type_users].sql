CREATE TABLE users (
	user_ID INT IDENTITY(1,1) PRIMARY KEY,
	name NVARCHAR(150) NOT NULL,
	lastname NVARCHAR(150) NOT NULL,
	username NVARCHAR(100) NOT NULL,
	password NVARCHAR(150) NOT NULL,
	type_ID INT NOT NULL,
	FOREIGN KEY (type_ID) REFERENCES type_users(type_ID)
);

CREATE TABLE type_users (
	type_ID INT IDENTITY (1,1) PRIMARY KEY,
	name_type NVARCHAR(150) NOT NULL
);