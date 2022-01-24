class ElementSwap
  def switch(letters, instructions)
    caractere = []
    array = instructions.split("\n")
    array.each do |instrucao|
      caractere = instrucao.split("")
      i = caractere[0].to_i
      j = caractere[3].to_i
      temp_letter = letters[i]
      letters[i] = letters[j]
      letters[j] = temp_letter
    end
    letters
  end
end
