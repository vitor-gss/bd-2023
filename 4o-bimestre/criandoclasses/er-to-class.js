// Classe para a entidade Endereço (1-1 com Pessoa)
class Endereco {
    constructor(logradouro, cidade) {
      this.logradouro = logradouro;
      this.cidade = cidade;
    }
  }
  
  // Classe para a entidade Telefone (1-N com Pessoa)
  class Telefone {
    constructor(numero) {
      this.numero = numero;
    }
  }
  
  // Classe para a entidade Pessoa
  class Pessoa {
    constructor(nome, endereco) {
      this.nome = nome;
      this.endereco = endereco; // Relação 1-1 com Endereço
      this.telefones = []; // Relação 1-N com Telefones
    }
  
    adicionarTelefone(telefone) {
      this.telefones.push(telefone);
    }
  }
  
  // Classe para a entidade Projeto (N-M com Pessoa)
  class Projeto {
    constructor(nome) {
      this.nome = nome;
      this.participantes = []; // Relação N-M com Pessoas
    }
  
    adicionarParticipante(pessoa) {
      this.participantes.push(pessoa);
    }
  }
  
  // Criando instâncias
  const enderecoJoao = new Endereco('123 Main St', 'Springfield');
  const telefoneJoao1 = new Telefone('555-1234');
  const telefoneJoao2 = new Telefone('555-5678');
  
  const enderecoMaria = new Endereco('456 Elm St', 'Springfield');
  const telefoneMaria = new Telefone('555-9876');
  
  const joao = new Pessoa('João', enderecoJoao);
  joao.adicionarTelefone(telefoneJoao1);
  joao.adicionarTelefone(telefoneJoao2);
  
  const maria = new Pessoa('Maria', enderecoMaria);
  maria.adicionarTelefone(telefoneMaria);
  
  const projetoA = new Projeto('Projeto A');
  const projetoB = new Projeto('Projeto B');
  
  projetoA.adicionarParticipante(joao);
  projetoA.adicionarParticipante(maria);
  
  projetoB.adicionarParticipante(joao);
  
  // Exemplo de uso
  console.log(`Nome: ${joao.nome}`);
  console.log(`Endereço: ${joao.endereco.logradouro}, ${joao.endereco.cidade}`);
  console.log(`Telefones: ${joao.telefones.map((tel) => tel.numero).join(', ')}`);
  console.log(`Participa dos projetos: ${joao.participantes.map((pessoa) => pessoa.nome).join(', ')}`);
  
  console.log(`\nNome: ${projetoA.nome}`);
  console.log(`Participantes: ${projetoA.participantes.map((pessoa) => pessoa.nome).join(', ')}`);
  