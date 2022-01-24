class Produto
  attr_accessor :nome, :categoria, :preco, :estoque, :produto
  def initialize(nome: 'Geral', categoria: 'Geral', preco: 'Geral', estoque: 'Geral')
    @nome = nome
    @categoria = categoria
    @preco = preco
    @estoque = estoque
    @produto = produto
  end
end
