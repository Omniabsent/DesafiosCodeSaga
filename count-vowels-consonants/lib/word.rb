class Word
  def vowels_count(phrase)
    frase = I18n.transliterate(phrase).downcase()
    frase.count('a'+'e'+'i'+'o'+'u'+'y')
  end


  def consonants_count(phrase)
    consoantes=phrase.length()-vowels_count(phrase)-phrase.count(' '+'.'+',')
  end
end
