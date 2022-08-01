CREATE DATABASE IF NOT EXISTS BudgetApp;

CREATE TABLE IF NOT EXISTS USERS (
  user_id INT PRIMARY KEY auto_increment,
  username VARCHAR(25),
  password VARCHAR,
  salt VARCHAR,
  first_name VARCHAR(30),
  last_name VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS Transaction (
  income_id INT PRIMARY KEY auto_increment,
  FOREIGN KEY(user_id) REFERENCES USERS(user_id)
  name VARCHAR(30) NOT NULL,
  type VARCHAR NOT NULL,
  amount FLOAT NOT NULL,
  last_date_of_income DATETIME,
  regularity_interval VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Goals (
    goal_id INT PRIMARY KEY auto_increment,
    FOREIGN KEY(user_id) REFERENCES USERS(user_id)
    name VARCHAR(30)
    type VARCHAR,
    total DECIMAL,
    commitment_interval VARCHAR
);

CREATE TABLE IF NOT EXISTS MoneyStore (
    money_store_id INT PRIMARY KEY auto_increment,
    FOREIGN KEY(userid) REFERENCES USERS(user_id),
    name VARCHAR(30),
    type VARCHAR
);

CREATE TABLE IF NOT EXISTS Account (
    account_id INT PRIMARY KEY auto_increment,
    FOREIGN KEY(userid) REFERENCES USERS(user_id),
    name VARCHAR(30),
    amount DECIMAL,
    interest DECIMAL,
    dividend DECIMAL
);
