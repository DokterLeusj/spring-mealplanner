# Ingredients
SET FOREIGN_KEY_CHECKS = 0;
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
       (10, 0, 'Cheese'),
       (11, 0, 'Oil and other fats'),
       (12, 0, 'Fruit'),
       (13, 0, 'Vegetarian protein'),
       (14, 0, 'Seafood'),
       (15, 1, 'Soy'),
       (16, 0, 'Eggs'),
       (17, 1, 'Peanuts'),
       (18, 0, 'Lentils'),
       (19, 0, 'Avocado'),
       (20, 1, 'Shellfish');

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
       (11, 'Cabbage'),
       (12, 'Ground beef'),
       (13, 'Onion'),
       (14, 'Tomato paste'),
       (15, 'Canned tomatoes'),
       (16, 'Oregano'),
       (17, 'Basil'),
       (18, 'Salt'),
       (19, 'Pepper'),
       (20, 'Spaghetti noodles'),
       (21, 'Parmesan cheese'),
       (22, 'Tofu'),
       (23, 'Bell peppers'),
       (24, 'Carrots'),
       (25, 'Snap peas'),
       (26, 'Soy sauce'),
       (27, 'Ginger'),
       (28, 'Sesame oil'),
       (29, 'Rice'),
       (30, 'Flour'),
       (31, 'Bread crumbs'),
       (32, 'Olive oil'),
       (33, 'Marinara sauce'),
       (34, 'Mozzarella cheese'),
       (35, 'Balsamic glaze'),
       (36, 'All-purpose flour'),
       (37, 'Cocoa powder'),
       (38, 'Baking powder'),
       (39, 'Sugar'),
       (40, 'Vegetable oil'),
       (41, 'Vanilla extract'),
       (42, 'Hot water'),
       (43, 'Salmon fillets'),
       (44, 'Lemon'),
       (45, 'Dill'),
       (46, 'Arborio rice'),
       (47, 'Mushrooms'),
       (48, 'Vegetable or chicken broth'),
       (49, 'Butter'),
       (50, 'Greek Salad:'),
       (51, 'Cucumber'),
       (52, 'Red onion'),
       (53, 'Kalamata olives'),
       (54, 'Feta cheese'),
       (55, 'Red wine vinegar'),
       (56, 'Ladyfingers'),
       (57, 'Strong brewed coffee'),
       (58, 'Mascarpone cheese'),
       (59, 'Taco seasoning'),
       (60, 'Taco shells'),
       (61, 'Lettuce'),
       (62, 'Mixed salad greens'),
       (63, 'Cherry tomatoes'),
       (64, 'Balsamic vinaigrette dressing'),
       (65, 'Black beans'),
       (66, 'Corn'),
       (67, 'Cumin'),
       (68, 'Chili powder'),
       (69, 'Almond milk'),
       (70, 'Banana'),
       (71, 'Almond butter'),
       (72, 'Honey'),
       (73, 'Beef sirloin'),
       (74, 'Brown sugar'),
       (75, 'Cornstarch'),
       (76, 'Pizza dough'),
       (77, 'Fresh parsley'),
       (78, 'Wheat berries'),
       (79, 'Dijon mustard'),
       (80, 'Cheddar cheese'),
       (81, 'Green onions'),
       (82, 'Cabbage leaves'),
       (83, 'Thyme'),
       (84, 'Shrimp'),
       (85, 'Edamame'),
       (86, 'Eggplant'),
       (87, 'Lentils'),
       (88, 'Avocado'),
       (89, 'Crab'),
       (90, 'Peanut Butter'),
       (91, 'Coriander'),
       (92, 'Pumpkin Seeds'),
       (93, 'Linguine pasta'),
       (94, 'Red pepper flakes'),
       (95, 'Chickpeas'),
       (96, 'Rice noodles'),
       (97, 'Cajun seasoning'),
       (98, 'Sausages'),
       (99, 'Paprika'),
       (100, 'Bean sprouts'),
       (101, 'Peanuts'),
       (102, 'Tamarind paste'),
       (103, 'Sriracha'),
       (104, 'Bay leaves'),
       (105, 'berries'),
       (106, 'oyster sauce'),
       (107, 'eggs'),
       (108, 'croutons'),
       (109, 'Caesar dressing'),
       (110, 'Zucchini'),
       (111, 'lime'),
       (112, 'spinach'),
       (113, 'Teriyaki sauce'),
       (114, 'Penne pasta'),
       (115, 'Pesto sauce'),
       (116, 'Cauliflower'),
       (117, 'Coconut milk'),
       (118,'curry powder'),
       (119,'Turmeric'),
       (120,'Mango'),
       (121,'Jalapeño'),
       (122, 'Celery'),
       (123, 'Rosemary'),
       (124,'Butternut Squach'),
       (125,'white wine'),
       (126,'Sage'),
       (127,'Hummus'),
       (128,'Garam masala'),
       (129, 'garlic powder'),
       (130, 'Romaine lettuce'),
       (131, 'Black pepper'),
       (132, 'Lime juice'),
       (133,'Lemon juice');

INSERT INTO mealplanner_api.ingredient_per_category (ingredient_id, food_category_id)
VALUES (1, 5),    -- Chicken breast - Meat, Chicken, Animal Product
       (1, 9),
       (1, 6),
       (2, 3),    -- Quinoa - Grains, Vegetarian protein, Gluten
       (2, 13),
       (2, 7),
       (3, 1),    -- Tomato - Vegetables, Fruit
       (3, 12),
       (4, 4),    -- Milk - Dairy, Fruit
       (4, 6),
       (5, 2),    -- Almonds - Nuts, Fruit
       (5, 12),
       (6, 5),    -- Beef - Meat, Animal Product
       (6, 6),
       (7, 8),    -- Garlic - Spices, Vegetables
       (7, 1),
       (8, 1),    -- Broccoli - Vegetables, Vegetarian protein
       (8, 9),
       (9, 3),    -- Wheat - Grains, Gluten, Vegetarian protein
       (9, 7),
       (9, 8),
       (10, 4),   -- Cheese - Dairy, Animal Product
       (10, 6),
       (10, 10),
       (11, 1),   -- Cabbage - Vegetables
       (12, 5),   -- Ground beef - Meat, Animal Product
       (12, 6),
       (13, 1),   -- Onion - Vegetables
       (14, 1),   -- Tomato paste - Vegetables
       (15, 1),   -- Canned tomatoes - Vegetables
       (16, 8),   -- Oregano - Spices
       (17, 8),   -- Basil - Spices
       (18, 8),   -- Salt - Spices
       (19, 8),   -- Pepper - Spices
       (20, 3),   -- Spaghetti noodles - Grains, Gluten
       (20, 7),
       (21, 4),   -- Parmesan cheese - Dairy, Animal Product
       (21, 6),
       (21, 10),
       (22, 13),  -- Tofu - Vegetarian protein, Grains
       (22, 3),
       (23, 1),   -- Bell peppers - Vegetables
       (24, 1),   -- Carrots - Vegetables
       (25, 1),   -- Snap peas - Vegetables
       (26, 8),   -- Soy sauce - Spices
       (27, 8),   -- Ginger - Spices
       (28, 11),  -- Sesame oil - Oil and other fats, Spices
       (28, 8),
       (29, 3),   -- Rice - Grains
       (30, 3),   -- Flour - Grains, Gluten
       (30, 7),
       (31, 3),   -- Bread crumbs - Grains
       (32, 11),  -- Olive oil - Oil and other fats, Spices
       (32, 8),
       (33, 8),   -- Marinara sauce - Spices
       (34, 4),   -- Mozzarella cheese - Dairy, Animal Product
       (34, 6),
       (34, 10),
       (35, 8),   -- Balsamic glaze - Spices
       (36, 3),   -- All-purpose flour - Grains, Gluten
       (36, 7),
       (37, 8),   -- Cocoa powder - Spices
       (38, 8),   -- Baking powder - Spices
       (39, 8),   -- Sugar - Spices
       (40, 11),  -- Vegetable oil - Oil and other fats, Spices
       (40, 8),
       (41, 8),   -- Vanilla extract - Spices
       -- Hot water - Spices
       (43, 6),   -- Salmon fillets - Fish, Animal Product, seafood
       (43, 5),
       (43, 14),
       (44, 1),   -- Lemon - Vegetables, Spices
       (44, 8),
       (45, 8),   -- Dill - Spices
       (46, 3),   -- Arborio rice - Grains, Vegetarian protein
       (46, 7),
       (47, 1),   -- Mushrooms - Vegetables
       (48, 8),   -- Vegetable or chicken broth - Spices
       (49, 4),   -- Butter - dairy
       (50, 5),   -- Greek Salad - Meat, Animal Product
       (50, 6),
       (51, 1),   -- Cucumber - Vegetables
       (52, 1),   -- Red onion - Vegetables
       (53, 1),   -- Kalamata olives - Vegetables
       (54, 4),   -- Feta cheese - Dairy, Animal Product
       (54, 6),
       (54, 10),
       (55, 1),   -- Red wine vinegar - Vegetables
       (56, 1),   -- Ladyfingers - Vegetables
       (57, 1),   -- Strong brewed coffee - Vegetables
       (58, 4),   -- Mascarpone cheese - Dairy, Animal Product
       (58, 6),
       (58, 10),
       (59, 8),   -- Taco seasoning -
       (60, 3),   -- Taco shells -
       (61, 1),   -- Lettuce - Vegetables
       (62, 1),   -- Mixed salad greens - Vegetables
       (63, 1),   -- Cherry tomatoes - Vegetables
       (64, 1),   -- Balsamic vinaigrette dressing - Vegetables
       (65, 1),   -- Black beans - vegetable
       (66, 8),   -- Corn - Spices
       (67, 8),   -- Cumin - Spices
       (68, 8),   -- Chili powder - Spices
       (69, 11),  -- Almond milk - Oil and other fats, Spices
       (69, 12),  -- Fruit
       (70, 12),  -- Banana - Fruit
       (70, 13),  -- Vegetarian protein
       (71, 2),   -- Almond butter - Nuts, Fruit
       (71, 12),  -- Oil and other fats
       (72, 6),   -- Honey -  Animal Product
       (73, 5),   -- Beef sirloin - Meat, Animal Product
       (73, 6),
       (74, 8),   -- Brown sugar - Spices
       (75, 11),  -- Cornstarch - Oil and other fats, Spices
       (75, 8),
       (76, 7),   -- Pizza dough - Gluten, Grains
       (76, 3),
       (77, 1),   -- Fresh parsley - Vegetables
       (78, 7),   -- Wheat berries - Gluten, Grains
       (78, 3),
       (79, 8),   -- Dijon mustard - Spices
       (80, 4),   -- Cheddar cheese - Dairy, Animal Product
       (80, 6),
       (80, 10),
       (81, 1),   -- Green onions - Vegetables
       (82, 1),   -- Cabbage leaves - Vegetables
       (83, 8),   -- Thyme - Spices
       (84, 14),  -- Shrimp - Seafood, Animal Product
       (84, 6),
       (85, 13),  -- Edamame - Vegetarian protein, Grains
       (85, 3),
       (86, 1),   -- Eggplant - Vegetables
       (87, 18),  -- Lentils - Vegetarian protein
       (87, 1),
       (88, 12),  -- Avocado - Fruit
       (89, 20),  -- Crab - Shellfish, seafood, animal
       (89, 14),
       (89, 6),
       (90, 2),   -- Peanut Butter - Nuts, Fruit
       (90, 12),
       (91, 8),   -- Coriander - Spices
       (92, 1),   -- Pumpkin Seeds - Nuts, Fruit
       (93, 3),   -- Linguine pasta - Grains, Gluten
       (93, 7),
       (94, 8),   -- Red pepper flakes - spices
       (95, 3),   -- Chickpeas - Grains, Vegetarian protein
       (95, 13),
       (97, 8),   -- Cajun seasoning;
       (98, 5),   -- Sausages
       (98, 6),
       (99, 8),   -- Paprika - spices
       (100, 1),  -- bean sprouts - vegetable
       (101, 17), -- Peanuts
       (102, 8),  -- Tamarind paste
       (103, 8),  -- Sriracha
       (104, 8),  -- Bay leaves
       (105, 12), -- Berries
       (106, 6),  -- oyster sauce - animal seafood
       (106, 14),
       (107, 16), -- eggs - egg - animal product
       (107, 6),
       (108, 7),
       (109, 11),
       (110, 1),
       (111, 12),
       (112, 1),
       (113, 7),
       (114, 3),
       (114, 7),
       (114, 16),
       (115, 11),
       (115, 2),
       (116, 1),
       (117, 12),
       (118,8),
       (119,8),
       (120,12),
       (121,8),
       (121,1),
       (122,1),
       (123,8),
       (124,1),
       (126,8),
       (127,1),
       (128,8),
       (129,8),
       (130,1),
       (131, 8),
       (132, 12),
       (133,12);

# Dietary needs
INSERT INTO mealplanner_api.dietary_need (id, name)
VALUES (1, 'Vegetarian'),
       (2, 'Gluten Free'),
       (3, 'Dairy Free'),
       (4, 'Vegan');


INSERT INTO mealplanner_api.dietary_need_excluded_category (dietary_need_id, excl_food_category_id)
VALUES (3, 4),
       (4, 4),
       (1, 5),
       (4, 5),
       (4, 6),
       (2, 7),
       (1, 9),
       (4, 9),
       (3, 10),
       (4, 10),
       (4, 14),
       (4, 16),
       (4, 20);

# Plans
INSERT INTO mealplanner_api.plan_preference (id, kcal_target, meals_per_day, servings_per_meal)
VALUES (1, 2000, 3, 2),
       (2, 2500, 4, 2),
       (3, 1800, 3, 1);

