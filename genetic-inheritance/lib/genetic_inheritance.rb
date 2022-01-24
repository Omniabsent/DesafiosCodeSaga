class GeneticInheritance
  def predict_proportions(first_individual, second_individual)
    letras1 = first_individual.split("")
    letras2 = second_individual.split("")
    misturas = []
    resposta = []
    respostas = []
    i = 0
    misturas << letras1[0] + letras2[0]
    misturas << letras1[0] + letras2[1]
    if letras2[0] == letras2[0].upcase then
      misturas << letras2[0] + letras1[1]
    else
      misturas << letras1[1] + letras2[0]
    end
    if letras2[1] == letras2[1].upcase then
      misturas << letras2[1] + letras1[1]
    else
      misturas << letras1[1] + letras2[1]
    end
    while i<misturas.length do
      resposta << misturas[i]
      resposta << (((misturas.tally[misturas[i]]).to_f)/4)
      if !respostas.include?(resposta)
        respostas << resposta
      end
      resposta = []
      i+=1
    end
    respostas
  end
end
