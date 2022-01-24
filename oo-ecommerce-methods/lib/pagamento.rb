class Pagamento
  attr_accessor :produto, :quantidade, :preco, :valor, :estoque

  def initialize(quantidade:, produto:, preco: 0, estoque: 0)
    @quantidade = quantidade
    @produto = produto
    @preco = produto.preco
  #  @produto = Produto.new
  #  @estoque = produto.estoque
  end

  def calcular_valor
    @valor = @quantidade * preco
    @estoque = produto.remove_estoque(quantidade)
  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem/100
  end
end
