class ArrayUtils
  def self.compara(lista1, lista2)
    lista1.tally == lista2.tally
  end

  def self.divisiveis(lista1, lista2)
    multiplos_ambos = []
    multiplos1 = []
    multiplos2 = []
    i=50
    while i>0 do
      if i%lista1==0 && i%lista2==0  then
        multiplos_ambos.insert(0, i)
      end
      if i%lista1==0 && i%lista2 != 0  then
        multiplos1.insert(0, i)
      end
      if i%lista1 != 0 && i%lista2==0  then
        multiplos2.insert(0, i)
      end
      i-=1
    end
    resultado = [multiplos_ambos, multiplos1, multiplos2]
  end

  def self.soma(lista1)
    lista1.sum
  end

  def self.combinar(lista1, lista2)
    resultado = []
    par = []
    lista1.each do |numero|
      lista2.each do |letra|
        par = [numero,letra]
        resultado << par
        par = []
      end
    end
    resultado
  end
end
