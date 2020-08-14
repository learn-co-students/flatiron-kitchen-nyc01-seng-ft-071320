# Trisha Yearwood's Blueberry Pancakes Recipe
# http://www.foodnetwork.com/recipes/trisha-yearwood/blueberry-pancakes-recipe.html

blueberry_pancakes = Recipe.new(name: 'Blueberry Pancakes')
blueberry_pancakes_ingredients = ['All-purpose flour', 'Sugar', 'Baking powder', 'Baking soda', 'Salt', 'Large eggs', 'Milk', 'Sour cream', 'Butter', 'Vanilla extract', 'Blueberries', 'Lemon zest']
blueberry_pancakes_ingredients.each{|i| blueberry_pancakes.ingredients.build(name: i)}
blueberry_pancakes.save

# Jake the Dog's Bacon Pancakes Recipe
# https://www.youtube.com/watch?v=1eO5U_uN7DQ

bacon_pancakes = Recipe.new(name: 'Bacon Pancakes')
bacon_pancakes_ingredients = ['Some bacon', 'Pancake']
bacon_pancakes_ingredients.each{|i| bacon_pancakes.ingredients.build(name: i)}
bacon_pancakes.save

# Ingredient.new(name: 'All-purpose flour')
# Ingredient.new(name: 'Sugar')
# Ingredient.new(name: 'Baking powder')
# Ingredient.new(name: 'Baking soda')
# Ingredient.new(name: 'Salt')
# Ingredient.new(name: 'Large Eggs')
# Ingredient.new(name: 'Milk')
# Ingredient.new(name: 'Sour cream')
# Ingredient.new(name: 'Butter')
# Ingredient.new(name: 'Vanilla extract')
# Ingredient.new(name: 'Blueberries')
# Ingredient.new(name: 'Lemon zest')
# Ingredient.new(name: 'Some bacon')
# Ingredient.new(name: 'Pancake')

# RecipeIngredient.new(recipe_id: Recipe.id.first, ingredient_id: Ingredient.all.sample.id)
# RecipeIngredient.new(recipe_id: Recipe.id.first, ingredient_id: Ingredient.all.sample.id)
# RecipeIngredient.new(recipe_id: Recipe.id.first, ingredient_id: Ingredient.all.sample.id)
# RecipeIngredient.new(recipe_id: Recipe.id.first, ingredient_id: Ingredient.all.sample.id)
# RecipeIngredient.new(recipe_id: Recipe.id.first, ingredient_id: Ingredient.all.sample.id)
# RecipeIngredient.new(recipe_id: Recipe.id.first, ingredient_id: Ingredient.all.sample.id)
# RecipeIngredient.new(recipe_id: Recipe.id.first, ingredient_id: Ingredient.all.sample.id)
# RecipeIngredient.new(recipe_id: Recipe.id.second, ingredient_id: Ingredient.all.sample.id)
# RecipeIngredient.new(recipe_id: Recipe.id.second, ingredient_id: Ingredient.all.sample.id)

# Recipe.all.count
# Ingredient.all.count