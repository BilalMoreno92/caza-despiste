import mysql from 'mysql';
import dotenv from 'dotenv';

// configura las variables de entorno
dotenv.config();

// configura la conexión a la base de datos
const pool = mysql.createPool({
  connectionLimit: 100,
  host: process.env.DB_HOST || 'localhost',
  port: process.env.DB_PORT || 3306,
  database: process.env.DB_DATABASE,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD
});

export default pool;