# User
INSERT INTO mealplanner_api.user (id, email, img_url, password, username, plan_preference_id)
VALUES (1, 'matteo.rossi@example.com', '', '$2y$10$J2Z62ZIkwZptBvK/4eAlSesjOjgy6DkeuhqQCB8ZtLeVoxVSFiP/m',
        'PastaLoverMatteo', 1),
       (2, 'lucas.hoffmann@example.com', '', '$2y$10$Y2E7enZg9i4iIL9QZ1Z66.JH/FZvB2rBaEEf7K4NB6ynB.5c8Y1jK',
        'BeerSnobLucas', 2),
       (3, 'isabel.garcia@example.com', '', '$2y$10$t3c5VrRBbwzMQgZlH8OldeeqS0Uo.B5iXGvFWsWpNMRyZGJrVhjAq',
        'TapasExplorerIsabel', 3),
       (4, 'leo.mueller@example.com', '', '$2y$10$Pbr.rr7xK/0aam5vKjx/BOM4VZEXOVVeP.mU/u6BubofcbahxJQXq',
        'ChocolateLoverLeo', 1),
       (5, 'sophie.leroy@example.com', '', '$2y$10$gNcF77IvEj3CvFsebL6UceDzLrET3RmmviPIi6yfG0rrJF9zJtWi6',
        'CroissantConnoisseurSophie', 2),
       (6, 'giovanni.ferrari@example.com', '', '$2y$10$Xy7hU21wFqXrNpCpIK5u9eApY4Pmm5miWVQj4O2x1GOD62r2wamzG',
        'EspressoLoverGiovanni', 3),
       (7, 'pierre.dupont@example.com', '', '$2y$10$Xn4kwtM34cyU0/q.HRUp6uWz6a9hWvRSZyZYXLR5dxpapBlYDHMFq',
        'FromageLoverPierre', 1),
       (8, 'marie.leclerc@example.com', '', '$2y$10$d3xP3dS4sTTmoFve7wI7r.3cW21tPZZR.GjVcWgj1TBJzVD.W6P0i',
        'BoulangerieMarie', 2),
       (9, 'hiroshi.tanaka@example.com', '', '$2y$10$zF5U7u/fY8Uz5lST9WAF0OmUjjl6OYk4s3gjGfg/vCShH8WAtBdGi',
        'SushiMasterHiroshi', 1),
       (10, 'mei.chen@example.com', '', '$2y$10$HRqSVEsEvSRsIy.VPOnW2OJ0f/wUmCpSTIjVsFYKP5dLhLtBNUhde', 'WokQueenMei',
        2),
       (11, 'raj.patil@example.com', '', '$2y$10$V8Eps1AeDfvb.LFmGLymoeTcmq9Q2H5Oz7NDWz4R9GvP3MuKWJUby',
        'CurryConnoisseurRaj', 3),
       (12, 'xia.li@example.com', '', '$2y$10$ycw9w77eziqZRMkE6If.hO2GrCvOxGp1gU5bNrGy5Qzft.KewSYoW', 'DumplingFanXia',
        1),
       (13, 'yuki.nakamura@example.com', '', '$2y$10$J9qrwY2Pw5UfHJeD/jghF.PzDoMEdNbnIeUcoQkNLShlN11HrIuJe',
        'RamenLoverYuki', 2),
       (14, 'giorgio.rossi@example.com', '', '$2y$10$rQ5QV/cGhR2W0cVht0W./uHYxxFhj31a/Dav0SK3B3sdVYsPxEq.6',
        'PastaMaestroGiorgio', 3),
       (15, 'hannah.schmidt@example.com', '', '$2y$10$H9z9/zxP4zFnW1PD8QJW1uqVODQPFuT5mm2O8Q7Q9WYVgmXpbcBbW',
        'SausageQueenHannah', 2),
       (16, 'antonio.moreno@example.com', '', '$2y$10$9X1jGCVx1IJgCZ6YlRDfa.G1L/mZ6ZnILQJUdS99R4gU2tayBslcW',
        'PizzaProAntonio', 3),
       (17, 'hanna.andersson@example.com', '', '$2y$10$opq/xAuYMaQJFZrtphw5DOytZjT3J0T/hBHzZ6.QR/bG2A4UD9d9m',
        'ScandinavianFeastHanna', 1),
       (18, 'andreas.schmidt@example.com', '', '$2y$10$H9z9/zxP4zFnW1PD8QJW1uqVODQPFuT5mm2O8Q7Q9WYVgmXpbcBbW',
        'SausageKingAndreas', 2),
       (19, 'nina.van-der-berg@example.com', '', '$2y$10$nLV5VucNcsx8yvDfr2HC0eLMHtDhWfzQZ0j3fK9TRSHVbnAQTUzOW',
        'DutchTreatNina', 3),
       (20, 'luca.moretti@example.com', '', '$2y$10$9X1jGCVx1IJgCZ6YlRDfa.G1L/mZ6ZnILQJUdS99R4gU2tayBslcW',
        'PizzaFanLuca', 1),
       (21, 'anna.jensen@example.com', '', '$2y$10$LxlNOFSq3JpUDL1s4/YYfeRRFAOS8XRTWZRH.p9ZMmGyYc1yqFfg.', 'HyggeAnna',
        2),
       (22, 'marco.conti@example.com', '', '$2y$10$RFoHqOTgj9mIwYjfgSTED.g5EOw4zOQa0ReY2KgUejmBzVHrsDtFm',
        'GelatoLoverMarco', 3),
       (23, 'alina.petrov@example.com', '', '$2y$10$G4DgV2yJ50pE/CfIGiJ35.N.9zIiowAWrXIMs9./T6W0.4HtjAhMe',
        'VodkaConnoisseurAlina', 1),
       (24, 'maxim.sokolov@example.com', '', '$2y$10$HlWdEN/jBzATyjS7blGwH.hX/8G5IR/aA.n/Iyx.kDIm/kcRGKoEu',
        'BorschtLoverMaxim', 2),
       (25, 'livia.silva@example.com', '', '$2y$10$9E4IsGyM76HJ3enxPOOb7udkd7dZPb5G.jfzL/kn4HlOfeC3/sMai',
        'PortugueseFlavorsLivia', 3),
       (26, 'maria.smith@example.com', '', '$2y$10$h15hReHPo/OZ0bKZdLUZU.FVU5c5k/2kjGrdtn7z6KQ2.nITDJF5C',
        'FoodieMaria', 2),
       (27, 'ali.khan@example.com', '', '$2y$10$9kbyA9cIlj8NldwGG5u3/.2m2/Ay1y9/wZHqisWUovXSzziCbkgxu',
        'SpiceMasterAli', 3),
       (28, 'emily.jones@example.com', '', '$2y$10$GsKEK7ZR9mtHcJXoV6VKbOMTj1Z3vXT67aOofTW.aYsLg6MT7zvmq',
        'BakingEnthusiast', 1),
       (29, 'javier.rodriguez@example.com', '', '$2y$10$aRzWV5KyH6sXIL/MK1BpQuy.0QVgWlHFEJGH9QAK2yLoowhF.BwXe',
        'GrillMasterJavier', 2),
       (30, 'lisa.nguyen@example.com', '', '$2y$10$mrOHMFE5JYQ1WsPFHJChV..Iy2zXYczMLrpsvYY3RFSr1q5sJ5fsG',
        'HealthyEaterLisa', 3),
       (31, 'adam.smith@example.com', '', '$2y$10$8RUp8g6TYszWdygyulxN2e9gGhT9jfcCQv54.JzK7e98QqFtQc7MK',
        'HomeChefAdam', 1),
       (32, 'sophia.martinez@example.com', '', '$2y$10$HZsmIqtIGnCVkW1LsL66k.DzCKJkMPQWex44UxS0WEv0EOWA4T4Pq',
        'FoodExplorerSophia', 2),
       (33, 'nathan.jones@example.com', '', '$2y$10$ymf2.LISLj7rquBq22z8XO33QFt9Y/OnVsnfIN8opORPFjS0aJZHe',
        'MasterTasterNathan', 3),
       (34, 'zara.lee@example.com', '', '$2y$10$1y82X2.JLP7Jp6WbGX7cYeMx5g3HbjT0HW2sYlPI9ynAZraLqazpK', 'ZestyZara', 1),
       (35, 'mohammed.ali@example.com', '', '$2y$10$ymW2lfTnUn8YFZT5b5Qp8O1hwL2lQtfUj9zX11xAMhB3d2BB1fEmy',
        'QuickCookMohammed', 2),
       (36, 'olivia.smith@example.com', '', '$2y$10$FkINMFcx9fmompsOM5Gn0OpV23Z3IlTZjK.33X24zccZU/Ff3w17q',
        'EpicureanOlivia', 3),
       (37, 'luke.jones@example.com', '', '$2y$10$pA/PHns1epGb8ybBdop/D.BpNY5sgE/bDjA4c3hTtAC6Ju9H15MJe', 'GourmetLuke',
        1),
       (38, 'mia.rodriguez@example.com', '', '$2y$10$Q86AqCzZdJX/lMoz8EaGbez9hd2R3B7rPUVo4E7CMogdYvi4xlUz6',
        'TasteExplorerMia', 2),
       (39, 'aiden.nguyen@example.com', '', '$2y$10$0K/w0I/kJdbm2VbA4gizPuxNCJUb6vBrpFdYi2YsHwW7VX1z.T1OS',
        'FlavorAdventurerAiden', 3),
       (40, 'ella.smith@example.com', '', '$2y$10$A4eYTr0G0NS8RpdONN2bfuAZCwlsf0DXWcn92rHQT8rI/2Yby4N1e', 'SensoryElla',
        1),
       (41, 'liam.martinez@example.com', '', '$2y$10$1a1p8cHkpSS1k4.5mjeAKujJ1q/Z1VDgNjxxCpEFWk98xjHek8gSK',
        'FlavorConnoisseurLiam', 2),
       (42, 'ava.jones@example.com', '', '$2y$10$tODU9t04ktX4iK0ZvXbRMeNL8mrnt4aOScjUs2nhqzYbj6Pllc.ZK', 'SeasonedAva',
        3),
       (43, 'logan.lee@example.com', '', '$2y$10$Hm8PDWPlzso6HN4ex5rtOeHfj.V7/XsIpQSSfOZGFirZ4g8yE2xg2', 'UmamiLogan',
        1),
       (44, 'emma.khan@example.com', '', '$2y$10$VJf2Bk4HADOFi9A24fEDBu5IUa7gyKuZ.xGufPSvZTCCivmL3eZGW',
        'FlavorfulEmma', 2),
       (45, 'kwesi.boateng@example.com', '', '$2y$10$ex0zXT2ZyutXj8CPs2l0p.M1j6DE.YAIKReS3awZcOnCf4MavfMve',
        'JollofKingKwesi', 1),
       (46, 'nneka.uzoma@example.com', '', '$2y$10$rCSaIgGQ2a/2WGfoLgsrM..lLP1Sc4aykvxC8JyQ86fXmjBnCbgF2',
        'AfroCuisineNneka', 2),
       (47, 'sizwe.ndlovu@example.com', '', '$2y$10$UjeqqqW8aIKd7zYF1g1M6./8B2kP2es27pxEMc6U52TZa.MRW8CfG',
        'BraaiMasterSizwe', 3),
       (48, 'akio.yamamoto@example.com', '', '$2y$10$Oqap9yBHKqtetMvzy8G3FOGjZGcvOT5LLv4dWiAHj8VRSpHvRTYkG',
        'TempuraLoverAkio', 1),
       (49, 'ji-eun.kim@example.com', '', '$2y$10$5JQJOeEHs.k8gUte6sDpfeTAvqitk8rmVXxcupAQ4GCl/GamAgG9C',
        'KimchiQueenJiEun', 2),
       (50, 'rajiv.patel@example.com', '', '$2y$10$ua.kBc57P1i0/sveDMepW.jwPrbZfGg5g3O1Ij6fJH03B5bplPYAe',
        'BiryaniMasterRajiv', 3),
       (51, 'owen.nguyen@example.com', '', '$2y$10$xEcBsWiZU/yKPiXDP45TZO98wV0SySsPZ7lUwFQdCQcAl4A34tIwe',
        'EpicureOwen', 3),
       (52, 'abigail.smith@example.com', '', '$2y$10$ylE3vJUz5NKvYbmtL1KXN.3RBJ29rDhjRGSN5hSYGwdHfzRPEryyy',
        'PalateExplorerAbigail', 1),
       (53, 'noah.rodriguez@example.com', '', '$2y$10$ZQeT4W/s7VTiU/qVHRZsGeORwLwKGiE1qT86kfPp5O0V5lglBlzBa',
        'GourmetNoah', 2),
       (54, 'kwame.boateng@example.com', '', '$2y$10$PGOzOvYkVEc.kt8qzqlb7uRWeRCbnWtm95LZKs8ljiI9oyWq9cUWq',
        'JollofKingKwame', 1),
       (55, 'aminata.toure@example.com', '', '$2y$10$51/F1vFEVDAkhS/Z3LofrOn.RXsjyq2lHPVfcIJPlpRPEd3k8sZDy',
        'AfroCuisineAminata', 2),
       (56, 'thabo.ndlovu@example.com', '', '$2y$10$buLc7SgRFZYNRQ19nUqLruZuJMg3C7XW28DP0Bl/mc3FEQi4Csp/W',
        'BraaiMasterThabo', 3),
       (57, 'fatima.kwame@example.com', '', '$2y$10$5BVL2jFugIVk6c53R1nCrOvum0zU0.GbNc50lO.QrM9CeZFr7nO3y',
        'SpicyFatima', 1),
       (58, 'simba.nkosi@example.com', '', '$2y$10$O5eXz17ubrrSylXTcM3Rsevbk4M.NOe6Yujauq2U8PioVeLrFvZZ2',
        'SafariExplorerSimba', 2),
       (59, 'someone@someone.com', '', '$2a$10$c/4CredT0C7DWe7/SyEJqOvRXGgIDvNah36kXswpkuMhSAGs7wBqu', 'someone', 3),
       (60, 'wantapples@eden.com', '', '$2a$10$c/4CredT0C7DWe7/SyEJqOvRXGgIDvNah36kXswpkuMhSAGs7wBqu',
        'viperwhispers666', 3);
;

INSERT INTO mealplanner_api.dietary_need_per_user (user_id, dietary_need_id)
VALUES (1, 1),
       (60, 3);


# Recipes
INSERT INTO mealplanner_api.food_unit (id, name)
VALUES (1, 'grams'),
       (2, 'pieces'),
       (3, 'clove'),
       (4, 'l'),
       (5, 'tbs'),
       (6, '');

