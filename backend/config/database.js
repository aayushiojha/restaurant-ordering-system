import mysql from "mysql2";
import dotenv from "dotenv";

dotenv.config(); // Load the .env file

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: process.env.DB_PASSWORD, // Use the environment variable
  database: "db_restaurant",
});

db.connect((error) => {
  if (error) throw error;
  console.log("Successfully connected to the database.");
});

export default db;
