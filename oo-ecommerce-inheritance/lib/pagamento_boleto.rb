class PagamentoBoleto < Pagamento
  attr_accessor :produto, :quantidade

  def initialize(quantidade:, produto:)
    super(quantidade: quantidade, produto: produto)
    @quantidade = quantidade
    @produto = produto
  end

end