INSERT INTO mealplanner_api.recipe (id, description, img_url, name, nutri_tech, author_id)
VALUES (1, 'Classic Italian pasta dish with savory Bolognese sauce.', 'https://i.imgur.com/D2k7lJE.jpg',
        'Spaghetti Bolognese', false, 1),
       (2, 'Colorful and nutritious stir-fry with a variety of vegetables.', 'https://i.imgur.com/qwRf9gn.jpg',
        'Vegetarian Stir-Fry', false, 2),
       (3, 'Crispy chicken cutlets topped with marinara sauce and melted cheese.', 'https://i.imgur.com/0Ge0Na5.jpg',
        'Chicken Parmesan', false, 1),
       (4, 'Refreshing salad featuring tomatoes, mozzarella, and basil.', 'https://i.imgur.com/LSUBvav.jpg',
        'Caprese Salad', false, 2),
       (5, 'Indulgent and moist chocolate cake for a sweet treat.', 'https://i.imgur.com/c3zSUTa.jpg', 'Chocolate Cake',
        true, 3),
       (6, 'Healthy and flavorful grilled salmon fillets.', 'https://i.imgur.com/R16Zr95.jpg', 'Grilled Salmon', false,
        6),
       (7, 'Creamy and comforting risotto with savory mushrooms.', 'https://i.imgur.com/72ODRtl.jpg',
        'Mushroom Risotto', false, 2),
       (8, 'Traditional Greek salad with fresh vegetables and feta cheese.', 'https://i.imgur.com/CzcjoTi.jpg',
        'Greek Salad', false, 8),
       (9, 'Classic Italian dessert with layers of coffee-soaked ladyfingers and mascarpone cream.',
        'https://i.imgur.com/OSzJP0e.jpg', 'Tiramisu',
        false, 9),
       (10, 'Savory beef tacos with a variety of toppings.', 'https://i.imgur.com/6LttCTS.jpg', 'Beef Tacos', false,
        10),
       (11, 'Light and nutritious salad with grilled chicken and fresh greens.', 'https://i.imgur.com/P2ExjnZ.jpg',
        'Grilled Chicken Salad', true,
        11),
       (12, 'Quinoa-filled bell peppers for a wholesome and tasty dish.', 'https://i.imgur.com/w4Mi6T1.jpg',
        'Quinoa Stuffed Peppers', false, 12),
       (13, 'Delicious pasta dish featuring tomatoes and basil.', 'https://i.imgur.com/RUptR3Y.jpg',
        'Tomato Basil Pasta', false, 13),
       (14, 'Smooth and nutritious almond milk smoothie.', 'https://i.imgur.com/lNDsQq0.jpg', 'Almond Milk Smoothie',
        true, 14),
       (15, 'Stir-fried beef and broccoli in a flavorful sauce.', 'https://i.imgur.com/ePgfil4.jpg',
        'Beef and Broccoli Stir-Fry', false, 15),
       (16, 'Garlic-infused breadsticks with Parmesan for a delightful side.', 'https://i.imgur.com/wPO2FS7.jpg',
        'Garlic Parmesan Breadsticks',
        false, 16),
       (17, 'Wholesome salad with wheat berries, vegetables, and dressing.', 'https://i.imgur.com/4nxePL7.jpg',
        'Wheat Berry Salad', false, 17),
       (18, 'Cheesy omelette with a variety of ingredients.', 'https://i.imgur.com/hJ27OOh.jpg', 'Cheese Omelette',
        false, 18),
       (19, 'Classic egg fried rice with a medley of flavors.', 'https://i.imgur.com/fWFJsuY.jpg', 'Egg Fried Rice',
        false, 19),
       (20, 'Stuffed cabbage leaves with a flavorful filling.', 'https://i.imgur.com/AZziFTw.jpg', 'Cabbage Rolls',
        false, 20),
       (21,
        'Tender lentils in coconut milk and tomato sauce with aromatic spices, delivering a satisfying, plant-based experience.',
        'https://i.imgur.com/iHkRhA4.jpg', 'Vegan Lentil Curry', true, 17),
       (22,
        'Juicy grilled chicken on crisp romaine lettuce with croutons, cherry tomatoes, and Parmesan, drizzled with creamy Caesar dressing.',
        'https://i.imgur.com/cWjj78p.jpg', 'Grilled Chicken Caesar Salad', false, 8),
       (23,
        'Colorful roasted bell peppers, zucchini, and cherry tomatoes with fluffy quinoa, drizzled with balsamic glaze and fresh basil.',
        'https://i.imgur.com/eClamIZ.jpg', 'Roasted Vegetable Quinoa Bowl', true, 23),
       (24,
        'Succulent shrimp with vibrant vegetables in a fiery garlic sauce, served over steamed rice or noodles for a tantalizing fusion of heat and savor.',
        'https://i.imgur.com/WKAHxZF.jpg', 'Spicy Shrimp Stir-Fry', false, 11),
       (25,
        'Rich and creamy Arborio rice with sautéed mushrooms, garnished with Parmesan cheese and fresh parsley for a luxurious and comforting dining experience.',
        'https://i.imgur.com/58Dxtys.jpg', 'Mushroom Risotto', true, 13),
       (26,
        'Hearty combination of black beans and sweet corn with juicy tomatoes and crisp red onions, drizzled with zesty dressing for a refreshing and nutritious salad.',
        'https://i.imgur.com/Swnloym.jpg', 'Black Bean and Corn Salad', false, 6),
       (27,
        'Perfectly grilled salmon glazed with a luscious blend of honey and mustard, served alongside vibrant vegetables for a perfect harmony of sweet and savory.',
        'https://i.imgur.com/o5fbqwF.jpg', 'Honey Mustard Glazed Salmon', true, 28),
       (28,
        'Al dente pasta with cherry tomatoes, mozzarella, and fresh basil, drizzled with balsamic glaze and olive oil for a refreshing and satisfying ode to the classic Caprese.',
        'https://i.imgur.com/SHlvAl4.jpg', 'Caprese Pasta Salad', false, 15),
       (29,
        'Flavorful stew with sautéed onions, garlic, carrots, tender chickpeas, diced tomatoes, and fresh spinach for a hearty and wholesome experience.',
        'https://i.imgur.com/qxsBBPs.jpg', 'Chickpea and Spinach Stew', true, 5),
       (30,
        'Cubes of tofu in a sweet and tangy teriyaki sauce with crisp vegetables, served over steamed rice or noodles for a symphony of Asian-inspired flavors.',
        'https://i.imgur.com/kxYvrUh.jpg', 'Teriyaki Tofu Stir-Fry', false, 20),
       (31,
        'Juicy chicken slices, cherry tomatoes, and al dente penne pasta in a velvety pesto sauce, garnished with grated Parmesan for a celebration of fresh, herbaceous flavors.',
        'https://i.imgur.com/MwT4yQz.jpg', 'Pesto Chicken Penne', true, 1),
       (32,
        'Diced onions, garlic, and ginger sautéed to perfection with cauliflower florets and chickpeas in a fragrant stew, served over basmati rice or quinoa.',
        'https://i.imgur.com/AHdIorl.jpg', 'Cauliflower and Chickpea Curry', false, 9),
       (33,
        'Ripe mangoes and avocados with red onions, jalapeños, and Coriander in a tantalizing salsa, enhanced with a splash of lime juice for a delightful treat.',
        'https://i.imgur.com/VDIlybO.jpg', 'Mango Avocado Salsa', true, 12),
       (34,
        'Succulent shrimp sautéed in garlic-infused olive oil with cherry tomatoes and baby spinach, combined with lemon juice and fresh herbs for a comforting and invigorating pasta.',
        'https://i.imgur.com/F1z8LfF.jpg', 'Lemon Garlic Shrimp Pasta', false, 29),
       (35,
        'Ground turkey, cooked quinoa, black beans, and corn in a flavorful mixture, creating a hearty filling for vibrant bell peppers, baked to perfection with melted cheese.',
        'https://i.imgur.com/3jP3gAe.jpg', 'Stuffed Bell Peppers', true, 18),
       (36,
        'Quinoa with cherry tomatoes, olives, cucumbers, and feta cheese, drizzled with olive oil and oregano for a celebration of Mediterranean flavors.',
        'https://i.imgur.com/HrOsFQD.jpg', 'Mediterranean Quinoa Salad', false, 14),
       (37,
        'Rice noodles stir-fried with tofu, bean sprouts, and julienned carrots in a delectable tamarind-infused sauce, garnished with crushed peanuts and lime wedges.',
        'https://i.imgur.com/31ylxqb.jpg', 'Vegetarian Pad Thai', true, 26),
       (38,
        'Sautéed onions, carrots, and celery with tender lentils, diced tomatoes, and a fragrant blend of herbs for a hearty and wholesome stew.',
        'https://i.imgur.com/TWmrq9Q.jpg', 'Lentil and Vegetable Stew', false, 3),
       (39,
        'Sliced sausage, succulent shrimp, and vibrant vegetables in a fiery and flavorful concoction, served over rice for a spicy and satisfying experience.',
        'https://i.imgur.com/2cO685K.jpg', 'Cajun Shrimp and Sausage Skillet', true, 25),
       (40,
        'Arborio rice in a velvety blend of sautéed onions, butter, and roasted butternut squash, garnished with sage and Parmesan cheese for a creamy and comforting autumnal celebration.',
        'https://i.imgur.com/bztE9sk.jpg', 'Butternut Squash Risotto', false, 7);

INSERT INTO mealplanner_api.recipe_ingredient (id, qty, ingredient_id, unit_id)
VALUES (1, 250, 12, 1),     -- Ground beef (Qty: 250 grams)
       (2, 1, 13, 2),       -- Onion (Qty: 1 piece)
       (3, 3, 7, 3),        -- Garlic (Qty: 3 cloves)
       (4, 150, 14, 5),     -- Tomato paste (Qty: 150 grams)
       (5, 400, 15, 4),     -- Canned tomatoes (Qty: 400 grams)
       (6, 1, 16, 5),       -- Oregano (Qty: 1 tsp)
       (7, 1, 17, 5),       -- Basil (Qty: 1 tsp)
       (8, 1, 18, 5),       -- Salt (Qty: 1 tsp)
       (9, 0.5, 19, 5),     -- Pepper (Qty: 0.5 tsp)
       (10, 300, 20, 1),    -- Spaghetti noodles (Qty: 300 grams)
       (11, 100, 21, 1),    -- Parmesan cheese (Qty: 100 grams)
       (12, 200, 22, 1),    -- Tofu (Qty: 200 grams)
       (13, 1, 8, 5),       -- Broccoli (Qty: 1 piece)
       (14, 2, 23, 1),      -- Bell peppers (Qty: 2 pieces)
       (15, 150, 24, 1),    -- Carrots (Qty: 150 grams)
       (16, 100, 25, 1),    -- Snap peas (Qty: 100 grams)
       (17, 50, 26, 5),     -- Soy sauce (Qty: 50 ml)
       (18, 1, 27, 1),      -- Ginger (Qty: 1 piece)
       (19, 2, 28, 5),      -- Sesame oil (Qty: 2 tbs)
       (20, 200, 29, 1),    -- Rice (Qty: 200 grams)
       (21, 150, 30, 1),    -- Flour (Qty: 150 grams)
       (22, 100, 31, 1),    -- Bread crumbs (Qty: 100 grams)
       (23, 30, 32, 4),     -- Olive oil (Qty: 30 ml)
       (24, 500, 33, 4),    -- Marinara sauce (Qty: 500 ml)
       (25, 200, 34, 1),    -- Mozzarella cheese (Qty: 200 grams)
       (26, 30, 35, 5),     -- Balsamic glaze (Qty: 30 ml)
       (27, 200, 36, 1),    -- All-purpose flour (Qty: 200 grams)
       (28, 30, 37, 1),     -- Cocoa powder (Qty: 30 grams)
       (29, 10, 38, 1),     -- Baking powder (Qty: 10 grams)
       (30, 100, 39, 1),    -- Sugar (Qty: 100 grams)
       (31, 30, 40, 4),     -- Vegetable oil (Qty: 30 ml)
       (32, 5, 41, 5),      -- Vanilla extract (Qty: 5 ml)
       (33, 30, 42, 4),     -- Hot water (Qty: 30 ml)
       (34, 200, 43, 1),    -- Salmon fillets (Qty: 200 grams)
       (35, 1, 44, 2),      -- Lemon (Qty: 1 piece)
       (36, 5, 45, 1),      -- Dill (Qty: 5 grams)
       (37, 200, 46, 1),    -- Arborio rice (Qty: 200 grams)
       (38, 150, 47, 1),    -- Mushrooms (Qty: 150 grams)
       (39, 500, 48, 4),    -- Vegetable or chicken broth (Qty: 500 ml)
       (40, 50, 49, 1),     -- Butter (Qty: 50 grams)
       (41, 1, 51, 2),      -- Cucumber (Qty: 1 piece)
       (42, 1, 52, 2),      -- Red onion (Qty: 1 piece)
       (43, 100, 53, 1),    -- Kalamata olives (Qty: 100 grams)
       (44, 150, 54, 1),    -- Feta cheese (Qty: 150 grams)
       (45, 30, 55, 4),     -- Red wine vinegar (Qty: 30 ml)
       (46, 100, 56, 2),    -- Ladyfingers (Qty: 100 grams)
       (47, 250, 57, 4),    -- Strong brewed coffee (Qty: 250 ml)
       (48, 250, 58, 1),    -- Mascarpone cheese (Qty: 250 grams)
       (49, 1, 59, 1),      -- Taco seasoning (Qty: 1 piece)
       (50, 8, 60, 1),      -- Taco shells (Qty: 8 pieces)
       (51, 100, 61, 1),    -- Lettuce (Qty: 100 grams)
       (52, 100, 62, 1),    -- Mixed salad greens (Qty: 100 grams)
       (53, 150, 63, 2),    -- Cherry tomatoes (Qty: 150 grams)
       (54, 50, 64, 5),     -- Balsamic vinaigrette dressing (Qty: 50 ml)
       (55, 200, 65, 1),    -- Black beans (Qty: 200 grams)
       (56, 150, 66, 1),    -- Corn (Qty: 150 grams)
       (57, 1, 67, 5),      -- Cumin (Qty: 1 tsp)
       (58, 1, 68, 5),      -- Chili powder (Qty: 1 tsp)
       (59, 250, 69, 4),    -- Almond milk (Qty: 250 ml)
       (60, 1, 70, 2),      -- Banana (Qty: 1 piece)
       (61, 30, 71, 1),     -- Almond butter (Qty: 30 grams)
       (62, 30, 72, 1),     -- Honey (Qty: 30 grams)
       (63, 200, 73, 1),    -- Beef sirloin (Qty: 200 grams)
       (64, 50, 74, 1),     -- Brown sugar (Qty: 50 grams)
       (65, 20, 75, 1),     -- Cornstarch (Qty: 20 grams)
       (66, 500, 76, 1),    -- Pizza dough (Qty: 500 grams)
       (67, 5, 77, 1),      -- Fresh parsley (Qty: 5 grams)
       (68, 150, 78, 1),    -- Wheat berries (Qty: 150 grams)
       (69, 1, 79, 5),      -- Dijon mustard (Qty: 1 tsp)
       (70, 100, 80, 1),    -- Cheddar cheese (Qty: 100 grams)
       (71, 2, 81, 1),      -- Green onions (Qty: 2 pieces)
       (72, 12, 82, 1),     -- Cabbage leaves (Qty: 12 pieces)
       (73, 1, 83, 5),-- Thyme (Qty: 1 tsp)


       -- Vegan Lentil Curry
       (74, 200, 87, 1),    -- Lentils (Qty: 200 grams)
       (75, 0.4, 4, 4),     -- Coconut milk (Qty: 0.4 l)
       (76, 1, 13, 2),      -- Onion (Qty: 1 piece)
       (77, 3, 7, 3),       -- Garlic (Qty: 3 cloves)
       (78, 1, 27, 2),      -- Ginger (Qty: 1 tbs)
       (79, 1, 28, 2),      -- Turmeric (Qty: 1 tbs)
       (80, 1, 26, 2),      -- Cumin (Qty: 1 tbs)
       (81, 1, 17, 2),      -- Coriander (Qty: 1 tbs)
       (82, 1, 128, 4),      -- Garam masala (Qty: 1 tbs)
       (83, 2, 15, 2),      -- Tomatoes (Qty: 2 pieces)
       (84, 100, 11, 1),    -- Spinach (Qty: 100 grams)

