/*Criar tabela*/
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    salary REAL,
    department TEXT
);

/*Criar um trigger*/

CREATE TRIGGER insert_employee_trigger
AFTER INSERT ON employees
BEGIN
    SELECT 'Novo funcionário inserido: ' || NEW.name || ', Salário: ' || NEW.salary || ', Departamento: ' || NEW.department;
END;

