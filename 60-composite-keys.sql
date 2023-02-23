-- Intermediate table
CREATE TABLE projects_employees (
    -- id SERIAL PRIMARY KEY,
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(id) ON DELETE CASCADE,
    project_id INT,
    FOREIGN KEY(project_id) REFERENCES projects(id) ON DELETE CASCADE,
    -- composite primary key
    PRIMARY KEY (employee_id, project_id)
    -- Composite foreign key
    -- FOREIGN key (employee_id, project_id) REFERENCES employees(id) ON DELETE CASCADE
);