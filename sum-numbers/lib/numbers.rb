class Numbers
  def sum_text(numbers_text)
    array = numbers_text.split("\n")
    soma = 0
    array.each do |numero|
      soma = soma + numero.to_i
    end
    soma
  end
end
