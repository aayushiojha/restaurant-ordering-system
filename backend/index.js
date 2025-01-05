import express from "express";
import bodyParser from "body-parser";
import cors from "cors";
import dotenv from "dotenv";
import path from "path";
import router from "./routes/routes.js"; // Import your routes
import db from "./database.js"; // Import the database connection

dotenv.config(); // Load environment variables

const app = express();
const __dirname = path.resolve();

// Middleware
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cors());

// Example database connection check
db.getConnection()
  .then((connection) => {
    console.log("Database connection established.");
    connection.release(); // Release the connection back to the pool
  })
  .catch((err) => {
    console.error("Database connection error:", err);
    process.exit(1); // Exit if the database is not connected
  });

// Routes
app.use("/api", router); // Attach API routes

// Static files and SPA handling (for production)
if (process.env.NODE_ENV === "production") {
  app.use(express.static(path.join(__dirname, "restaurant_management")));
  app.get("/*", (req, res) =>
    res.sendFile(path.join(__dirname, "restaurant_management", "index.html"))
  );
}

// Define the server port
const PORT = process.env.PORT || 8001;

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});
