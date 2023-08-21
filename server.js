const inquirer = require("inquirer");
const mysql = require("mysql2");

require("console.table");

const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "1234",
    port: "3001",
    database: "employeeDB"
});

db.connect(function(err){
    if (err) throw err;
    console.log("connnected as id" + db.threadId);

    launchScreen();
});

function firstPrompt() {
    inquier
        .prompt({
            type: 'list',
            name: 'choice',
            message: 'What would you like to do?',
            choices:[
                "View Departments",
                "View Roles",
                "Add Employee",
                "Remove Employee",
                "Update Employee Role",
                "Add Role",
                "End"
            ]
        })
        .then((res) => {
        console.log(res.choice);
        switch(res.choice){
            case "View Departments":
                viewDepartments();
                break;
            
            case "View Roles":
                viewRoles();
                break;

            case "Add Employee":
                addEmployee();
                break;

            case "Remove Employee":
                removeEmployee();
                break;
            
            case "Update Employee Role":
                updateEmployeeRole();
                break;
            
            case "Add Role":
                addRole();
                break;

            case "End":
                connection.end();
                break;
        } 
        });
}

