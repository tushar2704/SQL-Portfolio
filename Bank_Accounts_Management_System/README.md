# Bank Accounts Management System

This Bank Accounts Management System is a SQL-based project designed to manage customer information, employee records, and banking transactions. The system provides features for encoding customer information, tracking user statuses, and managing important transactions.

## Table of Contents

- [Features](#features)
- [Database Schema](#database-schema)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Features

- Secure and monitored user records, transactions, and statuses.
- Generation of reports displaying the transaction history and system activity.

## Database Schema

The database schema for this project consists of the following tables:

- Customers: Stores customer information.
- Employees: Stores employee records.
- Accounts: Manages customer accounts and balances.
- Transactions: Tracks transaction details.
- Reports: Stores various system reports.

## Project implementation steps:
Step 1: [Database Schema Design](https://github.com/tushar2704/SQL-Portfolio/blob/main/Bank_Accounts_Management_System/BAMS_Schema.sql)
-  Tables created for Customers, Employees, Transactions, and Reports.

Step 2: [Creating the Database](https://github.com/tushar2704/SQL-Portfolio/blob/main/Bank_Accounts_Management_System/BAMS_Schema.sql)
- Using PostgreSQL created the database based on the schema design from Step 1.

Step 3: [Implementation of User Registration and Login](https://github.com/tushar2704/SQL-Portfolio/blob/main/Bank_Accounts_Management_System/user_registration.sql)
- Created a mechanism for user registration, including capturing customer information such as name, address, contact details, and any other required fields.
- Implemented a login system to authenticate users and provide them with access to their accounts.

Step 4: [Manage User Records](https://github.com/tushar2704/SQL-Portfolio/blob/main/Bank_Accounts_Management_System/user_registration.sql)
- Developed functionality for the banking admin to manage user records. 
- Ensured proper validation and security measures are in place to protect sensitive information.

Step 5: [Transaction Management](https://github.com/tushar2704/SQL-Portfolio/blob/main/Bank_Accounts_Management_System/Step_5.sql)
- Implemented features for users to perform transactions, such as deposits, withdrawals, and transfers between accounts.
- Stored transaction details in the Transactions table, including relevant information like transaction type, amount, date, and associated user or employee.

Step 6: [Security and Monitoring](https://github.com/tushar2704/SQL-Portfolio/blob/main/Bank_Accounts_Management_System/Step_6.sql)
- Enhanced security measures by implementing encryption for sensitive data like passwords and financial information.
- Implemented a system to monitor user activity and log important transactions or events.

Step 7: [Testing and Refinement](https://github.com/tushar2704/SQL-Portfolio/blob/main/Bank_Accounts_Management_System/Step_7.sql)
- Tested the system thoroughly to ensure its functionality and identify any bugs or issues.
- Refine and optimize the system based on testing results, making necessary adjustments and improvements.

Step 8: [Documentation and Presentation](https://github.com/tushar2704/SQL-Portfolio/blob/main/Bank_Accounts_Management_System/Step8.sql)
- Documented the system's architecture, functionalities, and any additional details necessary for understanding and maintaining the project.

## Getting Started

To use this Bank Accounts Management System, follow these steps:

1. Clone the repository: `git clone https://github.com/your-username/bank-accounts-management.git`
2. Create a PostgreSQL database and import the SQL code from the [database.sql](./database.sql) file.
3. Update the database connection configuration in the project files.
4. Install any necessary dependencies (e.g., PostgreSQL driver).
5. Run the application.

## Usage

Once the Bank Accounts Management System is up and running, you can perform the following tasks:

- Encode customer information.
- Manage user and employee files.
- Perform banking transactions such as deposits, withdrawals, and transfers.
- Generate reports displaying transaction history and system activity.

For more details on how to use the system, refer to the [User Guide](./user-guide.md).

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvement, please submit a pull request or create an issue in the GitHub repository.

## License

This project is licensed under the [MIT License](./LICENSE).
