const { log, error } = require('console');
const mysql = require('mysql');

const connection = mysql.createConnection({
  host: '10.1.20.108',
  user: 'testebd',
  password: 'testebd',
  database: 'streamflix',
  port: 3306, // Porta do MySQL, ajuste se necessário
});

connection.connect((err) => {
  if (err) {
    console.error('Erro ao conectar ao banco de dados:', err);
    return;
  }
  console.log('Conectado ao banco de dados MySQL com sucesso.');
});

// CREATE
sql = "insert into usuarios (login, email, nome) values('Vitor', 'a@gma', 'vituuu')"
connection.query(sql, (err, results) => {
  if (err) {
    console.error('Erro na consulta:', err);
    return;
  }
  console.log('Resultado da consulta:', results);
});

// READ
/*
let sql = "SELECT * FROM usuarios"
connection.query(sql, (err, results) => {
    if (err) {
      console.error('Erro na consulta:', err);
      return;
    }
    console.log('Resultado da consulta:', results);
  });
*/

// UPDATE
// DELETE
/*
id = "user5"
sql = "delete from usuarios where usuario.login = ?"
connection.query(sql, id, (err, results) => {
    if(err){
      console.error('Erro na consulta', err);
      return
    }
    console.log('Usuário deletado com sucesso, ID:', results.insertId);
}) 
*/
connection.end((err) => {
    if (err) {
        console.error("Erro ao fechar a conexão com o banco de dados:", err);
        return;
    }
    console.log("Conexão encerrada com sucesso")
});
