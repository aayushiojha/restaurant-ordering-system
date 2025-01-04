import mysql from "mysql2";
import dotenv from "dotenv";

dotenv.config(); // Load the .env file

const db = mysql.createConnection({
  host: process.env.DB_HOST, // Use environment variable for host
  user: process.env.DB_USER, // Use environment variable for user
  password: process.env.DB_PASSWORD, // Use environment variable for password
  database: process.env.DB_NAME, // Use environment variable for database name
  port: process.env.DB_PORT, // Use environment variable for port
});

db.connect((error) => {
  if (error) throw error;
  console.log("Successfully connected to the database.");
});

export default db;
