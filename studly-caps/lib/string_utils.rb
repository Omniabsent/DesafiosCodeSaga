class StringUtils
  def wavefy(string)
    resultado = ''
    array = string.split(//)
    array.each_with_index do |letra, index|
      if index.even? then
        resultado << (letra).downcase
      else
        resultado << (letra).upcase
      end
    end
    resultado
  end
end
