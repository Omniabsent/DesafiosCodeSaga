class Arrays
  def self.multiplica_antecessor_predecessor(array)
    array_atualizado = []
    array_atualizado << array[0]*array[1]
    for i in 1..(array.length-2) do
      array_atualizado << array[i-1]*array[i+1]
    end
    array_atualizado << array[-2]*array[-1]
    array_atualizado
  end
end
