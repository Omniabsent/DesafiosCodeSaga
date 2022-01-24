class Arrays
  def self.converte_impares_por(lista, numero)
    filtrado = []
    multiplicado = []
    lista.each do |number|
      if number.odd?
        filtrado << number
        multiplicado << number*numero
      end
    end
    return filtrado, multiplicado
  end

  def self.converte_pares_por(lista, numero)
    filtrado = []
    multiplicado = []
    lista.each do |number|
      if number.even?
        filtrado << number
        multiplicado << number*numero
      end
    end
    return filtrado, multiplicado
  end
end
