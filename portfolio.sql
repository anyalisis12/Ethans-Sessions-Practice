CREATE DATABASE IF NOT EXISTS portfolio_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE portfolio_db;

-- admin users
CREATE TABLE IF NOT EXISTS admins (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL
);
select * from admins;
-- main profile info
CREATE TABLE IF NOT EXISTS profile (
  id INT PRIMARY KEY DEFAULT 1,
  name VARCHAR(200),
  email VARCHAR(200),
  phone VARCHAR(50),
  linkedin VARCHAR(255),
  summary TEXT
);

-- projects
CREATE TABLE IF NOT EXISTS projects (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255),
  description TEXT,
  tech_stack VARCHAR(255),
  url VARCHAR(255)
);
select * from projects;
-- education
CREATE TABLE IF NOT EXISTS education (
  id INT AUTO_INCREMENT PRIMARY KEY,
  degree VARCHAR(255),
  institute VARCHAR(255),
  year_range VARCHAR(50),
  details TEXT
);

-- skills
CREATE TABLE IF NOT EXISTS skills (
  id INT AUTO_INCREMENT PRIMARY KEY,
  skill VARCHAR(255)
);

-- messages from contact form
CREATE TABLE IF NOT EXISTS messages (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(200),
  email VARCHAR(200),
  message TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample admin (username: admin, password: admin123) -- change after install
INSERT IGNORE INTO admins (username, password) VALUES ('admin', '$2y$10$zQK7X8wqFZ1t3p0yQ9vG0Oq5X9aR8i3yJmJv1z0P1qK9v6a7b8cde');
-- The above hash corresponds to: admin123 (please change it using admin dashboard after install)

-- Insert profile using your résumé data
INSERT INTO profile (id, name, email, phone, linkedin, summary) VALUES
(1, 'Anuradha Bansode', 'anuradhabansode21@gmail.com', '9665951151', 'https://linkedin.com/in/anuradha-bansode12', 'Enthusiastic and self-motivated Computer Science graduate with a strong foundation in front-end development, UI/UX design, and full-stack web technologies.');

-- Projects (sample from CV)
INSERT INTO projects (title, description, tech_stack, url) VALUES
('Customer Relationship Management System', 'Full-stack CRM web application to manage client data, sales tracking, and user roles. Implemented secure login with JWT and dynamic dashboards.', 'React.js, Node.js, Express.js, MongoDB, JWT', ''),
('SignSence - Real Time Sign Language Recognition System', 'Computer vision and ML system to recognize Indian Sign Language gestures using a custom dataset.', 'Python, OpenCV, TensorFlow/Keras', ''),
('Expense Tracker Web App', 'Responsive expense tracking tool using local storage to improve personal budget management.', 'HTML, CSS, JavaScript', '');

-- Education
INSERT INTO education (degree, institute, year_range, details) VALUES
('B.Tech in CSE and Honors in AIML (CGPA 8.5)', 'Maharashtra Institute of Technology, Chhatrapati Sambhajinagar', '2021-2025', ''),
('Higher Secondary Certificate (93.5%)', 'Narmada Secondary & Higher Secondary School', '2020-2021', ''),
('Secondary School Certificate (87%)', 'Atmaram Tukaram Zambre Madhyamik Vidyalaya, Jalgaon', '2018-2019', '');

-- Skills
INSERT INTO skills (skill) VALUES
('React.js'),('JavaScript'),('HTML5'),('CSS3'),('Node.js'),('Express.js'),('MongoDB'),('Figma'),('Python'),('Git');