class FileParser

  def to_binary_file (string)
    decimais = string.split(";")
    binario = []
    string_binario = ""
    decimais.each do |decimal|
      decimal = decimal.to_i
      while decimal>0 do
        binario.insert(0,decimal%2)
        decimal=decimal/2
      end
      string_binario = string_binario + "\n" + binario.join
      binario = []
    end
    File.write('data/data.txt', string_binario)
  end

end
