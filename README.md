# Online Cake Ordering System

Welcome to the **Online Cake Ordering System**, a web-based application designed for users to browse and order cakes online while allowing bakers to manage their offerings.

## 📌 Features
- User registration and authentication
- Cake shop with various cake options
- Cart system for selecting cakes
- Order management system for users
- Baker panel for managing cake listings
- Responsive UI with a cake-themed design

## 🖥️ System Requirements
- Java Development Kit (JDK) 8 or later
- Apache Tomcat 9.x
- MySQL 5.7 or later
- Eclipse IDE (recommended for JSP and Servlet development)
- Web browser (Google Chrome, Firefox, etc.)

## 📂 Project Setup

### 1️⃣ Clone the Repository
```bash
 git clone https://github.com/VENOMGHOST16/Online-Cake-Ordering-System.git
 cd Online-Cake-Ordering-System
```

### 2️⃣ Database Configuration
1. Open MySQL and create a database named `cake_ordering`:
```sql
CREATE DATABASE cake_ordering;
USE cake_ordering;
```
2. Create necessary tables:
```sql
CREATE TABLE cakes (
    cake_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    image_link LONGTEXT NOT NULL
) AUTO_INCREMENT=401;

CREATE TABLE users (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    mobile_no VARCHAR(15) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
) AUTO_INCREMENT=101;

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    cake_id INT,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(account_id),
    FOREIGN KEY (cake_id) REFERENCES cakes(cake_id)
);
```
3. Insert sample data into `cakes`:
```sql
INSERT INTO cakes (name, description, image_link) VALUES
('Chocolate Cake', 'Rich and creamy chocolate cake.', 'https://example.com/chocolate.jpg'),
('Vanilla Cake', 'Classic vanilla cake with frosting.', 'https://example.com/vanilla.jpg');
```

### 3️⃣ Configure Database Connection
- Update `dbconfig.jsp` or equivalent file with your MySQL credentials:
```jsp
<%
    String jdbcURL = "jdbc:mysql://localhost:3306/cake_ordering";
    String dbUser = "root";
    String dbPassword = "yourpassword";
%>
```

### 4️⃣ Run the Project
1. Open Eclipse and import the project.
2. Configure Apache Tomcat as the runtime environment.
3. Deploy the project and start the Tomcat server.
4. Open `http://localhost:8080/Online-Cake-Ordering-System/` in your browser.

## 📜 SQL Queries
### Fetch all orders of a user with cake details:
```sql
SELECT o.order_id, o.order_date, c.name, c.image_link
FROM orders o
JOIN cakes c ON o.cake_id = c.cake_id
WHERE o.user_id = ?;
```

### Fetch all orders with user details:
```sql
SELECT o.order_id, o.order_date, c.name, c.image_link, u.email, u.full_name
FROM orders o
JOIN cakes c ON o.cake_id = c.cake_id
JOIN users u ON o.user_id = u.account_id;
```

## 📌 UI & Styling
- The project uses **HTML, CSS, and JavaScript** for front-end.
- **CSS animations** for a better user experience.
- Footer remains **fixed at the bottom** of all pages.

## 🚀 Contribution
1. Fork the repository.
2. Create a new branch (`feature-xyz`).
3. Commit your changes.
4. Push to the branch and submit a Pull Request.

## 📬 Contact
For issues or contributions, reach out at **[GitHub Issues](https://github.com/VENOMGHOST16/Online-Cake-Ordering-System/issues)**.

---
Thank you for using the Online Cake Ordering System! 🎂

