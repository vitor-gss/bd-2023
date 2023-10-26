const mysql = require('mysql');

const connection = mysql.createConnection({
  host: '192.168.3.53',
  user: 'testebd',
  password: 'testebd',
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

let sql = ""
id = 1

// SELECT
// sql = "SELECT * FROM usuarios"
// connection.query(sql, (err, results) => {
//     if (err) {
//       console.error('Erro na consulta:', err);
//       return;
//     }
//     console.log('Resultado da consulta:', results);
//   });

// // SELECT WHERE
// id = 1
// sql = "SELECT * FROM usuarios WHERE id=?"
// connection.query(sql, id, (err, results) => {
//     if (err) {
//         console.error("Erro na consulta:", err);
//         return;
//     }
//     console.log("Resultado da consulta:",results);
// });

// INSERT
// let novoUsuario = ['acessoremoto', "email@email.com"];
// sql = 'INSERT INTO usuarios (nome, email) VALUES (?,?)'
// connection.query(sql, novoUsuario, (err, results) => {
//   if (err) {
//     console.error('Erro ao inserir dados:', err);
//     return;
//   }
//   console.log('Novo usuário inserido com sucesso, ID:', results.insertId);
// });

// novoUsuario = {nome: 'acessoremoto', email: "email@email.com"};
// sql = 'INSERT INTO usuarios SET ?';
// connection.query(sql, novoUsuario, (err, results) => {
//   if (err) {
//     console.error('Erro ao inserir dados:', err);
//     return;
//   }
//   console.log('Novo usuário inserido com sucesso, ID:', results.insertId);
// });

novoUsuario = { nome: 'User', email: "meuemail@meuemail.com" };
sql = 'INSERT INTO usuarios SET ?'
connection.query(sql, novoUsuario, (err, results) => {
  if (err) {
    console.error('Erro ao inserir dados:', err);
    return;
  }
  console.log('Novo usuário inserido com sucesso, ID:', results.insertId);
});

// UPDATE
// sql = 'UPDATE usuarios SET email = ? WHERE id = ?';
// id = 2
// connection.query(sql, ["novoemail@email.com", id], (err, results) => {
//   if (err) {
//     console.error('Erro ao atualizar dados:', err);
//     return;
//   }
//   console.log('Usuário atualizado com sucesso, ID:', id);
// });

// DELETE
// sql = 'DELETE FROM usuarios WHERE id = ?';
// id = 2
// connection.query(sql, id, (err, results) => {
//   if (err) {
//     console.error('Erro ao excluir dados:', err);
//     return;
//   }
//   console.log('Usuário excluido com sucesso, ID:', id);
// });

connection.end((err) => {
    if (err) {
        console.error("Erro ao fechar a conexão com o banco de dados:", err);
        return;
    }
    console.log("Conexão encerrada com sucesso")
});