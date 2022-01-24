class Connect4
  def play(actions)
    matriz = []
    coluna1 = []
    coluna2 = []
    coluna3 = []
    coluna4 = []
    coluna5 = []
    coluna6 = []
    coluna7 = []
    coluna8 = []
    rodada = 0
    resultado = ""

    matriz << coluna1 << coluna2 << coluna3 << coluna4 << coluna5 << coluna6 << coluna7 << coluna8  #mindblowed que montar a matriz antes de preencher os vetores tenha funcionado
    jogada = actions.split("\n")
    jogada.each do |elementos|
      elemento = elementos.split("->")
      if elemento[1] == "1" then
        coluna1 << elemento[0]
      elsif elemento[1] == "2" then
        coluna2 << elemento[0]
      elsif elemento[1] == "3" then
        coluna3 << elemento[0]
      elsif elemento[1] == "4" then
        coluna4 << elemento[0]
      elsif elemento[1] == "5" then
        coluna5 << elemento[0]
      elsif elemento[1] == "6" then
        coluna6 << elemento[0]
      elsif elemento[1] == "7" then
        coluna7 << elemento[0]
      elsif elemento[1] == "8" then
        coluna8 << elemento[0]
      end
      rodada+=1

      if matriz[elemento[1].to_i-1].join.include?("XXXX") or matriz[elemento[1].to_i-1].join.include?("OOOO") and resultado == "" then
        resultado << "Venceu " << elemento[0] << " na rodada " << rodada.to_s << ", na coluna " << elemento[1]
      else
        i=0
        while i<=7 do
          linha = coluna1[i], coluna2[i], coluna3[i], coluna4[i], coluna5[i], coluna6[i], coluna7[i], coluna8[i]
          if (linha.join.include?("XXXX") or linha.join.include?("OOOO")) and resultado == "" then
            resultado << "Venceu " << elemento[0] << " na rodada " << rodada.to_s << ", na linha " << (8-i).to_s
            break
          end
          i+=1
        end
      end

    end
    resultado
  end
end
