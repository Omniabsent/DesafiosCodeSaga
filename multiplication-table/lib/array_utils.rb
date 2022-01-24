class ArrayUtils
  def self.multiplos(qtd, multiplo)
    multiplos = []
    for i in 1..qtd do
      multiplos << i*multiplo
    end
    multiplos
  end

  def self.tabuada(multiplo)
    array = []
    matriz = []
    for i in 1..multiplo do
      for j in 1..10 do
        array << i*j
      end
      matriz << array
      array = []
    end
    matriz
  end
end
