class FileParser
  def to_integer(numero)
    numero.to_i(2)
  end

  def convert (arquivo)
    file = open(arquivo)
    file_data = file.read.split("\n")
    soma = 0
    file_data.each do |numero|
      soma += to_integer(numero)
    end
    soma
  end
end
