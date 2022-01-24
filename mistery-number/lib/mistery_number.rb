class MisteryNumber
  def calculate(operation)
    string_limpa = operation.gsub(/\?/, "x")
    array = string_limpa.split("=")
    x = 0
    while x < 9999999999 do
      esquerda = eval array[0]
      direita = array[1]
      if esquerda.to_i == direita.to_i then
        break
      end
      x+=1
    end
    x
  end
end