-- Grilled Chicken Caesar Salad
       (85, 300, 1, 1),     -- Chicken breast (Qty: 300 grams)
       (86, 1, 130, 2),      -- Romaine lettuce (Qty: 1 head)
       (87, 0.200, 109, 4), -- Caesar dressing (Qty: 0.15 l)
       (88, 50, 108, 1),    -- Croutons (Qty: 50 grams)
       (89, 100, 21, 6),    -- Parmesan cheese (Qty: 100 grams)

-- Roasted Vegetable Quinoa Bowl
       (90, 200, 2, 1),     -- Quinoa (Qty: 200 grams)
       (91, 150, 110, 1),   -- Zucchini (Qty: 150 grams)
       (92, 150, 23, 1),    -- Bell peppers (Qty: 150 grams)
       (93, 150, 63, 1),    -- Cherry tomatoes (Qty: 150 grams)
       (94, 0.045, 32, 4),  -- Olive oil (Qty: 0.045 l)
       (95, 5, 129, 1),       -- Garlic powder (Qty: 5 grams)
       (96, 2.5, 99, 1),    -- Paprika (Qty: 2.5 grams)
       (97, 5, 18, 1),      -- Salt (Qty: 5 grams)
       (98, 2.5, 131, 1),    -- Black pepper (Qty: 2.5 grams)
       (99, 100,127,1),     -- 100g Hummus

       -- Spicy Shrimp Stir-Fry
       (100, 300, 84, 1),   -- Shrimp (Qty: 300 grams)
       (101, 150, 8, 2),    -- Broccoli (Qty: 150 grams)
       (102, 100, 23, 2),   -- Bell peppers (Qty: 100 grams)
       (103, 50, 24, 2),    -- Carrots (Qty: 50 grams)
       (104, 0.03, 26, 4),  -- Soy sauce (Qty: 0.03 l)
       (105, 0.02, 27, 4),  -- Ginger (Qty: 0.02 l)
       (106, 0.03, 103, 4), -- Sriracha (Qty: 0.03 l)
       (107, 3, 7, 3),      -- Garlic (Qty: 3 cloves)
       (108, 200, 29, 2),   -- Rice (Qty: 200 grams)

-- Mushroom Risotto
       (109, 150, 47, 1),   -- Mushrooms (Qty: 150 grams)
       (110, 200, 46, 1),   -- Arborio rice (Qty: 200 grams)
       (111, 0.5, 48, 4),   -- Vegetable or chicken broth (Qty: 0.5 l)

-- Black Bean and Corn Salad
       (112, 400, 65, 1),   -- Black beans (Qty: 400 grams)
       (113, 200, 66, 1),   -- Corn kernels (Qty: 200 grams)
       (114, 1, 13, 2),     -- Red onion (Qty: 1 piece)
       (115, 250, 63, 2),   -- Cherry tomatoes (Qty: 250 grams)
       (116, 2, 88, 6),     -- Avocado (Qty: 2 pieces)
       (117, 30, 91, 5),    -- Coriander (Qty: 30 grams)
       (118, 2, 132, 5),    -- Lime juice (Qty: 2 tbs)
       (119, 0.03, 32, 4),  -- Olive oil (Qty: 0.03 l)
       (120, 5, 18, 1),     -- Salt (Qty: 5 grams)
       (121, 2, 131, 1),     -- Black pepper (Qty: 2 grams)

-- Honey Mustard Glazed Salmon
       (122, 4, 43, 1),     -- Salmon fillets (Qty: 4 pieces)
       (123, 0.06, 79, 4),  -- Dijon mustard (Qty: 0.06 l)
       (124, 0.06, 72, 4),  -- Honey (Qty: 0.06 l)
       (125, 0.03, 26, 4),  -- Soy sauce (Qty: 0.03 l)
       (126, 0.03, 32, 4),  -- Olive oil (Qty: 0.03 l)
       (127, 3, 7, 3),      -- Garlic (Qty: 3 cloves)
       (128, 2, 133, 5),     -- Lemon juice (Qty: 2 tbs)

-- Caprese Pasta Salad
       (129, 300, 93, 2),   -- Pasta (Qty: 300 grams)
       (130, 250, 63, 2),   -- Cherry tomatoes (Qty: 250 grams)
       (131, 150, 34, 2),   -- Mozzarella cheese (Qty: 150 grams)
       (132, 20, 17, 2),    -- Fresh basil (Qty: 20 grams)
       (133, 0.03, 35, 4),  -- Balsamic vinegar (Qty: 0.03 l)
       (134, 0.03, 32, 4),  -- Olive oil (Qty: 0.03 l)
       (135, 5, 18, 1),     -- Salt (Qty: 5 grams)
       (136, 2, 131, 1),     -- Black pepper (Qty: 2 grams)

-- Chickpea and Spinach Stew
       (137, 400, 95, 1),   -- Chickpeas (Qty: 400 grams)
       (138, 200, 112, 1),  -- Spinach (Qty: 200 grams)
       (139, 1, 13, 2),     -- Onion (Qty: 1 piece)
       (140, 3, 7, 3),      -- Garlic (Qty: 3 cloves)
       (141, 0.045, 14, 4), -- Tomato paste (Qty: 0.045 l)
       (142, 0.5, 48, 4),   -- Vegetable broth (Qty: 0.5 l)
       (143, 4, 67, 1),     -- Cumin (Qty: 1 tbs)
       (144, 5, 99, 1),     -- Paprika (Qty: 1 tbs)
       (145, 6, 17, 1),     -- Coriander (Qty: 1 tbs)
       (146, 2, 133, 5),     -- Lemon juice (Qty: 2 tbs)

-- Teriyaki Tofu Stir-Fry
       (147, 400, 22, 2),   -- Tofu (Qty: 400 grams)
       (148, 150, 8, 2),    -- Broccoli (Qty: 150 grams)
       (149, 100, 23, 2),   -- Bell peppers (Qty: 100 grams)
       (150, 50, 24, 2),    -- Carrots (Qty: 50 grams)
       (151, 0.06, 113, 4), -- Teriyaki sauce (Qty: 0.06 l)
       (152, 0.03, 26, 4),  -- Soy sauce (Qty: 0.03 l)
       (153, 0.02, 27, 4),  -- Ginger (Qty: 0.02 l)
       (154, 3, 7, 3),      -- Garlic (Qty: 3 cloves)
       (155, 200, 29, 2),   -- Rice (Qty: 200 grams)

-- Pesto Chicken Penne
       (156, 400, 1, 1),    -- Chicken breast (Qty: 400 grams)
       (157, 300, 114, 2),  -- Penne pasta (Qty: 300 grams)
       (158, 250, 63, 2),   -- Cherry tomatoes (Qty: 250 grams)
       (159, 0.1, 115, 4),  -- Pesto sauce (Qty: 0.1 l)
       (160, 50, 21, 6),    -- Parmesan cheese (Qty: 50 grams)
       (161, 0.03, 32, 4),  -- Olive oil (Qty: 0.03 l)
       (162, 5, 18, 1),     -- Salt (Qty: 5 grams)
       (163, 2, 131, 1),     -- Black pepper (Qty: 2 grams)

-- Cauliflower and Chickpea Curry
       (164, 1, 116, 2),    -- Cauliflower (Qty: 1 piece)
       (165, 400, 95, 1),   -- Chickpeas (Qty: 400 grams)
       (166, 1, 13, 2),     -- Onion (Qty: 1 piece)
       (167, 3, 7, 3),      -- Garlic (Qty: 3 cloves)
       (168, 20, 27, 2),    -- Ginger (Qty: 20 grams)
       (169, 1, 3, 2),      -- Tomato (Qty: 1 piece)
       (170, 0.4, 117, 4),   -- Coconut milk (Qty: 0.4 l)
       (171, 2, 118, 2),     -- Curry powder (Qty: 2 tbs)
       (172, 1, 119, 2),     -- Turmeric (Qty: 1 tbs)
       (173, 1, 67, 2),     -- Cumin (Qty: 1 tbs)
       (174, 1, 91, 2),     -- Coriander (Qty: 1 tbs)

-- Mango Avocado Salsa
       (175, 2, 120, 2),     -- Mango (Qty: 2 pieces)
       (176, 2, 88, 2),     -- Avocado (Qty: 2 pieces)
       (177, 1, 13, 2),     -- Red onion (Qty: 1 piece)
       (178, 1, 121, 2),     -- Jalapeño (Qty: 1 piece)
       (179, 30, 91, 5),    -- Coriander (Qty: 30 grams)
       (180, 2, 132, 5),     -- Lime juice (Qty: 2 tbs)
       (181, 5, 18, 1),     -- Salt (Qty: 5 grams)
       (182, 2, 131, 1),     -- Black pepper (Qty: 2 grams)

-- Lemon Garlic Shrimp Pasta
       (183, 400, 84, 1),   -- Shrimp (Qty: 400 grams)
       (184, 300, 93, 2),   -- Linguine pasta (Qty: 300 grams)
       (185, 250, 63, 2),   -- Cherry tomatoes (Qty: 250 grams)
       (186, 150, 112, 2),   -- Spinach (Qty: 150 grams)
       (187, 4, 7, 3),      -- Garlic (Qty: 4 cloves)
       (188, 2, 133, 5),     -- Lemon juice (Qty: 2 tbs)
       (189, 0.03, 32, 4),  -- Olive oil (Qty: 0.03 l)
       (190, 1, 94, 1),     -- Red pepper flakes (Qty: 1 tsp)

-- Stuffed Bell Peppers
       (191, 4, 23, 2),     -- Bell peppers (Qty: 4 pieces)
       (192, 400, 12, 1),   -- Ground beef (Qty: 400 grams)
       (193, 150, 2, 1),   -- Quinoa (Qty: 150 grams)
       (194, 1, 13, 2),     -- Onion (Qty: 1 piece)
       (195, 0.25, 14, 4),  -- Tomato sauce (Qty: 0.25 l)
       (196, 100, 34, 2),   -- Mozzarella cheese (Qty: 100 grams)
       (197, 0.03, 32, 4),  -- Olive oil (Qty: 0.03 l)
       (198, 5, 18, 1),     -- Salt (Qty: 5 grams)
       (199, 2, 131, 1),     -- Black pepper (Qty: 2 grams)

-- Mediterranean Quinoa Salad
       (200, 200, 2, 2),    -- Quinoa (Qty: 200 grams)
       (201, 1, 51, 2),     -- Cucumber (Qty: 1 piece)
       (202, 250, 63, 2),   -- Cherry tomatoes (Qty: 250 grams)
       (203, 100, 53, 2),   -- Kalamata olives (Qty: 100 grams)
       (204, 1, 52, 2),     -- Red onion (Qty: 1 piece)
       (205, 100, 54, 2),   -- Feta cheese (Qty: 100 grams)
       (206, 0.03, 32, 4),  -- Olive oil (Qty: 0.03 l)
       (207, 2, 133, 6),     -- Lemon juice (Qty: 2 tbs)
       (208, 1, 16, 2),     -- Oregano (Qty: 1 tsp)

-- Vegetarian Pad Thai
       (209, 200, 96, 2),   -- Rice noodles (Qty: 200 grams)
       (210, 200, 22, 2),   -- Tofu (Qty: 200 grams)
       (211, 100, 100, 2),  -- Bean sprouts (Qty: 100 grams)
       (212, 2, 24, 2),     -- Carrots (Qty: 2 pieces)
       (213, 4, 81, 2),     -- Green onions (Qty: 4 pieces)
       (214, 50, 101, 6),   -- Peanuts (Qty: 50 grams)
       (215, 2, 111, 2),     -- Lime (Qty: 2 pieces)
       (216, 0.03, 26, 4),  -- Soy sauce (Qty: 0.03 l)
       (217, 0.03, 102, 4), -- Tamarind paste (Qty: 0.03 l)
       (218, 1, 103, 5),    -- Sriracha (Qty: 1 tbs)

-- Lentil and Vegetable Stew
       (219, 200, 87, 2),   -- Lentils (Qty: 200 grams)
       (220, 2, 24, 2),     -- Carrots (Qty: 2 pieces)
       (221, 2, 122, 2),     -- Celery (Qty: 2 pieces)
       (222, 1, 13, 2),     -- Onion (Qty: 1 piece)
       (223, 3, 7, 3),      -- Garlic (Qty: 3 cloves)
       (224, 0.5, 48, 4),   -- Vegetable broth (Qty: 0.5 l)
       (225, 1, 3, 2),     -- Tomato (Qty: 1 piece)
       (226, 2, 104, 2),    -- Bay leaves (Qty: 2 pieces)
       (227, 1, 83, 1),     -- Thyme (Qty: 1 tbs)
       (228, 1, 123, 1),     -- Rosemary (Qty: 1 tbs)

-- Cajun Shrimp and Sausage Skillet
       (229, 400, 84, 1),   -- Shrimp (Qty: 400 grams)
       (230, 250, 98, 2),   -- Sausage (Qty: 250 grams)
       (231, 2, 23, 2),     -- Bell peppers (Qty: 2 pieces)
       (232, 1, 13, 2),     -- Onion (Qty: 1 piece)
       (233, 2, 122, 2),     -- Celery (Qty: 2 pieces)
       (234, 3, 7, 3),      -- Garlic (Qty: 3 cloves)
       (235, 2, 97, 2),    -- Cajun seasoning (Qty: 2 tbs)
       (236, 1, 99, 2),     -- Paprika (Qty: 1 tbs)
       (237, 1, 83, 1),     -- Thyme (Qty: 1 tbs)
       (238, 0.03, 32, 4),  -- Olive oil (Qty: 0.03 l)

