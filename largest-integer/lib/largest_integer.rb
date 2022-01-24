class LargestInteger
  def find(array)
    sorted = []
    result = []
    combinado1 = ""
    combinado1 = ""
    array.each do |a|
      sorted = a.sort_by { |str| str.to_s }
      sorted = sorted.reverse()
      for i in 0..sorted.length-1 do
        combinado1 = sorted[i], sorted[i+1]
        combinado2 = sorted[i+1], sorted[i]
        if combinado1.join > combinado2.join
        else
          temp = sorted[i]
          sorted[i] = sorted[i+1]
          sorted[i+1] = temp
        end
      end
      result << sorted.join.to_i
    end
    result
  end
end
