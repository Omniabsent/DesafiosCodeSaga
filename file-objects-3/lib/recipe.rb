require 'json'

class Recipe
  attr_reader :title, :description, :ingredients, :cook_time, :featured

  def initialize(title:, description:, ingredients:, cook_time:, featured: false)
    @title = title
    @description = description
    @ingredients = ingredients
    @cook_time = cook_time
    @featured = featured
  end

  def self.from_json(json_file)
    attributes = JSON.parse(File.read(json_file))
    if attributes.to_s.include? "}, {"
      array = []
      attributes.each do |prato|
        array << Recipe.new(title: prato['title'], description: prato['description'], ingredients: prato['ingredients'], cook_time: prato['cook_time'], featured: prato['featured'])
      end
      array
    else
      Recipe.new(title: attributes['title'], description: attributes['description'], ingredients: attributes['ingredients'], cook_time: attributes['cook_time'], featured: attributes['featured'])
    end
  end

  def save_to_file
    File.open('data/recipe.json', 'w+') do |f|
      f.print to_json
    end
  end
end
