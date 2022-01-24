class MutationCounter
  def calculate(dna_collection)
    i=0
    contagem=0
    maior_contagem=0
    dna_collection.each do |par|
      par.each do |sequence|
        while i<=sequence.length do
          if par[0][i] != par[1][i] then
            contagem+=1
          end
          i+=1
        end
        i=0
        if contagem > maior_contagem then
          maior_contagem = contagem
        end
        contagem=0
      end
    end
    maior_contagem
  end
end
