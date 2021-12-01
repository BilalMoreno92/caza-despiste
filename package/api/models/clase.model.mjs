import poolDB from '../config/db.config.mjs';

// constructor
const clase = (clase) => {
    this.id = clase.id;
    this.codigo = clase.codigo;
    this.nombre = clase.nombre;
    this.descripcion = clase.descripcion;
    this.activa = clase.activa;
}

clase.list = (result) => {
    poolDB.getConnection((err, conn) => {
        if (err) {
            result(null, err);
            return;
        };
        conn.query('SELECT * FROM clases', (error, rows, fields) => {
            if (error) {
                result(null, error);
            } else {
                result(null, rows);
            }
        });
        conn.release();
    });
}

clase.add = (data, result) => {
    
}

export default clase;
