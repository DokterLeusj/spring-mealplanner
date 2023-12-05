# Ingredients
INSERT INTO mealplanner_api.food_category (id, allergen, name)
VALUES (1, 0, 'Vegetables'),
       (2, 1, 'Nuts'),
       (3, 0, 'Grains'),
       (4, 1, 'Dairy'),
       (5, 0, 'Meat'),
       (6, 0, 'Animal Product'),
       (7, 1, 'Gluten'),
       (8, 0, 'Spices'),
       (9, 0, 'Chicken'),
       (10, 0, 'Cheese');

INSERT INTO mealplanner_api.ingredient (id, name)
VALUES (1, 'Chicken breast'),
       (2, 'Quinoa'),
       (3, 'Tomato'),
       (4, 'Milk'),
       (5, 'Almonds'),
       (6, 'Beef'),
       (7, 'Garlic'),
       (8, 'Broccoli'),
       (9, 'Wheat'),
       (10, 'Cheese'),
       (11, 'Egg'),
       (12, 'Gluten'),
       (13, 'Cabbage');

INSERT INTO mealplanner_api.ingredient_category (ingredient_id, food_category_id)
VALUES (1, 9),   -- Chicken - Meat
       (1, 5),   -- Chicken - Animal Product
       (1, 6),   -- Chicken - Chicken
       (2, 3),   -- Quinoa - Grains
       (3, 1),   -- Tomato - Vegetables
       (4, 4),   -- Milk - Dairy
       (4, 6),   -- Milk - Animal Product
       (5, 2),   -- Almonds - Nuts
       (6, 9),   -- Beef - Meat
       (6, 6),   -- Beef - Animal Product
       (7, 8),   -- Garlic - Spices
       (7, 1),   -- Garlic - Vegetables
       (8, 1),   -- Broccoli - Vegetables
       (9, 3),   -- Wheat - Grains
       (10, 10), -- Cheese - Cheese
       (10, 4),  -- Cheese - Dairy
       (10, 6),  -- Cheese - Animal Product
       (11, 6),  -- Egg - Animal Product
       (12, 7),  -- Gluten - Gluten
       (13, 1); -- Cabbage - Vegetables

# Dietary needs
INSERT INTO mealplanner_api.dietary_need (id, name)
VALUES (1, 'Vegetarian'),
       (2, 'Gluten Free'),
       (3, 'Dairy Free');

INSERT INTO mealplanner_api.dietary_need_excluded_category (dietary_need_id, excl_food_category_id)
VALUES (1, 5), -- Vegetarian excludes Chicken
       (1, 9), -- Vegetarian excludes Chicken
       (2, 7), -- Gluten Free excludes Gluten
       (3, 4), -- Dairy Free excludes Dairy
       (3, 10); -- Dairy Free excludes Cheese


# Plans
INSERT INTO mealplanner_api.plan_preference (id, kcal_target, meals_per_day, servings_per_meal)
VALUES (1, 2000, 3, 2),
       (2, 2500, 4, 2),
       (3, 1800, 3, 1);

INSERT INTO mealplanner_api.plan_preference_per_diet (plan_preference_id, dietary_need_id)
VALUES (1, 1),  -- Vegetarian
       (2, 2),  -- Gluten Free
       (3, 3);  -- Dairy Free
# Recipes


INSERT INTO mealplanner_api.food_unit (id, name)
VALUES (1, 'grams'),
       (2, 'pieces'),
       (3, 'clove'),
       (4, 'l'),
       (5, 'tbs'),
       (6, 'empty');