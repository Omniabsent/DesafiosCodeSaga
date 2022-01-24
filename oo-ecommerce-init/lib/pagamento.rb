class Pagamento
  attr_accessor :quantidade, :produto, :preco, :valor
  def initialize(quantidade:, produto: 'Sem nome', preco:)
    @quantidade = quantidade
    @produto = produto
    @preco = preco
    @valor = valor
  end

  def calcular_valor()
    @valor = quantidade * preco
  end

  def aplicar_desconto(desconto)
    @valor = valor - desconto
  end
end
