class Chars
  def unique_quantity(text)
    array = text.split(" ")
    meta_array = []
    array.each do |sequence|
      meta_array << sequence.split("")
    end
    count = 0
    meta_array.each do |sequence|
      sequence.tally.each do
        count +=1
      end
    end
   count
  end
end
