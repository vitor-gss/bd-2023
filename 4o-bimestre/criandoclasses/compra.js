// Classe para a entidade Usuario
class Usuario {
    constructor(id, nome, email) {
      this.id = id;
      this.nome = nome;
      this.email = email;
    }

    adicionarUsuario(nome, email) {}
    lerUsuario(id) {}
    lerUsuarios() {}
    atualizarUsuario(id, nome, email) {}
    atualizarNomeUsuario(id, nome) {}
    atualizarEmailUsuario(id, email) {}
    deletarUsuario(id) {}
  }
  
  // Classe para a entidade Produto
  class Produto {
    constructor(id, nome, preco) {
      this.id = id;
      this.nome = nome;
      this.preco = preco;
    }

    criarProduto(nome, preco) {
      // INSERT INTO produtos(nome, preco) VALUES (?,?)
    }
    lerProdutos() {
      // SELECT * FROM produtos
    }
    lerProduto(id) {
      // SELECT * FROM produtos WHERE ID=?
    }
    atualizarProduto(id, nome, preco) {
      // UPDATE PRODUTO SET campo WHERE ID=?
    }
    atualizarNomeProduto(id, nome) {}
    atualizarPrecoProduto(id, preco) {}

    deletarProduto(id) {
      // DELETE FROM produtos WHERE ID=?
    }

  }
  // Classe para o relacionamento Compra
  class Compra {
    constructor(id, data, quantidade, usuario, produto) {
      this.id = id;
      this.data = data;
      this.quantidade = quantidade;
      this.usuario = usuario; // Associação com a entidade Usuario
      this.produto = produto; // Associação com a entidade Produto
    }



  }
  
  let user1 = new Usuario(1, "david", "david.lima")