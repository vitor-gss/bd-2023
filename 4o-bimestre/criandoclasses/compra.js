// Classe para a entidade Usuario
class Usuario {
    constructor(id, nome, email) {
      this.id = id;
      this.nome = nome;
      this.email = email;
    }
  }
  
  // Classe para a entidade Produto
  class Produto {
    constructor(id, nome, preco) {
      this.id = id;
      this.nome = nome;
      this.preco = preco;
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
  