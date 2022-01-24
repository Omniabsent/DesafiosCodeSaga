class DoubleStrand
  def complementary_strip(strip)
    base = strip.split("").map { |letra| swap(letra)}.join
  end

  def swap(letra)
    if letra == "A" then
      "T"
    elsif letra == "T" then
      "A"
    elsif letra == "G" then
      "C"
    elsif letra == "C" then
      "G"
    end
  end
end
