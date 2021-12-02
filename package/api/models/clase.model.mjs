import poolDB from '../config/db.config.mjs';

class Clase {

    constructor(data) {
        this.id = data.id;
        this.codigo = data.codigo;
        this.nombre = data.nombre;
        this.descripcion = data.descripcion;
        this.activa = data.activa;
    }

    static list = (result) => {
        poolDB.getConnection((err, conn) => {
            if (err) {
                result(err, null);
                return;
            }
            conn.query('SELECT * FROM clases', (error, rows, fields) => {
                if (error) {
                    result(err, null);
                } else {
                    result(null, rows);
                }
            });
            conn.release();
        });
    }

    static add = (data, result) => {
        poolDB.getConnection((err, conn) => {
            if (err) {
                result(err, null);
                return;
            }
            conn.query('INSERT INTO clases SET ?', data, (error, row) => {
                if (error) {
                    result(error, null);
                } else {
                    data.id = row.insertId;
                    result(null, data);
                }
            });
            conn.release();
        });
    }
    
}

export default Clase;
