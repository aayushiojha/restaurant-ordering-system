import mysql from "mysql2";
import dotenv from "dotenv";

dotenv.config(); // Load environment variables from the .env file

// Create a connection pool for better performance and scalability
const pool = mysql.createPool({
  host: process.env.DB_HOST, // Use environment variable for host
  user: process.env.DB_USER, // Use environment variable for user
  password: process.env.DB_PASSWORD, // Use environment variable for password
  database: process.env.DB_NAME, // Use environment variable for database name
  port: process.env.DB_PORT, // Use environment variable for port
  waitForConnections: true, // Wait for connections if all are in use
  connectionLimit: 10, // Maximum number of connections in the pool
  queueLimit: 0, // Unlimited queue limit
});

// Export a promise-based pool for async/await usage
const db = pool.promise();

export default db;
