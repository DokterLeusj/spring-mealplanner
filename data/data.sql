INSERT INTO mealplanner_api.food_category (allergen, name) VALUES
                                                               (0, 'Vegetables'),
                                                               (1, 'Nuts'),
                                                               (0, 'Grains'),
                                                               (1, 'Dairy'),
                                                               (0, 'Chicken'),
                                                               (0, 'Animal Product'),
                                                               (1, 'Gluten'),
                                                               (0, 'Spices'),
                                                               (0, 'Meat'),
                                                               (0,'Cheese');
INSERT INTO mealplanner_api.dietary_need (name) VALUES
                                                    ('Vegetarian'),
                                                    ('Gluten Free'),
                                                    ('Dairy Free');
INSERT INTO mealplanner_api.dietary_need_excluded_category (dietary_need_id, excl_food_category_id)
VALUES
    (1, 5),  -- Vegetarian excludes Chicken
    (1, 6),  -- Vegetarian excludes Animal Product
    (2, 7),  -- GlutenFree excludes Gluten
    (3, 4),  -- DairyFree excludes Dairy
    (3, 10); -- DairyFree excludes Cheese
