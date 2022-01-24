class Ribosome

  def translate(rna_messenger)
    array = rna_messenger.split("")
    i=0
    trio = []
    resultado = []
    while i<array.length do
      trio << array[i] << array[i+1] << array[i+2]
      if trio.join == "AGU" then
        resultado << "aa1-"
      elsif trio.join == "UUG" then
        resultado << "aa2-"
      elsif trio.join == "AAA" then
        resultado << "aa3-"
      elsif trio.join == "UUU" then
        resultado << "aa4-"
      elsif trio.join == "UAG" then
        resultado << "aa5-"
      elsif trio.join == "GGU" then
        resultado << "aa6-"
      elsif trio.join == "CCA" then
        resultado << "aa7-"
      elsif trio.join == "CGG" then
        resultado << "aa8-"
      else
        resultado = "Translation aborted"
        break
      end
      trio = []
      i+=3
    end
    if resultado == "Translation aborted"
      resultado
    else
      resultado.join.chomp("-")
    end
  end
end
