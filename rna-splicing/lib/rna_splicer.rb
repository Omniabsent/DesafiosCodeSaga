class RnaSplicer
  def splice(rna, introns)
    pronto = ""
    strig_manipulada = rna
    introns.each do |intron|
      spliced = strig_manipulada.split(intron)
      pronto = spliced.join
      strig_manipulada = pronto
    end
    pronto
  end
end
