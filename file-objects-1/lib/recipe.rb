class Recipe
  attr_accessor  :title, :description, :ingredients, :cook_time, :featured
  def initialize(title:, description:, ingredients:, cook_time:, featured:)
    @title = title
    @description = description
    @ingredients = ingredients
    @cook_time = cook_time
    @featured = featured
  end

  def self.from_json(recipe)
    source = open(recipe)
    file_data = source.read.to_s
    parsed = JSON.parse(file_data)
    self.new(title: parsed["title"], description: parsed["description"], ingredients: parsed["ingredients"], cook_time: parsed["cook_time"], featured: parsed["featured"])
  end
end
