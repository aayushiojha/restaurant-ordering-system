// Import express - is for building the Rest APIs
import express from "express";

// Import body-parser - helps to parse the request and create the req.body object
import bodyParser from "body-parser";

// Import cors - provides Express middleware to enable CORS with various options, connect frontend
import cors from "cors";

// Import routes
import router from "./routes/routes.js";

// Import path
import path from "path";

// Use path
const __dirname = path.resolve();

// Initialize express
const app = express();

// Use express json
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Use CORS middleware
app.use(cors());

// Use router for API routes
app.use(router);

// Import dotenv for environment variables
import dotenv from "dotenv";
dotenv.config();

// Import mysql2 for MySQL database connection
import mysql from "mysql2";

// Database connection handling
const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

// Connect to the MySQL database and handle connection errors
db.connect((err) => {
  if (err) {
    console.error("Error connecting to the database: ", err);
    process.exit(1); // Exit process with failure
  }
  console.log("Successfully connected to the database.");
});

// Handle production (uncomment for deployment)
if (process.env.NODE_ENV === "production") {
  // Static folder for serving production files
  app.use(express.static(path.join(__dirname, "restaurant_management")));

  // Handle Single Page Application (SPA)
  app.get("/*", (req, res) =>
    res.sendFile(path.join(__dirname, "restaurant_management", "index.html"))
  );
}

// Example API endpoint
app.get("/api", function (req, res) {
  res.json({ message: "Welcome to the restaurant API" });
});

// Serve static files (e.g., front-end)
app.use(express.static(path.join(__dirname, "restaurant_management")));

// Default route for SPA
app.get("/*", function (req, res) {
  res.sendFile(path.join(__dirname, "restaurant_management", "index.html"));
});

// Define the PORT from environment or default to 8001
const PORT = process.env.PORT || 8001;

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});
