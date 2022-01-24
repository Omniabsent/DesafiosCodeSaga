class WindowCleaner
  def clean(levels, windows_per_level, coordinates)
    coordenadas = coordinates.split("\n")
    count=0
    coordenadas.each do |c|
      abaixo = 0
      pra_esquerda = 0
      andar = levels
      fileira = windows_per_level
      divisoes = c.split("")
      divisoes.each do |d|
        if d == "B" then
          andar = andar/2
        end
        if d == "T" then
          andar = andar/2
          abaixo = abaixo + andar
        end
        if d == "E" then
          fileira = fileira/2
        end
        if d == "D" then
          fileira = fileira/2
          pra_esquerda = pra_esquerda + fileira
        end
      end
      andar_lavado = andar+abaixo-1
      janela_lavada = fileira+pra_esquerda-1
      if ((andar_lavado+janela_lavada)%2) == 0 then
        count+=1
      end
    end
    count
  end
end
