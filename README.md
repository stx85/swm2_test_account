# Account Service

## Overview
The **Account Service** is a Spring Boot application designed to manage accounts and facilitate withdrawal operations through interaction with a Transaction Service. It ensures secure and consistent account management while handling transaction reservations based on account balance.

## Features
- **Withdrawal Request**: Request a withdrawal from an account.
  - Validates sufficient account balance.
  - Contacts the Transaction Service to reserve funds.
  - Returns a transaction number upon successful reservation.
  - Returns an error if funds are insufficient.
- **RESTful API**: Exposes endpoints for seamless integration.

## Technologies Used
- **Java 17**
- **Spring Boot 3.x**
- **Spring Data JPA**
- **Hibernate**
- **H2/MySQL Database** (configurable)
- **Gradle**

## Prerequisites
- Java Development Kit (JDK) 17+
- Gradle 7+
- Database (H2 for in-memory or MySQL for production)

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/your-repo/account-service.git
   ```
2. Navigate to the project directory:
   ```bash
   cd account-service
   ```
3. Build the project:
   ```bash
   ./gradlew build
   ```
4. Run the application:
   ```bash
   ./gradlew bootRun
   ```

## Configuration
Update `application.properties` or `application.yml` for database configurations:
```properties
spring.datasource.url=jdbc:mysql://localhost:3306/accountdb
spring.datasource.username=root
spring.datasource.password=yourpassword
spring.jpa.hibernate.ddl-auto=update
```

## API Endpoints
- **POST /accounts/withdraw**: Request a withdrawal.
  - **Request Body:**
    ```json
    {
      "accountId": "12345",
      "amount": 100.00
    }
    ```
  - **Response (Success):**
    ```json
    {
      "transactionId": "txn-67890",
      "status": "reserved"
    }
    ```
  - **Response (Failure - Insufficient Funds):**
    ```json
    {
      "error": "Insufficient funds"
    }
    ```

## Testing
Run the test suite with:
```bash
./gradlew test
```

## Contribution
Contributions are welcome! Please fork the repository and create a pull request.

## License
This project is licensed under the MIT License.

## Contact
For any questions or support, contact [your.email@example.com](mailto:your.email@example.com).

---
Happy coding! 🚀

