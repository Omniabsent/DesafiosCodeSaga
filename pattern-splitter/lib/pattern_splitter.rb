class PatternSplitter
  def split_pattern(string)
    letra1 = ""
    letra2 = ""
    letra3ou4 = ""
    resultado = []
    coord = []
    letras = string.split("")
    letras.each do |letra|
      if letra1 == "" or letra1 == letra then
        letra1 = letra
      elsif letra2 == "" or letra2 == letra then
        letra2 = letra
      else
        letra3ou4 = letra
      end
      if (letra == letra1 or letra == letra2) and letra3ou4 != "" then
        resultado << coord.join
        coord = []
        letra3ou4 = ""
      end
      if letra.equal?(letras.last) then
        coord << letra
        resultado << coord.join
        coord = []
        letra3ou4 = ""
      end
      coord << letra
    end
    resultado
  end
end
