USE employeesDB;

INSERT INTO department (name)
VALUES ("Sales");
INSERT INTO department (name)
VALUES ("Engineering");
INSERT INTO department (name)
VALUES ("HR");
INSERT INTO department (name)
VALUES ("Legal");

INSERT INTO role (title, salary, department_id)
VALUES ("Salesperson", 80000, 1);
INSERT INTO role (title, salary, department_id)
VALUES ("Lead Engineer", 150000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Human Resources Manager", 120000, 3);
INSERT INTO role (title, salary, department_id)
VALUES ("Lawyer", 160000, 4);
INSERT INTO role (title, salary, department_id)
VALUES ("Sales Manager", 125000, 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jane", "Doe", 3, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Mike", "Scott", 5, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "Smith", 1, 2);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Kevin", "Long", 4, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Bill", "Kim", 5, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Kelly", "Brown", 2, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Tim", "Kelly", 1, 2);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jimmy", "Karr", 1, 5);