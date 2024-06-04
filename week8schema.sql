DROP TABLE IF EXISTS Project_Category;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS Step;
DROP TABLE IF EXISTS Material;
DROP TABLE IF EXISTS Project;

CREATE TABLE Project(
project_id INT NOT NULL,
project_name VARCHAR(128) NOT NULL,
estimated_hours DECIMAL(7,2),
actual_hours DECIMAL(7,2),
difficulty INT,
notes TEXT
);

CREATE TABLE Material(
material_id INT NOT NULL,
project_id INT NOT NULL,
material_name VARCHAR(128) NOT NULL,
num_required INT,
cost DECIMAL(7,2)
);

CREATE TABLE Step(
step_id INT NOT NULL,
project_id INT NOT NULL,
step_text TEXT NOT NULL,
step_order INT NOT NULL
);

CREATE TABLE Category(
category_id INT NOT NULL,
category_name VARCHAR(128) NOT NULL
);

CREATE TABLE Project_Category(
project_id INT NOT NULL,
category_id INT NOT NULL);
