class RockPaperScissors
  def play(actions)
    rodada = actions.split("\n")
    empate=0
    jogadorA=0
    jogadorB=0
    resultado=""
    rodada.each do |turno|
      jogada = turno.split(" vs ")
      if jogada[0] == jogada[1] then
        empate+=1
      elsif (jogada[0] == "pedra" and jogada[1] == "tesoura") || (jogada[0] == "tesoura" and jogada[1] == "papel") || (jogada[0] == "papel" and jogada[1] == "pedra") then
        jogadorA+=1
      else
        jogadorB+=1
      end
    end

    if empate > 0 then
      resultado << "Empates: " + empate.to_s
    end
    if jogadorA > 0 then
      if empate > 0 then
        resultado << " | "
      end
      resultado << "Jogador A: " + jogadorA.to_s
    end
    if jogadorB > 0 then
      if jogadorA > 0 or empate > 0 then
        resultado << " | "
      end
      resultado << "Jogador B: " + jogadorB.to_s
    end
    resultado
  end
end
