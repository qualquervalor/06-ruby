class Cookbook
	attr_reader :recipes

# def ceateCookbook
# 	self = Cookbook.new
# end
	def initialize()
		@recipes = []
	end
	
	def add_recipe(recipe)
		@recipes << recipe
		recipe
	end

	def list_recipe
		count = 1
		@recipes.each do |x|
			puts "#{count}. #{x}"
			count +=1
		end
 return self

	end


end

class Recipe
	# attr_accessor :title, :ingredients, :steps

	@@recipe_count = 0

	def self.recipe_count
		@@recipe_count
	end
	Recipe.recipe_count


	def initialize(title,ingredients,steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end

	def list_steps
		count = 1
		@steps.each do |x|
			puts "#{count}. #{x}"
			count +=1
		end
	end

	def list_ingredients
		count = 1
		@ingredients.each do |x|
			puts "#{count}. #{x}"
			count +=1
		end
	end

	def to_s
		"Title is #{title}, it has #{ingredients.length} ingredients and #{@steps.length} steps."
	end
end

val = Cookbook.new
rec = Recipe.new("cookie", ["flour", "eggs"], ["pour flour"])
rec2 = val.add_recipe(Recipe.new("food",["food"],[]))
val.add_recipe(rec)
val .list_recipe.add_recipe(Recipe.new("food3",["food3"],[]))
rec2.list_ingredients
rec2.list_steps
val.list_recipe
val.ceateCookbook
puts "------"
val.list_recipe