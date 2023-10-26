const mysql = require('mysql');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'acessobd',
  port: 3306, // Porta do MySQL, ajuste se necessário
});

connection.connect((err) => {
  if (err) {
    console.error('Erro ao conectar ao banco de dados:', err);
    return;
  }
  console.log('Conectado ao banco de dados MySQL com sucesso.');
});


// SELECT
let sql = "SELECT * FROM usuarios"
connection.query(sql, (err, results) => {
    if (err) {
      console.error('Erro na consulta:', err);
      return;
    }
    console.log('Resultado da consulta:', results);
  });

// SELECT WHERE
let id = 1
sql = "SELECT * FROM usuarios WHERE id=?"
connection.query(sql, id, (err, results) => {
    if (err) {
        console.error("Erro na consulta:", err);
        return;
    }
    console.log("Resultado da consulta:",results);
});

// INSERT
const novoUsuario = ['Teste', "email@email.com"];
sql = 'INSERT INTO usuarios (nome, email) VALUES (?,?)'
connection.query(sql, novoUsuario, (err, results) => {
  if (err) {
    console.error('Erro ao inserir dados:', err);
    return;
  }
  console.log('Novo usuário inserido com sucesso, ID:', results.insertId);
});


// UPDATE

// DELETE

connection.end((err) => {
    if (err) {
        console.error("Erro ao fechar a conexão com o banco de dados:", err);
        return;
    }
    console.log("Conexão encerrada com sucesso")
});