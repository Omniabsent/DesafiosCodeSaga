class Substring
  def find(string, target)
    targets = target.split("")
    achou = 0
    i=0
    j=target.length-1
    k=target.length
    while k < string.length do
      while j < string.length do
        targets.each do |letra|
          if string[i..j].include?(letra) then
            if letra == target[-1] then
              return string[i..j]
            end
          else
            break
          end
        end
        i+=1
        j+=1
      end
      i=0
      j=k
      k+=1
    end
  end
end
