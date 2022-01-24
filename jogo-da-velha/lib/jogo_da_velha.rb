class JogoDaVelha
  def play(actions)
    elemento = []
    $linha0 = []
    $linha1 = []
    $linha2 = []
    $winsX = 0
    $winsO = 0
    jogadas = actions.split("\n")
    jogadas.each do |jogada|
      elemento = jogada.split("")
      if elemento[5] == "0" then
        $linha0[elemento[3].to_i] = elemento[0]
      elsif elemento[5] == "1" then
        $linha1[elemento[3].to_i] = elemento[0]
      else
        $linha2[elemento[3].to_i] = elemento[0]
      end
      verificador($linha0[0], $linha0[1], $linha0[2])
      verificador($linha1[0], $linha1[1], $linha1[2])
      verificador($linha2[0], $linha2[1], $linha2[2])
      verificador($linha0[0], $linha1[0], $linha2[0])
      verificador($linha0[1], $linha1[1], $linha2[1])
      verificador($linha0[2], $linha1[2], $linha2[2])
      verificador($linha0[0], $linha1[1], $linha2[2])
      verificador($linha0[2], $linha1[1], $linha2[0])
    end
    if $winsO < $winsX then
      "X venceu com " + $winsX.to_s + " vitórias"
    elsif $winsO > $winsX then
      "O venceu com " + $winsO.to_s + " vitórias"
    else
      "Empate"
    end
  end

  def verificador(valor1, valor2, valor3)
    bloco = []
    bloco << valor1 << valor2 << valor3
    if bloco.join == "XXX" then
      $winsX +=1
      $linha0 = []
      $linha1 = []
      $linha2 = []
    elsif bloco.join == "OOO"
      $winsO +=1
      $linha0 = []
      $linha1 = []
      $linha2 = []
    end
  end
end
