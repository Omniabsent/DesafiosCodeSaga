class RnaPolymerase
  def transcribe(dna, beginning, ending)
    if !dna.include?(beginning) || !dna.include?(ending) || beginning == "" || ending == "" then
      "Sequence not found"
    else
      trecho_sem_beginning = dna.split(beginning)
      trecho_sem_ending = trecho_sem_beginning[1].split(ending)
      trecho_dna = trecho_sem_ending[0].split("")
      trecho_rna = []
      trecho_dna.each do |letra|
        if letra == "C" then
          trecho_rna << "G"
        elsif letra == "T" then
          trecho_rna << "A"
        elsif letra == "A" then
          trecho_rna << "U"
        elsif letra == "G" then
          trecho_rna << "C"
        end
      end
      trecho_rna.join
    end
  end
end
