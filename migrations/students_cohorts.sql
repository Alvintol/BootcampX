CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(50) NOT NULL,
  age VARCHAR(50),
  email VARCHAR(50),
  phone VARCHAR(16),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
  );