-- Butternut Squash Risotto
       (239, 300, 46, 2),   -- Arborio rice (Qty: 300 grams)
       (240, 1, 124, 2),     -- Butternut Squach (Qty: 1 piece)
       (241, 1, 13, 2),     -- Onion (Qty: 1 piece)
       (242, 3, 7, 3),      -- Garlic (Qty: 3 cloves)
       (243, 0.75, 125, 4),  -- White wine (Qty: 0.12 l)
       (244, 1, 48, 4),     -- Vegetable broth (Qty: 1 l)
       (245, 50, 21, 2),    -- Parmesan cheese (Qty: 50 grams)
       (246, 10, 126, 1),    -- Sage (Qty: 10 grams)
       (247, 0.03, 32, 4),  -- Olive oil (Qty: 0.03 l)
       (248, 5, 18, 1),     -- Salt (Qty: 5 grams)
       (249, 2, 131, 1),     -- Black pepper (Qty: 2 grams)

       -- last 10 start here
       -- Grilled Chicken Salad
       (250, 250, 65, 1),   -- black beans (Qty: 250g)
       (251, 250, 66, 1),   -- corn (Qty: 250g)
       (252, 5, 67, 1),     -- cumin (Qty: 5g)
       (253, 5, 68, 1),     -- chili powder (Qty: 5g)
       (254, 0.035, 69, 4), -- almond milk (Qty: 35ml)
       (255, 1, 70, 2),     -- banana (Qty: 1 piece)
       (256, 250, 71, 1),   -- almond butter (Qty: 250g)
       (257, 15, 72, 5),    -- honey (Qty: 15tbs)
       (258, 2, 62, 2),     -- mixed salad greens (Qty: 2 pieces)
       (259, 5, 77, 2),     -- fresh parsley (Qty: 5 pieces)

       -- Quinoa Stuffed Peppers
       (260, 1, 23, 2),     -- bell peppers (Qty: 1 piece)
       (261, 250, 2, 1),    -- quinoa (Qty: 250g)
       (262, 2, 29, 2),     -- zucchini (Qty: 2 pieces)
       (263, 1, 99, 5),     -- paprika (Qty: 1tbs)
       (264, 1, 67, 5),     -- cumin (Qty: 1tbs)
       (265, 0.5, 129, 5),    -- garlic powder (Qty: 0.5tbs)
       (266, 0.5, 13, 5),   -- onion powder (Qty: 0.5tbs)
       (267, 25, 17, 1),    -- fresh herbs (Qty: 25 pieces)

       -- Tomato Basil Pasta
       (268, 250, 20, 1),   -- pasta (Qty: 250g)
       (269, 250, 15, 1),   -- diced tomatoes (Qty: 250g)
       (270, 3, 7, 3),      -- garlic (Qty: 3 cloves)
       (271, 3, 17, 3),     -- basil (Qty: 3 cloves)
       (272, 2, 32, 5),     -- olive oil (Qty: 2tbs)
       (273, 2.5, 18, 1),   -- salt (Qty: 251)
       (274, 2.5, 19, 1),   -- pepper (Qty: 251)
       (275, 250, 21, 2),   -- grated Parmesan cheese (Qty: 250g)

       -- Almond Milk Smoothie
       (276, 0.350, 69, 4), -- almond milk (Qty: 350ml)
       (277, 1, 70, 2),     -- banana (Qty: 1 piece)
       (278, 250, 83, 1),   -- handful of spinach(Qty: 250g)
       (279, 100, 106, 1),  -- berries (Qty: 100 g)

       -- Beef and Broccoli Stir-Fry
       (280, 250, 73, 1),   -- beef sirloin (Qty: 250g)
       (281, 5, 26, 5),     -- soy sauce (Qty: 5tbs)
       (282, 3, 7, 3),      -- garlic (Qty: 3 cloves)
       (283, 2, 27, 3),     -- ginger (Qty: 2 cloves)
       (284, 4, 8, 2),      -- broccoli florets (Qty: 4 pieces)
       (285, 5, 106, 5),    -- oyster sauce (Qty: 5tbs)
       (286, 5, 75, 1),     -- cornstarch (Qty: 5g)
       (287, 100, 29, 1),   -- cooked rice (Qty: 100g)

       -- Garlic Parmesan Breadsticks
       (288, 3, 76, 1),     -- pizza dough (Qty: 3 pieces)
       (289, 5, 40, 4),     -- melted butter (Qty: 5tbs)
       (290, 3, 7, 3),      -- minced garlic (Qty: 3 cloves)
       (291, 250, 21, 1),   -- grated Parmesan cheese (Qty: 250g)

       -- Wheat Berry Salad
       (292, 250, 78, 1),   -- wheat berries (Qty: 250g)
       (293, 2, 23, 2),     -- chopped bell pepper (Qty: 2 pieces
       (294, 2, 7, 3),      -- Garlic (Qty: 2 cloves)
       (295, 2, 32, 5),     -- olive oil (Qty: 2tbs)
       (296, 3, 79, 5),     -- Dijon mustard (Qty: 3tbs)
       (297, 2.5, 18, 1),   -- salt (Qty: 2.5g)
       (298, 2.5, 19, 1),   -- pepper (Qty: 2.5g)

       -- Cheese Omelette
       (299, 4, 107, 2),    -- eggs (Qty: 4 pieces)
       (300, 2.5, 18, 1),   -- salt (Qty: 2.5g)
       (301, 2.5, 19, 1),   -- pepper (Qty: 2.5g)
       (302, 250, 10, 1),   -- shredded cheese (Qty: 250g)

       -- Egg Fried Rice
       (303, 250, 29, 1),   -- rice (Qty: 250g)
       (304, 5, 32, 5),     -- vegetable oil (Qty: 5tbs)
       (305, 20, 25, 1),    -- Snap peas (Qty: 2 pieces) - replacing diced vegetables
       (306, 4, 107, 2),    -- beaten eggs (Qty: 4 pieces)
       (307, 5, 26, 5),     -- soy sauce (Qty: 5tbs)
       (308, 4, 81, 2),     -- chopped green onions (Qty: 4 pieces)

       -- Cabbage Rolls
       (309, 1, 82, 2),     -- cabbage leaves (Qty: 1 piece)
       (310, 250, 12, 1),   -- ground beef (Qty: 250g)
       (311, 250, 97, 1),   -- cooked rice (Qty: 250g)
       (312, 2, 13, 2),     -- diced onions (Qty: 2 pieces)
       (313, 0.04, 28, 4),  -- sesame oil (Qty: 4 pieces) - replacing seasonings
       (314, 12, 82, 2),    -- cabbage rolls (Qty: 12 pieces)
       (315, 251, 33, 1),   -- tomato sauce (Qty: 251g)
       (316, 50, 81, 2); -- green onions (Qty: 5 pieces)

INSERT INTO mealplanner_api.recipe_recipe_ingredient (recipe_id, recipe_ingredient_id)
VALUES
-- Spaghetti Bolognese -> 1 check
(1, 1),    -- Qty: 250 grams Ground beef
(1, 2),    -- Qty: 1 piece Onion
(1, 3),    -- Qty: 3 cloves Garlic
(1, 4),    -- Qty: 150 grams Tomato paste
(1, 5),    -- Qty: 400 grams Canned tomatoes
(1, 6),    -- Qty: 1 tsp Oregano
(1, 7),    -- Qty: 1 tsp Basil
(1, 8),    -- Qty: 1 tsp Salt
(1, 9),    -- Qty: 0.5 tsp Pepper
(1, 10),   -- Qty: 300 grams Spaghetti noodles
(1, 11),   -- Qty: 100 grams Parmesan cheese

-- Vegetarian Stir-Fry -> 2 check
(2, 12),   -- Qty: 200 grams Tofu
(2, 13),   -- Qty: 1 piece Broccoli
(2, 14),   -- Qty: 2 pieces Bell peppers
(2, 15),   -- Qty: 150 grams Carrots
(2, 16),   -- Qty: 100 grams Snap peas
(2, 17),   -- Qty: 50 ml Soy sauce
(2, 18),   -- Qty: 1 piece Ginger
(2, 19),   -- Qty: 2 tbs Sesame oil
(2, 20),   -- Qty: 200 grams Rice

-- Chicken Parmesan -> 3 correct lijn 1366; recipe 3 step 3
(3, 21),   -- Qty: 150 grams Flour V
(3, 22),   -- Qty: 100 grams Bread crumbs V
(3, 23),   -- Qty: 30 ml Olive oil V
(3, 24),   -- Qty: 500 ml Marinara sauce V
(3, 11),   -- Qty: 100 grams Parmesan cheese V
(3, 80),   -- kiek V

-- Caprese Salad == 4
(4, 21),   -- Qty: 150 grams Flour V
(4, 22),   -- Qty: 100 grams Bread crumbs V
(4, 23),   -- Qty: 30 ml Olive oil V
(4, 24),   -- Qty: 500 ml Marinara sauce V
(4, 25),   -- Qty: 200 grams Mozzarella cheese
(4, 83),   -- Tomatoes (Qty: 2 pieces)

-- Chocolate Cake -> 5
(5, 27),   -- Qty: 200 grams All-purpose flour
(5, 28),   -- Qty: 30 grams Cocoa powder
(5, 29),   -- Baking powder (Qty: 10 grams)
(5, 30),   -- Sugar (Qty: 100 grams)
(5, 31),   -- Vegetable oil (Qty: 30 ml)
(5, 32),   -- Vanilla extract (Qty: 5 ml)


-- Grilled Salmon ->6
(6, 34),   -- Qty: 200 grams Salmon fillets
(6, 35),   -- Qty: 1 piece Lemon
(6, 36),   -- Qty: 5 grams Dill
(6, 37),   -- Qty: 200 grams Arborio rice

-- Mushroom Risotto -> 7
(7, 38),-- Qty: 150 grams Mushrooms
(7, 39),   -- Qty: 500 ml Vegetable or chicken broth
(7, 40),-- Qty: 50 grams Butter
(7, 37),   -- Qty: 200 grams Arborio rice


-- Greek Salad -> 8
(8, 41),   -- Qty: 1 piece Cucumber
(8, 42),   -- Qty: 1 piece Red onion
(8, 43),   -- Qty: 100 grams Kalamata olives
(8, 44),   -- Qty: 150 grams Feta cheese
(8, 45),   -- Qty: 30 ml Red wine vinegar
(8, 53),   -- kerstomaat

-- Tiramisu -> 9
(9, 46),-- Qty: 200 grams Ladyfingers
(9, 47),-- Qty: 250 ml Strong brewed coffee
(9, 48),   -- Qty: 250 grams Mascarpone cheese
(9, 28),   -- cacao powder


-- Beef Tacos -> 10
(10, 49),  -- Qty: 1 piece Taco seasoning
(10, 50),-- Qty: 8 pieces Taco shells
(10, 51),  -- Qty: 100 grams Lettuce
(10, 52),  -- Qty: 100 grams Mixed salad greens
(10, 53),  -- Qty: 150 grams Cherry tomatoes
(10, 54),  -- Qty: 50 ml Balsamic vinaigrette dressing

-- Grilled Chicken Salad -> 11
(11, 55),  -- Qty: 200 grams Black beans
(11, 56),  -- Qty: 150 grams Corn
(11, 57),  -- Qty: 1 tsp Cumin
(11, 58),  -- Qty: 1 tsp Chili powder
(11, 59),  -- Qty: 250 ml Almond milk
(11, 60),  -- Qty: 1 piece Banana
(11, 61),  -- Qty: 30 grams Almond butter
(11, 62),  -- Qty: 30 grams Honey
(11, 63),  -- Qty: 200 grams Beef sirloin
(11, 64),  -- Qty: 50 grams Brown sugar
(11, 65),  -- Qty: 20 grams Cornstarch
(11, 66),  -- Qty: 500 grams Pizza dough
(11, 67),  -- Qty: 5 grams Fresh parsley
(11, 68),  -- Qty: 150 grams Wheat berries
(11, 69),  -- Qty: 1 tsp Dijon mustard
(11, 70),  -- Qty: 100 grams Cheddar cheese
(11, 71),  -- Qty: 2 pieces Green onions
(11, 72),  -- Qty: 12 pieces Cabbage leaves
(11, 73),  -- Qty: 1 tsp Thyme

# -- Grilled Chicken Salad
# (11, 250), -- black beans (Qty: 250g)
# (11, 251), -- corn (Qty: 250g)
# (11, 252), -- cumin (Qty: 5g)
# (11, 253), -- chili powder (Qty: 5g)
# (11, 254), -- almond milk (Qty: 35ml)
# (11, 255), -- banana (Qty: 1 piece)
# (11, 256), -- almond butter (Qty: 250g)
# (11, 257), -- honey (Qty: 15tbs)
# (11, 258), -- mixed salad greens (Qty: 2 pieces)
# (11, 259), -- fresh parsley (Qty: 5 pieces)

-- Quinoa Stuffed Peppers -> 12
(12, 260), -- bell peppers (Qty: 1 piece)
(12, 261), -- quinoa (Qty: 250g)
(12, 262), -- zucchini (Qty: 2 pieces)
(12, 263), -- paprika (Qty: 1tbs)
(12, 264), -- cumin (Qty: 1tbs)
(12, 265), -- garlic powder (Qty: 0.5tbs)
(12, 266), -- onion powder (Qty: 0.5tbs)
(12, 267), -- fresh herbs (Qty: 25 pieces)

-- Tomato Basil Pasta
(13, 268), -- pasta (Qty: 250g)
(13, 269), -- diced tomatoes (Qty: 250g)
(13, 270), -- garlic (Qty: 3 cloves)
(13, 271), -- basil (Qty: 3 cloves)
(13, 272), -- olive oil (Qty: 2tbs)
(13, 273), -- salt (Qty: 2.5g)
(13, 274), -- pepper (Qty: 2.5g)
(13, 275), -- grated Parmesan cheese (Qty: 250g)

-- Almond Milk Smoothie
(14, 276), -- almond milk (Qty: 350ml)
(14, 277), -- banana (Qty: 1 piece)
(14, 278), -- handful of spinach (Qty: 250g)
(14, 279), -- berries (Qty: 100g)

-- Beef and Broccoli Stir-Fry
(15, 280), -- beef sirloin (Qty: 250g)
(15, 281), -- soy sauce (Qty: 5tbs)
(15, 282), -- garlic (Qty: 3 cloves)
(15, 283), -- ginger (Qty: 2 cloves)
(15, 284), -- broccoli florets (Qty: 4 pieces)
(15, 285), -- oyster sauce (Qty: 5tbs)
(15, 286), -- cornstarch (Qty: 5g)
(15, 287), -- cooked rice (Qty: 100g)

-- Garlic Parmesan Breadsticks
(16, 288), -- pizza dough (Qty: 3 pieces)
(16, 289), -- melted butter (Qty: 5tbs)
(16, 290), -- minced garlic (Qty: 3 cloves)
(16, 291), -- grated Parmesan cheese (Qty: 250g)

-- Wheat Berry Salad
(17, 292), -- wheat berries (Qty: 250g)
(17, 293), -- chopped bell pepper (Qty: 2 pieces)
(17, 294), -- garlic (Qty: 2 cloves)
(17, 295), -- olive oil (Qty: 2tbs)
(17, 296), -- Dijon mustard (Qty: 3tbs)
(17, 297), -- salt (Qty: 2.5g)
(17, 298), -- pepper (Qty: 2.5g)

-- Cheese Omelette
(18, 299), -- eggs (Qty: 4 pieces)
(18, 300), -- salt (Qty: 2.5g)
(18, 301), -- pepper (Qty: 2.5g)
(18, 302), -- shredded cheese (Qty: 250g)

-- Egg Fried Rice
(19, 303), -- rice (Qty: 250g)
(19, 304), -- vegetable oil (Qty: 5tbs)
(19, 305), -- Snap peas (Qty: 2 pieces)
(19, 306), -- beaten eggs (Qty: 4 pieces)
(19, 307), -- soy sauce (Qty: 5tbs)
(19, 308), -- chopped green onions (Qty: 4 pieces)

-- Cabbage Rolls
(20, 309), -- cabbage leaves (Qty: 1 piece)
(20, 310), -- ground beef (Qty: 250g)
(20, 311), -- cooked rice (Qty: 250g)
(20, 312), -- diced onions (Qty: 2 pieces)
(20, 313), -- sesame oil (Qty: 0.04tbs)
(20, 314), -- cabbage rolls (Qty: 12 pieces)
(20, 315), -- tomato sauce (Qty: 251g)
(20, 316), -- green onions (Qty: 5 pieces)


# end of first list
# Vegan Lentil Curry
(21, 74),  -- Qty: 200 grams Lentils
(21, 75),  -- Qty: 0.400 l Coconut milk
(21, 76),  -- Qty: 1 piece Onion
(21, 77),  -- Qty: 3 cloves Garlic
(21, 78),  -- Qty: 1 tbs Ginger
(21, 79),  -- Qty: 1 tbs Turmeric
(21, 80),  -- Qty: 1 tbs Cumin
(21, 81),  -- Qty: 1 tbs Coriander
(21, 82),  -- Qty: 1 tbs Garam masala
(21, 83),  -- Qty: 2 pieces Tomatoes
(21, 84),  -- Qty: 100 grams Spinach

-- Grilled Chicken Caesar Salad
(22, 85),  -- Qty: 300 grams Chicken breast
(22, 86),  -- Qty: 1 head Romaine lettuce
(22, 87),  -- Qty: 0.150 l Caesar dressing
(22, 88),  -- Qty: 50 grams Croutons
(22, 89),  -- Qty: 100 grams Parmesan cheese

-- Roasted Vegetable Quinoa Bowl
(23, 90),  -- Qty: 200 grams Quinoa
(23, 91),  -- Qty: 150 grams Zucchini
(23, 92),  -- Qty: 150 grams Bell peppers
(23, 93),  -- Qty: 150 grams Cherry tomatoes
(23, 94),  -- Qty: 0.045 l Olive oil
(23, 95),  -- Qty: 5 grams Garlic powder
(23, 96),  -- Qty: 2.5 grams Paprika
(23, 97),  -- Qty: 5 grams Salt
(23, 98),  -- Qty: 2.5 grams Black pepper
(23, 99),  -- Qty: 150 grams Hummus

-- Spicy Shrimp Stir-Fry
(24, 100), -- Qty: 300 grams Shrimp
(24, 101), -- Qty: 150 grams Broccoli
(24, 102), -- Qty: 100 grams Bell peppers
(24, 103), -- Qty: 50 grams Carrots
(24, 104), -- Qty: 0.030 l Soy sauce
(24, 105), -- Qty: 0.020 l Ginger
(24, 106), -- Qty: 0.030 l Sriracha
(24, 107), -- Qty: 3 cloves Garlic
(24, 108), -- Qty: 200 grams Rice

-- Mushroom Risotto
(25, 109), -- Qty: 150 grams Mushrooms
(25, 110), -- Qty: 200 grams Arborio rice
(25, 111), -- Qty: 0.500 l Vegetable or chicken broth


-- Black Bean and Corn Salad
(26, 112), -- Qty: 400 grams Black beans
(26, 113), -- Qty: 200 grams Corn kernels
(26, 114), -- Qty: 1 piece Red onion
(26, 115), -- Qty: 250 grams Cherry tomatoes
(26, 116), -- Qty: 2 pieces Avocado
(26, 117), -- Qty: 30 grams Coriander
(26, 118), -- Qty: 2 tbs Lime juice
(26, 119), -- Qty: 0.030 l Olive oil
(26, 120), -- Qty: 5 grams Salt
(26, 121), -- Qty: 2 grams Black pepper

-- Honey Mustard Glazed Salmon
(27, 122), -- Qty: 4 pieces Salmon fillets
(27, 123), -- Qty: 0.060 l Dijon mustard
(27, 124), -- Qty: 0.060 l Honey
(27, 125), -- Qty: 0.030 l Soy sauce
(27, 126), -- Qty: 0.030 l Olive oil
(27, 127), -- Qty: 3 cloves Garlic
(27, 128), -- Qty: 2 tbs Lemon juice

-- Caprese Pasta Salad
(28, 129), -- Qty: 300 grams Pasta
(28, 130), -- Qty: 250 grams Cherry tomatoes
(28, 131), -- Qty: 150 grams Mozzarella cheese
(28, 132), -- Qty: 20 grams Fresh basil
(28, 133), -- Qty: 0.030 l Balsamic vinegar
(28, 134), -- Qty: 0.030 l Olive oil
(28, 135), -- Qty: 5 grams Salt
(28, 136), -- Qty: 2 grams Black pepper

-- Chickpea and Spinach Stew
(29, 137), -- Qty: 400 grams Chickpeas
(29, 138), -- Qty: 200 grams Spinach
(29, 139), -- Qty: 1 piece Onion
(29, 140), -- Qty: 3 cloves Garlic
(29, 141), -- Qty: 0.045 l Tomato paste
(29, 142), -- Qty: 0.500 l Vegetable broth
(29, 143), -- Qty: 1 tbs Cumin
(29, 144), -- Qty: 1 tbs Paprika
(29, 145), -- Qty: 1 tbs Coriander
(29, 146), -- Qty: 2 tbs Lemon juice

-- Teriyaki Tofu Stir-Fry
(30, 147), -- Qty: 400 grams Tofu
(30, 148), -- Qty: 150 grams Broccoli
(30, 149), -- Qty: 100 grams Bell peppers
(30, 150), -- Qty: 50 grams Carrots
(30, 151), -- Qty: 0.060 l Teriyaki sauce
(30, 152), -- Qty: 0.030 l Soy sauce
(30, 153), -- Qty: 0.020 l Ginger
(30, 154), -- Qty: 3 cloves Garlic
(30, 155), -- Qty: 200 grams Rice

-- Pesto Chicken Penne
(31, 156), -- Qty: 400 grams Chicken breast
(31, 157), -- Qty: 300 grams Penne pasta
(31, 158), -- Qty: 250 grams Cherry tomatoes
(31, 159), -- Qty: 0.100 l Pesto sauce
(31, 160), -- Qty: 50 grams Parmesan cheese
(31, 161), -- Qty: 0.030 l Olive oil
(31, 162), -- Qty: 5 grams Salt
(31, 163), -- Qty: 2 grams Black pepper

-- Cauliflower and Chickpea Curry
(32, 164), -- Qty: 1 piece Cauliflower
(32, 165), -- Qty: 400 grams Chickpeas
(32, 166), -- Qty: 1 piece Onion
(32, 167), -- Qty: 3 cloves Garlic
(32, 168), -- Qty: 20 grams Ginger
(32, 169), -- Qty: 1 piece Tomato
(32, 170), -- Qty: 0.400 l Coconut milk
(32, 171), -- Qty: 2 tbs Curry powder
(32, 172), -- Qty: 1 tbs Turmeric
(32, 173), -- Qty: 1 tbs Cumin
(32, 174), -- Qty: 1 tbs Coriander

-- Mango Avocado Salsa
(33, 175), -- Qty: 2 pieces Mango
(33, 176), -- Qty: 2 pieces Avocado
(33, 177), -- Qty: 1 piece Red onion
(33, 178), -- Qty: 1 piece Jalapeño
(33, 179), -- Qty: 30 grams Coriander
(33, 180), -- Qty: 2 tbs Lime juice
(33, 181), -- Qty: 5 grams Salt
(33, 182), -- Qty: 2 grams Black pepper

-- Lemon Garlic Shrimp Pasta
(34, 183), -- Qty: 400 grams Shrimp
(34, 184), -- Qty: 300 grams Linguine pasta
(34, 185), -- Qty: 250 grams Cherry tomatoes
(34, 186), -- Qty: 150 grams Spinach
(34, 187), -- Qty: 4 cloves Garlic
(34, 188), -- Qty: 2 tbs Lemon juice
(34, 189), -- Qty: 0.030 l Olive oil
(34, 190), -- Qty: 1 tbs Red pepper flakes

-- Stuffed Bell Peppers
(35, 191), -- Qty: 4 pieces Bell peppers
(35, 192), -- Qty: 400 grams Ground beef
(35, 193), -- Qty: 150 grams Quinoa
(35, 194), -- Qty: 1 piece Onion
(35, 195), -- Qty: 0.250 l Tomato sauce
(35, 196), -- Qty: 100 grams Mozzarella cheese
(35, 197), -- Qty: 0.030 l Olive oil
(35, 198), -- Qty: 5 grams Salt
(35, 199), -- Qty: 2 grams Black pepper

-- Mediterranean Quinoa Salad
(36, 200), -- Qty: 200 grams Quinoa
(36, 201), -- Qty: 1 piece Cucumber
(36, 202), -- Qty: 250 grams Cherry tomatoes
(36, 203), -- Qty: 100 grams Kalamata olives
(36, 204), -- Qty: 1 piece Red onion
(36, 205), -- Qty: 100 grams Feta cheese
(36, 206), -- Qty: 0.030 l Olive oil
(36, 207), -- Qty: 2 tbs Lemon juice
(36, 208), -- Qty: 1 tbs Oregano

-- Vegetarian Pad Thai
(37, 209), -- Qty: 200 grams Rice noodles
(37, 210), -- Qty: 200 grams Tofu
(37, 211), -- Qty: 100 grams Bean sprouts
(37, 212), -- Qty: 2 pieces Carrots
(37, 213), -- Qty: 4 pieces Green onions
(37, 214), -- Qty: 50 grams Peanuts
(37, 215), -- Qty: 2 pieces Lime
(37, 216), -- Qty: 0.030 l Soy sauce
(37, 217), -- Qty: 0.030 l Tamarind paste
(37, 218), -- Qty: 1 tbs Sriracha

-- Lentil and Vegetable Stew
(38, 219), -- Qty: 200 grams Lentils
(38, 220), -- Qty: 2 pieces Carrots
(38, 221), -- Qty: 2 pieces Celery
(38, 222), -- Qty: 1 piece Onion
(38, 223), -- Qty: 3 cloves Garlic
(38, 224), -- Qty: 0.500 l Vegetable broth
(38, 225), -- Qty: 1 piece Tomato
(38, 226), -- Qty: 2 pieces Bay leaves
(38, 227), -- Qty: 1 tbs Thyme
(38, 228), -- Qty: 1 tbs Rosemary

-- Cajun Shrimp and Sausage Skillet
(39, 229), -- Qty: 400 grams Shrimp
(39, 230), -- Qty: 250 grams Sausage
(39, 231), -- Qty: 2 pieces Bell peppers
(39, 232), -- Qty: 1 piece Onion
(39, 233), -- Qty: 2 pieces Celery
(39, 234), -- Qty: 3 cloves Garlic
(39, 235), -- Qty: 2 tbs Cajun seasoning
(39, 236), -- Qty: 1 tbs Paprika
(39, 237), -- Qty: 1 tbs Thyme
(39, 238), -- Qty: 0.030 l Olive oil

-- Butternut Squash Risotto
(40, 239), -- Qty: 300 grams Arborio rice
(40, 240), -- Qty: 1 piece Butternut squash
(40, 241), -- Qty: 1 piece Onion
(40, 242), -- Qty: 3 cloves Garlic
(40, 243), -- Qty: 0.120 l White wine
(40, 244), -- Qty: 1 l Vegetable broth
(40, 245), -- Qty: 50 grams Parmesan cheese
(40, 246), -- Qty: 10 grams Sage
(40, 247), -- Qty: 0.030 l Olive oil
(40, 248), -- Qty: 5 grams Salt
(40, 249); -- Qty: 2 grams Black pepper


INSERT INTO mealplanner_api.recipe_instruction (instruction, step, recipe_id)
VALUES
-- Spaghetti Bolognese
('Boil a large pot of water. Add salt to the boiling water and cook the spaghetti according to the package instructions.',
 1, 1),
('In a pan, brown the ground beef over medium-high heat. Add chopped onions and minced garlic. Cook until the onions are translucent.',
 2, 1),
('Stir in tomato paste, canned tomatoes, oregano, basil, salt, and pepper. Simmer for 15-20 minutes, stirring occasionally.',
 3, 1),
('Cook the spaghetti noodles until al dente. Drain the noodles and toss with the Bolognese sauce.', 4, 1),
('Serve the spaghetti Bolognese hot, topped with grated Parmesan cheese.', 5, 1),

-- Vegetarian Stir-Fry
('In a wok or large skillet, heat oil over medium-high heat. Add sliced chicken breast and stir-fry until fully cooked.',
 1, 2),
('Add broccoli, bell peppers, carrots, and snap peas to the wok. Stir-fry for 5-7 minutes until vegetables are tender-crisp.',
 2, 2),
('In a small bowl, mix soy sauce, ginger, and sesame oil. Pour the sauce over the stir-fry and toss to coat.', 3, 2),
('Serve the vegetarian stir-fry over a bed of cooked rice.', 4, 2),

-- Chicken Parmesan
('Preheat the oven to 375°F (190°C).', 1, 3),
('Coat chicken breasts with flour, dip in beaten eggs, and coat with breadcrumbs. In a pan, heat olive oil over medium-high heat.',
 2, 3),
('Fry chicken breasts until golden brown on both sides. In a baking dish, layer marinara sauce, chicken, and mozzarella cheese.',
 3, 3),
('Bake in the preheated oven for 20-25 minutes, or until the cheese is melted and bubbly.', 4, 3),
('Serve the chicken Parmesan hot, garnished with fresh basil.', 5, 3),

-- Caprese Salad
('In a bowl, combine flour and bread crumbs. In another bowl, beat eggs. Dip tomato slices in flour mixture, then in beaten eggs, and coat with flour mixture again.',
 1, 4),
('In a skillet, heat olive oil over medium-high heat. Fry the coated tomato slices until golden brown on both sides.',
 2, 4),
('In a serving dish, layer fried tomatoes with marinara sauce. Top with mozzarella cheese and bake until cheese is melted.',
 3, 4),
('Garnish the Caprese salad with fresh basil and serve warm.', 4, 4),

-- Chocolate Cake
('Preheat the oven to 350°F (175°C). Grease and flour a cake pan.', 1, 5),
('In a bowl, combine all-purpose flour, cocoa powder, baking powder, and salt.', 2, 5),
('In another bowl, beat together sugar, eggs, vegetable oil, and vanilla extract until well combined.', 3, 5),
('Gradually add the dry ingredients to the wet ingredients, mixing until smooth. Pour the batter into the prepared cake pan.',
 4, 5),
('Bake for 30-35 minutes, or until a toothpick inserted into the center comes out clean.', 5, 5),
('Let the chocolate cake cool completely before frosting or serving.', 6, 5),

-- Grilled Salmon
('Preheat the grill to medium-high heat. Brush salmon fillets with olive oil and season with salt and pepper.', 1, 6),
('Grill the salmon for 4-5 minutes per side, or until it flakes easily with a fork.', 2, 6),
('While the salmon is grilling, cook Arborio rice according to package instructions.', 3, 6),
('Serve grilled salmon over a bed of cooked Arborio rice. Garnish with fresh lemon and dill.', 4, 6),

-- Mushroom Risotto
('In a large pan, sauté mushrooms in butter until tender. Set aside.', 1, 7),
('In the same pan, add Arborio rice and cook for 2 minutes. Pour in a ladle of hot broth and stir until absorbed. Continue adding broth and stirring until rice is creamy and cooked.',
 2, 7),
('Stir in sautéed mushrooms and season with salt and pepper to taste.', 3, 7),
('Garnish the mushroom risotto with fresh parsley and serve hot.', 4, 7),

-- Greek Salad
('In a large bowl, combine cucumber, red onion, Kalamata olives, and cherry tomatoes.', 1, 8),
('Crumble feta cheese over the salad. Drizzle with olive oil and red wine vinegar. Toss to combine.', 2, 8),
('Serve the Greek salad chilled as a refreshing side dish or light lunch.', 3, 8),

-- Tiramisu
('In a shallow dish, combine strong brewed coffee and coffee liqueur. Dip ladyfingers into the coffee mixture, ensuring they are soaked but not overly soggy.',
 1, 9),
('In a mixing bowl, whisk together mascarpone cheese, sugar, and vanilla extract until smooth.', 2, 9),
('Layer soaked ladyfingers in a serving dish, spreading a portion of mascarpone mixture over each layer.', 3, 9),
('Repeat layers, finishing with a dusting of cocoa powder on top.', 4, 9),
('Refrigerate the tiramisu for at least 4 hours or overnight before serving.', 5, 9),

-- Beef Tacos
('In a pan, cook seasoned beef taco filling until browned and fully cooked.', 1, 10),
('Warm taco shells in the oven or on the stovetop according to package instructions.', 2, 10),
('Assemble tacos by filling each shell with seasoned beef, lettuce, mixed salad greens, cherry tomatoes, and Balsamic vinaigrette dressing.',
 3, 10),
('Top with shredded cheddar cheese and serve the beef tacos immediately.', 4, 10),

-- Grilled Chicken Salad
('In a large bowl, combine black beans, corn, cumin, and chili powder.', 1, 11),
('In a blender, mix almond milk, banana, almond butter, and honey until smooth. Pour the dressing over the salad.', 2,
 11),
('Toss the salad until well coated with the almond milk dressing.', 3, 11),
('Serve the grilled chicken salad chilled, garnished with fresh parsley.', 4, 11),
('Enjoy this nutritious and flavorful salad!', 5, 11),
-- Quinoa Stuffed Peppers
('Preheat the oven to 375°F (190°C). Cut bell peppers in half lengthwise and remove seeds and membranes.', 1, 12),
('In a saucepan, cook quinoa according to package instructions. In a bowl, mix cooked quinoa with your favorite vegetables and seasonings.',
 2, 12),
('Fill each bell pepper half with the quinoa mixture. Place the stuffed peppers in a baking dish.', 3, 12),
('Bake for 25-30 minutes or until peppers are tender. Garnish with fresh herbs and serve hot.', 4, 12),

-- Tomato Basil Pasta
('Cook pasta in a large pot of salted boiling water until al dente. Drain and set aside.', 1, 13),
('In a pan, sauté diced tomatoes, garlic, and basil in olive oil. Season with salt and pepper to taste.', 2, 13),
('Combine the tomato mixture with the cooked pasta. Toss until the pasta is coated with the flavorful sauce.', 3, 13),
('Serve the tomato basil pasta hot, garnished with grated Parmesan cheese.', 4, 13),

-- Almond Milk Smoothie
('In a blender, combine almond milk, banana, and your favorite fruits (e.g., berries, mango, or pineapple).', 1, 14),
('Add a handful of spinach or kale for an extra boost of nutrients. Blend until smooth and creamy.', 2, 14),
('Pour the smoothie into a glass and enjoy this refreshing and nutritious beverage.', 3, 14),

-- Beef and Broccoli Stir-Fry
('Slice beef sirloin thinly and marinate in a mixture of soy sauce, garlic, and ginger for 15-20 minutes.', 1, 15),
('In a wok or large skillet, stir-fry marinated beef until browned. Add broccoli florets and stir-fry until tender-crisp.',
 2, 15),
('In a small bowl, mix soy sauce, oyster sauce, and cornstarch. Pour the sauce over the beef and broccoli. Stir until the sauce thickens.',
 3, 15),
('Serve the beef and broccoli stir-fry over a bed of cooked rice or noodles.', 4, 15),

-- Garlic Parmesan Breadsticks
('Preheat the oven to 375°F (190°C). Roll out pizza dough on a floured surface.', 1, 16),
('In a bowl, mix melted butter, minced garlic, and grated Parmesan cheese. Spread the mixture over the pizza dough.', 2,
 16),
('Cut the dough into strips and twist each strip into a breadstick shape. Place on a baking sheet.', 3, 16),
('Bake for 12-15 minutes or until golden brown. Serve the garlic Parmesan breadsticks warm.', 4, 16),

-- Wheat Berry Salad
('Cook wheat berries according to package instructions. Drain and let cool.', 1, 17),
('In a large bowl, combine cooked wheat berries with chopped vegetables and herbs.', 2, 17),
('In a small bowl, whisk together olive oil, Dijon mustard, salt, and pepper. Pour the dressing over the wheat berry salad.',
 3, 17),
('Toss the salad until well coated with the dressing. Serve chilled as a wholesome and flavorful side dish.', 4, 17),

-- Cheese Omelette
('In a bowl, beat eggs and season with salt and pepper. Heat a non-stick skillet over medium-high heat.', 1, 18),
('Pour the beaten eggs into the skillet. As the edges set, lift with a spatula to let uncooked eggs flow underneath.',
 2, 18),
('Sprinkle shredded cheese over one half of the omelette. Once the bottom is set, fold the omelette in half and serve hot.',
 3, 18),

-- Egg Fried Rice
('Cook rice according to package instructions and let it cool. In a wok, heat vegetable oil over medium-high heat.', 1,
 19),
('Add diced vegetables (e.g., peas, carrots, and corn) to the wok. Stir-fry until the vegetables are tender.', 2, 19),
('Push the vegetables to the side and add beaten eggs to the wok. Scramble the eggs until cooked.', 3, 19),
('Combine the cooked rice with vegetables and eggs. Season with soy sauce and stir-fry until heated through.', 4, 19),
('Serve the egg fried rice hot, garnished with chopped green onions.', 5, 19),

-- Cabbage Rolls
('Preheat the oven to 350°F (175°C). Boil a large pot of water and blanch cabbage leaves until tender.', 1, 20),
('In a bowl, mix together a filling of ground beef, cooked rice, diced onions, and seasonings.', 2, 20),
('Place a portion of the filling on each cabbage leaf and roll tightly. Arrange the cabbage rolls in a baking dish.', 3,
 20),
('In a separate bowl, mix tomato sauce and herbs. Pour the sauce over the cabbage rolls.', 4, 20),
('Bake for 25-30 minutes or until the cabbage rolls are cooked through. Serve hot.', 5, 20),

-- Vegan Lentil Curry
('Rinse the lentils thoroughly under cold water. In a pot, combine the lentils with water and bring to a boil. Reduce heat and simmer until lentils are tender.',
 1, 21),
('In a separate pan, sauté diced onions in oil until translucent. Add minced garlic and grated ginger. Cook until fragrant.',
 2, 21),
('Add turmeric, cumin, coriander, and garam masala to the onion mixture. Stir well to combine and let the spices toast for a minute.',
 3, 21),
('Pour in coconut milk and mix, allowing the spices to blend with the coconut milk. Bring the mixture to a gentle simmer.',
 4, 21),
('Add diced tomatoes to the curry. Cook until they soften and release their juices, enriching the flavor of the curry.',
 5, 21),
('Fold in fresh spinach leaves, allowing them to wilt into the curry. Stir until the spinach is evenly distributed.', 6,
 21),
('Once the lentils are tender, combine them with the curry mixture. Simmer for an additional 10-15 minutes to meld the flavors.',
 7, 21),
('Adjust the seasoning as needed. Serve the vegan lentil curry over rice or with your favorite bread. Enjoy!', 8, 21),


('Preheat the grill. Season chicken breasts with salt and pepper. Grill the chicken until fully cooked, with nice grill marks on each side.',
 1, 22),
('While the chicken is grilling, wash and chop the romaine lettuce into bite-sized pieces. Place them in a large salad bowl.',
 2, 22),
('Slice the grilled chicken into thin strips. Add the chicken strips to the bowl with the romaine lettuce.', 3, 22),
('Pour Caesar dressing over the salad. Toss the salad gently to coat the lettuce and chicken evenly with the dressing.',
 4, 22),
('Sprinkle croutons over the salad. The croutons add a delightful crunch to the salad.', 5, 22),
('Grate Parmesan cheese over the top of the salad. The cheese adds a savory and salty kick to the dish.', 6, 22),
('Toss the salad once more to ensure all ingredients are well combined. Serve the grilled chicken Caesar salad immediately.',
 7, 22),
('Enjoy this delicious and satisfying salad as a light lunch or dinner option!', 8, 22),

-- Roasted Vegetable Quinoa Bowl
('Rinse quinoa under cold water. In a saucepan, combine quinoa with water and bring to a boil. Reduce heat, cover, and simmer until quinoa is cooked.',
 1, 23),
('Preheat the oven. Cut zucchini and bell peppers into bite-sized pieces. Halve the cherry tomatoes. Place the vegetables on a baking sheet.',
 2, 23),
('In a small bowl, mix olive oil, garlic powder, paprika, salt, and black pepper. Drizzle this mixture over the vegetables, ensuring they are evenly coated.',
 3, 23),
('Roast the vegetables in the preheated oven until they are tender and slightly caramelized. Stir occasionally for even roasting.',
 4, 23),
('While the vegetables are roasting, warm the hummus in a small saucepan or microwave. You\'ll use this as a flavorful topping for the bowl.',
 5, 23),
('Fluff the cooked quinoa with a fork. Spoon the quinoa into serving bowls. Top with the roasted vegetables and a generous dollop of hummus.',
 6, 23),
('Garnish with fresh herbs or additional spices if desired. Drizzle with extra olive oil if preferred. Enjoy your nourishing roasted vegetable quinoa bowl!',
 7, 23),


-- Spicy Shrimp Stir-Fry
('Start by cooking rice according to package instructions. Set aside once cooked.', 1, 24),
('In a wok or large pan, heat oil over medium-high heat. Add peeled and deveined shrimp, stir-frying until they turn pink and opaque.',
 2, 24),
('Add thinly sliced broccoli, bell peppers, and julienned carrots to the wok. Stir-fry the vegetables until they are tender-crisp.',
 3, 24),
('In a small bowl, whisk together soy sauce, minced ginger, Sriracha, and minced garlic. Pour the sauce over the shrimp and vegetables.',
 4, 24),
('Continue to stir-fry, ensuring the shrimp and vegetables are well-coated in the spicy sauce. Cook until everything is heated through.',
 5, 24),
('Serve the spicy shrimp stir-fry over the cooked rice. Garnish with chopped green onions or sesame seeds if desired.',
 6, 24),
('Enjoy this quick and flavorful spicy shrimp stir-fry for a delicious and satisfying meal!', 7, 24),

-- Mushroom Risotto
('Clean and slice the mushrooms. In a pan, sauté the mushrooms until they release their moisture and become golden brown. Set aside.',
 1, 25),
('In a separate pot, heat the vegetable or chicken broth. Keep it simmering on low heat throughout the risotto preparation.',
 2, 25),
('In the same pan used for mushrooms, toast Arborio rice over medium heat until the edges become translucent.', 3, 25),
('Begin adding the warm broth to the rice one ladle at a time, stirring frequently. Allow the liquid to be absorbed before adding more.',
 4, 25),
('Continue this process until the rice is creamy and cooked to al dente. This should take about 18-20 minutes. Adjust seasoning as needed.',
 5, 25),
('Gently fold in the sautéed mushrooms, ensuring they are evenly distributed throughout the creamy risotto.', 6, 25),
('Serve the mushroom risotto hot, garnished with freshly chopped parsley and a sprinkle of grated Parmesan cheese if desired.',
 7, 25),
('Indulge in the rich and comforting flavors of this homemade mushroom risotto!', 8, 25),

-- Black Bean and Corn Salad
('Rinse black beans under cold water and drain. In a large mixing bowl, combine black beans and corn kernels.', 1, 26),
('Finely chop red onion and halve the cherry tomatoes. Add them to the bowl with the black beans and corn.', 2, 26),
('Dice ripe avocados and roughly chop Coriander. Gently fold them into the salad mixture, ensuring even distribution.',
 3, 26),
('In a small bowl, whisk together lime juice, olive oil, salt, and black pepper. Pour the dressing over the salad and toss to coat.',
 4, 26),
('Allow the salad to marinate in the refrigerator for at least 15-20 minutes to enhance the flavors.', 5, 26),
('Before serving, give the salad a final toss. Adjust seasoning if necessary. Serve chilled as a refreshing side dish or a light main course.',
 6, 26),
('Enjoy the vibrant colors and flavors of this black bean and corn salad!', 7, 26),

-- Honey Mustard Glazed Salmon
('Preheat the oven. Place salmon fillets on a baking sheet lined with parchment paper.', 1, 27),
('In a small bowl, whisk together Dijon mustard, honey, soy sauce, olive oil, minced garlic, and lemon juice to create the glaze.',
 2, 27),
('Brush the honey mustard glaze generously over each salmon fillet, ensuring they are well-coated on all sides.', 3,
 27),
('Bake the salmon in the preheated oven until it flakes easily with a fork, typically 12-15 minutes depending on thickness.',
 4, 27),
('While baking, baste the salmon with additional glaze halfway through the cooking time for extra flavor.', 5, 27),
('Once done, remove the salmon from the oven. Drizzle any remaining glaze over the top. Serve the salmon hot.', 6, 27),
('Pair this honey mustard glazed salmon with your favorite side dishes for a delicious and wholesome meal!', 7, 27),

-- Caprese Pasta Salad
('Cook the pasta according to the package instructions. Once cooked, drain and let it cool to room temperature.', 1,
 28),
('While the pasta is cooking, halve the cherry tomatoes and cube the mozzarella cheese into bite-sized pieces.', 2, 28),
('Chop fresh basil leaves. In a large mixing bowl, combine the cooled pasta, cherry tomatoes, mozzarella, and basil.',
 3, 28),
('In a small bowl, whisk together balsamic vinegar, olive oil, salt, and black pepper. Pour the dressing over the pasta mixture.',
 4, 28),
('Toss the ingredients gently to ensure the pasta is well-coated with the dressing and the flavors are evenly distributed.',
 5, 28),
('Allow the Caprese pasta salad to chill in the refrigerator for at least 30 minutes to let the flavors meld.', 6, 28),
('Before serving, give the salad a final toss. Adjust seasoning if necessary. Serve chilled as a delightful side or light main course.',
 7, 28),
('Enjoy the freshness of this Caprese pasta salad, perfect for a summer meal!', 8, 28),

-- Chickpea and Spinach Stew
('In a large pot, sauté diced onions in a bit of olive oil until they become translucent. Add minced garlic and cook until fragrant.',
 1, 29),
('Stir in cumin, paprika, and coriander, allowing the spices to toast for a minute and infuse the onion and garlic mixture.',
 2, 29),
('Add chickpeas, tomato paste, and vegetable broth to the pot. Stir well to combine all ingredients.', 3, 29),
('Bring the stew to a simmer and let it cook for about 15-20 minutes, allowing the flavors to meld together.', 4, 29),
('Fold in fresh spinach leaves, letting them wilt into the stew. Stir until the spinach is evenly distributed.', 5, 29),
('Finish the stew by drizzling lemon juice over it. Adjust seasoning if needed, adding more salt or spices to taste.',
 6, 29),
('Serve the chickpea and spinach stew hot, perhaps with a slice of crusty bread. Enjoy this hearty and nutritious dish!',
 7, 29),
('Delight in the wholesome flavors of this chickpea and spinach stew, perfect for a comforting meal!', 8, 29),


-- Teriyaki Tofu Stir-Fry
('Start by cooking rice according to package instructions. Set aside once cooked.', 1, 30),
('Press and drain tofu to remove excess water. Cut tofu into bite-sized cubes. In a wok or large pan, stir-fry tofu until golden brown.',
 2, 30),
('Add thinly sliced broccoli, bell peppers, and julienned carrots to the wok with the tofu. Stir-fry until the vegetables are tender-crisp.',
 3, 30),
('In a small bowl, mix teriyaki sauce, soy sauce, minced ginger, and minced garlic. Pour the sauce over the tofu and vegetables.',
 4, 30),
('Continue to stir-fry, ensuring the tofu and vegetables are well-coated in the flavorful sauce. Cook until everything is heated through.',
 5, 30),
('Serve the teriyaki tofu stir-fry over the cooked rice. Garnish with sliced green onions or sesame seeds if desired.',
 6, 30),
('Indulge in the deliciousness of this teriyaki tofu stir-fry, a perfect blend of flavors and textures!', 7, 30),

-- Pesto Chicken Penne
('Preheat the oven. Season chicken breasts with salt and black pepper. In a pan, heat olive oil and sear the chicken until golden brown on both sides.',
 1, 31),
('Transfer the seared chicken to the oven and roast until fully cooked. Once done, let it rest before slicing into thin strips.',
 2, 31),
('Cook penne pasta according to the package instructions. Drain and set aside.', 3, 31),
('Halve cherry tomatoes and grate Parmesan cheese. In a large mixing bowl, combine cooked penne, sliced chicken, and cherry tomatoes.',
 4, 31),
('Add pesto sauce to the bowl and toss everything together until the pasta and chicken are evenly coated with the pesto.',
 5, 31),
('Sprinkle grated Parmesan cheese over the top. Drizzle with a bit of olive oil for extra richness.', 6, 31),
('Serve the pesto chicken penne hot, garnished with fresh basil if available. Enjoy this flavorful and comforting pasta dish!',
 7, 31),
('Savor the deliciousness of this pesto chicken penne, a perfect blend of vibrant flavors!', 8, 31),

-- Cauliflower and Chickpea Curry
('Chop cauliflower into florets. In a pot, sauté diced onions in oil until translucent. Add minced garlic and grated ginger. Cook until aromatic.',
 1, 32),
('Add curry powder, turmeric, cumin, and coriander to the onion mixture. Stir well to combine and let the spices toast for a minute.',
 2, 32),
('Dice the tomato and add it to the pot. Cook until the tomato breaks down and forms a thick base for the curry.', 3,
 32),
('Pour in coconut milk, stirring to combine with the spice and vegetable mixture. Bring the curry to a gentle simmer.',
 4, 32),
('Add chickpeas and cauliflower florets to the pot. Simmer until the cauliflower is tender and the flavors meld together.',
 5, 32),
('Adjust seasoning as needed. Serve the cauliflower and chickpea curry over rice or with your favorite bread.', 6, 32),
('Enjoy the warmth and richness of this cauliflower and chickpea curry, a delightful and satisfying dish!', 7, 32),
('Savor the comforting flavors of this cauliflower and chickpea curry, perfect for a hearty meal!', 8, 32),


-- Mango Avocado Salsa
('Peel and dice the mangoes and avocados into bite-sized pieces. Finely chop red onion and jalapeño. Place them in a mixing bowl.',
 1, 33),
('Chop fresh Coriander leaves. Add the Coriander to the bowl with the diced mangoes, avocados, red onion, and jalapeño.',
 2, 33),
('In a small bowl, whisk together lime juice, salt, and black pepper. Pour the dressing over the salsa ingredients in the mixing bowl.',
 3, 33),
('Gently toss the ingredients until they are well-coated with the lime dressing and the flavors are evenly distributed.',
 4, 33),
('Let the mango avocado salsa sit for about 10-15 minutes to allow the flavors to meld together.', 5, 33),
('Before serving, give the salsa a final toss. Adjust seasoning if necessary. Serve chilled as a refreshing topping or side dish.',
 6, 33),
('Enjoy the vibrant and tropical flavors of this mango avocado salsa!', 7, 33),
('Savor the freshness of this mango avocado salsa, perfect for enhancing a variety of dishes!', 8, 33),

-- Lemon Garlic Shrimp Pasta
('Start by cooking linguine pasta according to the package instructions. Drain and set aside.', 1, 34),
('While the pasta is cooking, peel and devein the shrimp. In a pan, sauté the shrimp in olive oil until they turn pink and opaque.',
 2, 34),
('Add minced garlic to the pan and sauté until fragrant. Be careful not to burn the garlic.', 3, 34),
('Halve cherry tomatoes and add them to the pan. Stir until the tomatoes soften and release their juices.', 4, 34),
('Fold in fresh spinach leaves, allowing them to wilt into the shrimp and tomato mixture. Stir until the spinach is evenly distributed.',
 5, 34),
('Squeeze lemon juice over the shrimp and vegetables. Sprinkle red pepper flakes for a hint of heat.', 6, 34),
('Add the cooked linguine to the pan and toss everything together until the pasta is well-coated with the flavorful mixture.',
 7, 34),
('Serve the lemon garlic shrimp pasta hot, garnished with additional red pepper flakes and a drizzle of olive oil if desired.',
 8, 34),
('Enjoy the zesty and savory flavors of this lemon garlic shrimp pasta!', 9, 34),

-- Stuffed Bell Peppers
('Preheat the oven. Cut the tops off the bell peppers and remove the seeds and membranes. Brush the outer surface of the peppers with olive oil.',
 1, 35),
('In a pan, sauté diced onions in olive oil until translucent. Add ground beef and cook until browned. Season with salt and black pepper.',
 2, 35),
('Cook quinoa according to package instructions. Once cooked, add the quinoa to the pan with the ground beef and mix well.',
 3, 35),
('Pour tomato sauce into the beef and quinoa mixture. Stir to combine, allowing the flavors to meld.', 4, 35),
('Generously stuff each bell pepper with the beef, quinoa, and tomato mixture. Top each pepper with mozzarella cheese.',
 5, 35),
('Place the stuffed bell peppers in a baking dish. Bake in the preheated oven until the peppers are tender and the cheese is melted and bubbly.',
 6, 35),
('Serve the stuffed bell peppers hot, garnished with fresh herbs if desired. Enjoy this hearty and flavorful dish!', 7,
 35),
('Delight in the savory goodness of these stuffed bell peppers, a wholesome and satisfying meal!', 8, 35),


-- Mediterranean Quinoa Salad
('Rinse quinoa under cold water. In a saucepan, combine quinoa with water and bring to a boil. Reduce heat, cover, and simmer until quinoa is cooked.',
 1, 36),
('While the quinoa is cooking, dice cucumber, halve cherry tomatoes, slice Kalamata olives, and finely chop red onion. Place them in a large salad bowl.',
 2, 36),
('Crumble feta cheese and add it to the bowl with the prepared vegetables. Mix gently to combine.', 3, 36),
('In a small bowl, whisk together olive oil, lemon juice, and oregano. Pour the dressing over the salad and toss to coat.',
 4, 36),
('Allow the Mediterranean quinoa salad to chill in the refrigerator for at least 30 minutes to let the flavors meld.',
 5, 36),
('Before serving, give the salad a final toss. Adjust seasoning if necessary. Serve chilled as a refreshing and nutritious side dish.',
 6, 36),
('Enjoy the vibrant and flavorful combination of ingredients in this Mediterranean quinoa salad!', 7, 36),
('Savor the freshness of this Mediterranean quinoa salad, perfect for a light and satisfying meal!', 8, 36),

-- Vegetarian Pad Thai
('Soak rice noodles in warm water until they are soft and pliable. Drain and set aside.', 1, 37),
('Press and drain tofu to remove excess water. Cut tofu into small cubes. In a wok or large pan, stir-fry tofu until golden brown.',
 2, 37),
('Julienne carrots and chop green onions. Add them to the wok with the tofu, along with bean sprouts.', 3, 37),
('In a small bowl, mix soy sauce, tamarind paste, and Sriracha to create the Pad Thai sauce. Pour the sauce over the tofu and vegetable mixture.',
 4, 37),
('Add soaked rice noodles to the wok. Toss everything together until the noodles are well-coated with the flavorful sauce.',
 5, 37),
('Crush peanuts and sprinkle them over the Pad Thai. Squeeze lime juice over the dish for a burst of freshness.', 6,
 37),
('Continue to stir-fry until all ingredients are heated through and well-mingled.', 7, 37),
('Serve the vegetarian Pad Thai hot, garnished with additional peanuts, lime wedges, and extra Sriracha if desired.', 8,
 37),
('Indulge in the deliciousness of this vegetarian Pad Thai, a perfect blend of flavors and textures!', 9, 37),


-- Lentil and Vegetable Stew
('Rinse lentils under cold water. In a large pot, combine lentils with vegetable broth. Bring to a boil, then reduce heat and simmer.',
 1, 38),
('Dice carrots, celery, and onion. Mince garlic. Add these vegetables to the pot with the simmering lentils.', 2, 38),
('Dice the tomato and add it to the stew. Stir well to combine all the vegetables and lentils.', 3, 38),
('Toss in bay leaves, thyme, and rosemary. These herbs will infuse the stew with aromatic flavors.', 4, 38),
('Simmer the lentil and vegetable stew for about 25-30 minutes or until the lentils are tender and the flavors have melded together.',
 5, 38),
('Remove the bay leaves and adjust seasoning as needed. If the stew is too thick, you can add more vegetable broth to achieve the desired consistency.',
 6, 38),
('Serve the lentil and vegetable stew hot, perhaps with a slice of crusty bread. Enjoy this hearty and nutritious dish!',
 7, 38),
('Delight in the wholesome flavors of this lentil and vegetable stew, perfect for a comforting meal!', 8, 38),

-- Cajun Shrimp and Sausage Skillet
('In a large skillet, heat olive oil over medium-high heat. Add diced onion, celery, and bell peppers. Sauté until the vegetables are tender.',
 1, 39),
('Slice sausage into rounds and add it to the skillet with the sautéed vegetables. Cook until the sausage is browned.',
 2, 39),
('Add minced garlic to the skillet and stir until fragrant. Be careful not to burn the garlic.', 3, 39),
('Toss in Cajun seasoning, paprika, and thyme. Stir well to coat the vegetables and sausage with the flavorful spices.',
 4, 39),
('Add shrimp to the skillet and cook until they turn pink and opaque. Make sure not to overcook the shrimp.', 5, 39),
('Continue to stir everything together until the ingredients are well-mingled and heated through.', 6, 39),
('Serve the Cajun shrimp and sausage skillet hot, perhaps over rice or with crusty bread. Enjoy the bold and spicy flavors!',
 7, 39),
('Indulge in the deliciousness of this Cajun shrimp and sausage skillet, a quick and flavorful dish!', 8, 39),

-- Butternut Squash Risotto
('Peel and dice the butternut squash into small cubes. In a roasting pan, toss the squash with olive oil, salt, and pepper. Roast in the oven until tender and slightly caramelized.',
 1, 40),
('In a pot, heat vegetable broth and keep it simmering on low heat throughout the risotto preparation.', 2, 40),
('In a separate pan, sauté diced onions in olive oil until translucent. Add minced garlic and cook until fragrant.', 3,
 40),
('Add Arborio rice to the pan with the onions and garlic. Stir well to coat the rice in the oil and cook until the edges become translucent.',
 4, 40),
('Pour in white wine and stir until it\'s mostly absorbed by the rice. Begin adding the warm vegetable broth,
 one ladle at a time, stirring frequently.', 5, 40),
('Once the rice is almost cooked,
 fold in the roasted butternut squash cubes, chopped sage, and grated Parmesan cheese.', 6, 40),
(' Continue adding the
 broth until the rice is creamy and cooked to al dente.Adjust seasoning as needed.', 7, 40),
(' Serve the butternut
 squash risotto hot, garnished with additional Parmesan and sage if desired.', 8, 40),
('Indulge in the rich and comforting flavors of this homemade butternut squash risotto!', 9, 40);
SET FOREIGN_KEY_CHECKS = 1;