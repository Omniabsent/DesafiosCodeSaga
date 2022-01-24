class BinaryCounter
  def read(values_sequence)
    resultado = ""
    resultado_total = []
    blocos = values_sequence.split("-")
    blocos.each do |b|
      binary = b.to_i.to_s(2).split("")
      ultimo = binary[-1]
      count = 0
      maior_count = 0
      binary.each do |bit|
        if bit == ultimo then
          count+=1
        else
          count=0
        end
        if count > maior_count then
          maior_count=count
        end
      end
      resultado = maior_count
      resultado_total << resultado
    end
    resultado_total.join
  end
end
