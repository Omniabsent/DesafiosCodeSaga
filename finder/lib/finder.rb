class Finder
  def index_of(list, value)
    count = 0
    array = []
    list.each do |letra,index|
      if letra.include? value
        array << count
      end
      count += 1
    end
    return array
  end
end
