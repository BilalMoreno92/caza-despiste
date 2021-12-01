import poolDB from '../config/db.config.mjs';

// constructor
const despiste = (despiste) => {
    this.id = despiste.id;
    this.instante = despiste.instante;
    this.clase = despiste.clase;
    this.dispositivo = despiste.dispositivo;
}

despiste.list = (result) => {
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

despiste.add = (data, result) => {

}

export default despiste;
