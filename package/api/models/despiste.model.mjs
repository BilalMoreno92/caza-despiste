import poolDB from '../config/db.config.mjs';

class Despiste {

    constructor(data) {
        this.id = data.id;
        this.instante = data.instante;
        this.clase = data.clase;
        this.dispositivo = data.dispositivo;
    }

    static list = (result) => {
        poolDB.getConnection((err, conn) => {
            if (err) {
                result(null, err);
                return;
            };
            conn.query('SELECT * FROM despistes', (error, rows, fields) => {
                if (error) {
                    result(null, error);
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
            conn.query('INSERT INTO despistes SET ?', data, (error, row) => {
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

export default Despiste;
