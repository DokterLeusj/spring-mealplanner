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
       (10, 0, 'Cheese'),
       (11, 0, 'Oil and other fats'),
       (12, 0, 'Fruit'),
       (13, 0, 'Vegetarian protein');

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
       (83, 'Thyme');
INSERT INTO mealplanner_api.ingredient_category (ingredient_id, food_category_id)
VALUES (1, 5),   -- Chicken breast - Meat, Chicken, Animal Product
       (1, 9),
       (1, 6),
       (2, 3),   -- Quinoa - Grains, Vegetarian protein, Gluten
       (2, 13),
       (2, 7),
       (3, 1),   -- Tomato - Vegetables, Fruit
       (3, 12),
       (4, 4),   -- Milk - Dairy, Fruit
       (4, 12),
       (5, 2),   -- Almonds - Nuts, Fruit
       (5, 12),
       (6, 5),   -- Beef - Meat, Animal Product
       (6, 6),
       (7, 8),   -- Garlic - Spices, Vegetables
       (7, 1),
       (8, 1),   -- Broccoli - Vegetables, Vegetarian protein
       (8, 9),
       (9, 3),   -- Wheat - Grains, Gluten, Vegetarian protein
       (9, 7),
       (9, 8),
       (10, 4),  -- Cheese - Dairy, Animal Product
       (10, 6),
       (11, 1),  -- Cabbage - Vegetables
       (12, 5),  -- Ground beef - Meat, Animal Product
       (12, 6),
       (13, 1),  -- Onion - Vegetables
       (14, 1),  -- Tomato paste - Vegetables
       (15, 1),  -- Canned tomatoes - Vegetables
       (16, 8),  -- Oregano - Spices
       (17, 8),  -- Basil - Spices
       (18, 8),  -- Salt - Spices
       (19, 8),  -- Pepper - Spices
       (20, 3),  -- Spaghetti noodles - Grains, Gluten
       (20, 7),
       (21, 4),  -- Parmesan cheese - Dairy, Animal Product
       (21, 6),
       (22, 13), -- Tofu - Vegetarian protein, Grains
       (22, 3),
       (23, 1),  -- Bell peppers - Vegetables
       (24, 1),  -- Carrots - Vegetables
       (25, 1),  -- Snap peas - Vegetables
       (26, 8),  -- Soy sauce - Spices
       (27, 8),  -- Ginger - Spices
       (28, 11), -- Sesame oil - Oil and other fats, Spices
       (28, 8),
       (29, 3),  -- Rice - Grains
       (30, 3),  -- Flour - Grains, Gluten
       (30, 7),
       (31, 3),  -- Bread crumbs - Grains
       (32, 11), -- Olive oil - Oil and other fats, Spices
       (32, 8),
       (33, 8),  -- Marinara sauce - Spices
       (34, 4),  -- Mozzarella cheese - Dairy, Animal Product
       (34, 6),
       (35, 8),  -- Balsamic glaze - Spices
       (36, 3),  -- All-purpose flour - Grains, Gluten
       (36, 7),
       (37, 8),  -- Cocoa powder - Spices
       (38, 8),  -- Baking powder - Spices
       (39, 8),  -- Sugar - Spices
       (40, 11), -- Vegetable oil - Oil and other fats, Spices
       (40, 8),
       (41, 8),  -- Vanilla extract - Spices
       (42, 8),  -- Hot water - Spices
       (43, 6),  -- Salmon fillets - Fish, Animal Product
       (43, 5),
       (44, 1),  -- Lemon - Vegetables, Spices
       (44, 8),
       (45, 8),  -- Dill - Spices
       (46, 3),  -- Arborio rice - Grains, Vegetarian protein
       (46, 7),
       (47, 1),  -- Mushrooms - Vegetables
       (48, 8),  -- Vegetable or chicken broth - Spices
       (49, 8),  -- Butter - Spices
       (50, 5),  -- Greek Salad - Meat, Animal Product
       (50, 6),
       (51, 1),  -- Cucumber - Vegetables
       (52, 1),  -- Red onion - Vegetables
       (53, 1),  -- Kalamata olives - Vegetables
       (54, 4),  -- Feta cheese - Dairy, Animal Product
       (54, 6),
       (55, 1),  -- Red wine vinegar - Vegetables
       (56, 1),  -- Ladyfingers - Vegetables
       (57, 1),  -- Strong brewed coffee - Vegetables
       (58, 4),  -- Mascarpone cheese - Dairy, Animal Product
       (58, 6),
       (59, 4),  -- Taco seasoning - Dairy, Animal Product
       (59, 6),
       (60, 4),  -- Taco shells - Dairy, Animal Product
       (60, 6),
       (61, 1),  -- Lettuce - Vegetables
       (62, 1),  -- Mixed salad greens - Vegetables
       (63, 1),  -- Cherry tomatoes - Vegetables
       (64, 1),  -- Balsamic vinaigrette dressing - Vegetables
       (65, 8),  -- Black beans - Spices
       (66, 8),  -- Corn - Spices
       (67, 8),  -- Cumin - Spices
       (68, 8),  -- Chili powder - Spices
       (69, 11), -- Almond milk - Oil and other fats, Spices
       (69, 12), -- Fruit
       (70, 12), -- Banana - Fruit
       (70, 13), -- Vegetarian protein
       (71, 2),  -- Almond butter - Nuts, Fruit
       (71, 12), -- Oil and other fats
       (72, 5),  -- Honey - Meat, Animal Product
       (72, 6),
       (73, 5),  -- Beef sirloin - Meat, Animal Product
       (73, 6),
       (74, 8),  -- Brown sugar - Spices
       (74, 8),
       (75, 11), -- Cornstarch - Oil and other fats, Spices
       (75, 8),
       (76, 7),  -- Pizza dough - Gluten, Grains
       (76, 3),
       (77, 1),  -- Fresh parsley - Vegetables
       (78, 7),  -- Wheat berries - Gluten, Grains
       (78, 3),
       (79, 8),  -- Dijon mustard - Spices
       (80, 4),  -- Cheddar cheese - Dairy, Animal Product
       (80, 6),
       (81, 1),  -- Green onions - Vegetables
       (82, 1),  -- Cabbage leaves - Vegetables
       (83, 8);  -- Thyme - Spices



# Dietary needs
INSERT INTO mealplanner_api.dietary_need (id, name)
VALUES (1, 'Vegetarian'),
       (2, 'Gluten Free'),
       (3, 'Dairy Free');

# Needs update from mr chatgpt
INSERT INTO mealplanner_api.dietary_need_excluded_category (dietary_need_id, excl_food_category_id)
VALUES (1, 5), -- Vegetarian excludes Chicken
       (1, 9), -- Vegetarian excludes Chicken
       (2, 7), -- Gluten Free excludes Gluten
       (3, 4), -- Dairy Free excludes Dairy
       (3, 10);


# Plans
INSERT INTO mealplanner_api.plan_preference (id, kcal_target, meals_per_day, servings_per_meal)
VALUES (1, 2000, 3, 2),
       (2, 2500, 4, 2),
       (3, 1800, 3, 1);

INSERT INTO mealplanner_api.plan_preference_per_diet (plan_preference_id, dietary_need_id)
VALUES (1, 1), -- Vegetarian
       (2, 2), -- Gluten Free
       (3, 3);

# User
INSERT INTO mealplanner_api.user (email, img_url, password, username, plan_preference_id)
VALUES ('matteo.rossi@example.com', '', '$2y$10$J2Z62ZIkwZptBvK/4eAlSesjOjgy6DkeuhqQCB8ZtLeVoxVSFiP/m',
        'PastaLoverMatteo', 1),
       ('lucas.hoffmann@example.com', '', '$2y$10$Y2E7enZg9i4iIL9QZ1Z66.JH/FZvB2rBaEEf7K4NB6ynB.5c8Y1jK',
        'BeerSnobLucas', 2),
       ('isabel.garcia@example.com', '', '$2y$10$t3c5VrRBbwzMQgZlH8OldeeqS0Uo.B5iXGvFWsWpNMRyZGJrVhjAq',
        'TapasExplorerIsabel', 3),
       ('leo.mueller@example.com', '', '$2y$10$Pbr.rr7xK/0aam5vKjx/BOM4VZEXOVVeP.mU/u6BubofcbahxJQXq',
        'ChocolateLoverLeo', 1),
       ('sophie.leroy@example.com', '', '$2y$10$gNcF77IvEj3CvFsebL6UceDzLrET3RmmviPIi6yfG0rrJF9zJtWi6',
        'CroissantConnoisseurSophie', 2),
       ('giovanni.ferrari@example.com', '', '$2y$10$Xy7hU21wFqXrNpCpIK5u9eApY4Pmm5miWVQj4O2x1GOD62r2wamzG',
        'EspressoLoverGiovanni', 3),
       ('pierre.dupont@example.com', '', '$2y$10$Xn4kwtM34cyU0/q.HRUp6uWz6a9hWvRSZyZYXLR5dxpapBlYDHMFq',
        'FromageLoverPierre', 1),
       ('marie.leclerc@example.com', '', '$2y$10$d3xP3dS4sTTmoFve7wI7r.3cW21tPZZR.GjVcWgj1TBJzVD.W6P0i',
        'BoulangerieMarie', 2),
       ('hiroshi.tanaka@example.com', '', '$2y$10$zF5U7u/fY8Uz5lST9WAF0OmUjjl6OYk4s3gjGfg/vCShH8WAtBdGi',
        'SushiMasterHiroshi', 1),
       ('mei.chen@example.com', '', '$2y$10$HRqSVEsEvSRsIy.VPOnW2OJ0f/wUmCpSTIjVsFYKP5dLhLtBNUhde', 'WokQueenMei', 2),
       ('raj.patil@example.com', '', '$2y$10$V8Eps1AeDfvb.LFmGLymoeTcmq9Q2H5Oz7NDWz4R9GvP3MuKWJUby',
        'CurryConnoisseurRaj', 3),
       ('xia.li@example.com', '', '$2y$10$ycw9w77eziqZRMkE6If.hO2GrCvOxGp1gU5bNrGy5Qzft.KewSYoW', 'DumplingFanXia', 1),
       ('yuki.nakamura@example.com', '', '$2y$10$J9qrwY2Pw5UfHJeD/jghF.PzDoMEdNbnIeUcoQkNLShlN11HrIuJe',
        'RamenLoverYuki', 2),
       ('giorgio.rossi@example.com', '', '$2y$10$rQ5QV/cGhR2W0cVht0W./uHYxxFhj31a/Dav0SK3B3sdVYsPxEq.6',
        'PastaMaestroGiorgio', 3),
       ('hannah.schmidt@example.com', '', '$2y$10$H9z9/zxP4zFnW1PD8QJW1uqVODQPFuT5mm2O8Q7Q9WYVgmXpbcBbW',
        'SausageQueenHannah', 2),
       ('antonio.moreno@example.com', '', '$2y$10$9X1jGCVx1IJgCZ6YlRDfa.G1L/mZ6ZnILQJUdS99R4gU2tayBslcW',
        'PizzaProAntonio', 3),
       ('hanna.andersson@example.com', '', '$2y$10$opq/xAuYMaQJFZrtphw5DOytZjT3J0T/hBHzZ6.QR/bG2A4UD9d9m',
        'ScandinavianFeastHanna', 1),
       ('andreas.schmidt@example.com', '', '$2y$10$H9z9/zxP4zFnW1PD8QJW1uqVODQPFuT5mm2O8Q7Q9WYVgmXpbcBbW',
        'SausageKingAndreas', 2),
       ('nina.van-der-berg@example.com', '', '$2y$10$nLV5VucNcsx8yvDfr2HC0eLMHtDhWfzQZ0j3fK9TRSHVbnAQTUzOW',
        'DutchTreatNina', 3),
       ('luca.moretti@example.com', '', '$2y$10$9X1jGCVx1IJgCZ6YlRDfa.G1L/mZ6ZnILQJUdS99R4gU2tayBslcW', 'PizzaFanLuca',
        1),
       ('anna.jensen@example.com', '', '$2y$10$LxlNOFSq3JpUDL1s4/YYfeRRFAOS8XRTWZRH.p9ZMmGyYc1yqFfg.', 'HyggeAnna', 2),
       ('marco.conti@example.com', '', '$2y$10$RFoHqOTgj9mIwYjfgSTED.g5EOw4zOQa0ReY2KgUejmBzVHrsDtFm',
        'GelatoLoverMarco', 3),
       ('alina.petrov@example.com', '', '$2y$10$G4DgV2yJ50pE/CfIGiJ35.N.9zIiowAWrXIMs9./T6W0.4HtjAhMe',
        'VodkaConnoisseurAlina', 1),
       ('maxim.sokolov@example.com', '', '$2y$10$HlWdEN/jBzATyjS7blGwH.hX/8G5IR/aA.n/Iyx.kDIm/kcRGKoEu',
        'BorschtLoverMaxim', 2),
       ('livia.silva@example.com', '', '$2y$10$9E4IsGyM76HJ3enxPOOb7udkd7dZPb5G.jfzL/kn4HlOfeC3/sMai',
        'PortugueseFlavorsLivia', 3),
       ('maria.smith@example.com', '', '$2y$10$h15hReHPo/OZ0bKZdLUZU.FVU5c5k/2kjGrdtn7z6KQ2.nITDJF5C', 'FoodieMaria',
        2),
       ('ali.khan@example.com', '', '$2y$10$9kbyA9cIlj8NldwGG5u3/.2m2/Ay1y9/wZHqisWUovXSzziCbkgxu', 'SpiceMasterAli',
        3),
       ('emily.jones@example.com', '', '$2y$10$GsKEK7ZR9mtHcJXoV6VKbOMTj1Z3vXT67aOofTW.aYsLg6MT7zvmq',
        'BakingEnthusiast', 1),
       ('javier.rodriguez@example.com', '', '$2y$10$aRzWV5KyH6sXIL/MK1BpQuy.0QVgWlHFEJGH9QAK2yLoowhF.BwXe',
        'GrillMasterJavier', 2),
       ('lisa.nguyen@example.com', '', '$2y$10$mrOHMFE5JYQ1WsPFHJChV..Iy2zXYczMLrpsvYY3RFSr1q5sJ5fsG',
        'HealthyEaterLisa', 3),
       ('adam.smith@example.com', '', '$2y$10$8RUp8g6TYszWdygyulxN2e9gGhT9jfcCQv54.JzK7e98QqFtQc7MK', 'HomeChefAdam',
        1),
       ('sophia.martinez@example.com', '', '$2y$10$HZsmIqtIGnCVkW1LsL66k.DzCKJkMPQWex44UxS0WEv0EOWA4T4Pq',
        'FoodExplorerSophia', 2),
       ('nathan.jones@example.com', '', '$2y$10$ymf2.LISLj7rquBq22z8XO33QFt9Y/OnVsnfIN8opORPFjS0aJZHe',
        'MasterTasterNathan', 3),
       ('zara.lee@example.com', '', '$2y$10$1y82X2.JLP7Jp6WbGX7cYeMx5g3HbjT0HW2sYlPI9ynAZraLqazpK', 'ZestyZara', 1),
       ('mohammed.ali@example.com', '', '$2y$10$ymW2lfTnUn8YFZT5b5Qp8O1hwL2lQtfUj9zX11xAMhB3d2BB1fEmy',
        'QuickCookMohammed', 2),
       ('olivia.smith@example.com', '', '$2y$10$FkINMFcx9fmompsOM5Gn0OpV23Z3IlTZjK.33X24zccZU/Ff3w17q',
        'EpicureanOlivia', 3),
       ('luke.jones@example.com', '', '$2y$10$pA/PHns1epGb8ybBdop/D.BpNY5sgE/bDjA4c3hTtAC6Ju9H15MJe', 'GourmetLuke', 1),
       ('mia.rodriguez@example.com', '', '$2y$10$Q86AqCzZdJX/lMoz8EaGbez9hd2R3B7rPUVo4E7CMogdYvi4xlUz6',
        'TasteExplorerMia', 2),
       ('aiden.nguyen@example.com', '', '$2y$10$0K/w0I/kJdbm2VbA4gizPuxNCJUb6vBrpFdYi2YsHwW7VX1z.T1OS',
        'FlavorAdventurerAiden', 3),
       ('ella.smith@example.com', '', '$2y$10$A4eYTr0G0NS8RpdONN2bfuAZCwlsf0DXWcn92rHQT8rI/2Yby4N1e', 'SensoryElla', 1),
       ('liam.martinez@example.com', '', '$2y$10$1a1p8cHkpSS1k4.5mjeAKujJ1q/Z1VDgNjxxCpEFWk98xjHek8gSK',
        'FlavorConnoisseurLiam', 2),
       ('ava.jones@example.com', '', '$2y$10$tODU9t04ktX4iK0ZvXbRMeNL8mrnt4aOScjUs2nhqzYbj6Pllc.ZK', 'SeasonedAva', 3),
       ('logan.lee@example.com', '', '$2y$10$Hm8PDWPlzso6HN4ex5rtOeHfj.V7/XsIpQSSfOZGFirZ4g8yE2xg2', 'UmamiLogan', 1),
       ('emma.khan@example.com', '', '$2y$10$VJf2Bk4HADOFi9A24fEDBu5IUa7gyKuZ.xGufPSvZTCCivmL3eZGW', 'FlavorfulEmma',
        2),
       ('kwesi.boateng@example.com', '', '$2y$10$ex0zXT2ZyutXj8CPs2l0p.M1j6DE.YAIKReS3awZcOnCf4MavfMve',
        'JollofKingKwesi', 1),
       ('nneka.uzoma@example.com', '', '$2y$10$rCSaIgGQ2a/2WGfoLgsrM..lLP1Sc4aykvxC8JyQ86fXmjBnCbgF2',
        'AfroCuisineNneka', 2),
       ('sizwe.ndlovu@example.com', '', '$2y$10$UjeqqqW8aIKd7zYF1g1M6./8B2kP2es27pxEMc6U52TZa.MRW8CfG',
        'BraaiMasterSizwe', 3),
       ('akio.yamamoto@example.com', '', '$2y$10$Oqap9yBHKqtetMvzy8G3FOGjZGcvOT5LLv4dWiAHj8VRSpHvRTYkG',
        'TempuraLoverAkio', 1),
       ('ji-eun.kim@example.com', '', '$2y$10$5JQJOeEHs.k8gUte6sDpfeTAvqitk8rmVXxcupAQ4GCl/GamAgG9C',
        'KimchiQueenJiEun', 2),
       ('rajiv.patel@example.com', '', '$2y$10$ua.kBc57P1i0/sveDMepW.jwPrbZfGg5g3O1Ij6fJH03B5bplPYAe',
        'BiryaniMasterRajiv', 3),
       ('owen.nguyen@example.com', '', '$2y$10$xEcBsWiZU/yKPiXDP45TZO98wV0SySsPZ7lUwFQdCQcAl4A34tIwe', 'EpicureOwen',
        3),
       ('abigail.smith@example.com', '', '$2y$10$ylE3vJUz5NKvYbmtL1KXN.3RBJ29rDhjRGSN5hSYGwdHfzRPEryyy',
        'PalateExplorerAbigail', 1),
       ('noah.rodriguez@example.com', '', '$2y$10$ZQeT4W/s7VTiU/qVHRZsGeORwLwKGiE1qT86kfPp5O0V5lglBlzBa', 'GourmetNoah',
        2),
       ('kwame.boateng@example.com', '', '$2y$10$PGOzOvYkVEc.kt8qzqlb7uRWeRCbnWtm95LZKs8ljiI9oyWq9cUWq',
        'JollofKingKwame', 1),
       ('aminata.toure@example.com', '', '$2y$10$51/F1vFEVDAkhS/Z3LofrOn.RXsjyq2lHPVfcIJPlpRPEd3k8sZDy',
        'AfroCuisineAminata', 2),
       ('thabo.ndlovu@example.com', '', '$2y$10$buLc7SgRFZYNRQ19nUqLruZuJMg3C7XW28DP0Bl/mc3FEQi4Csp/W',
        'BraaiMasterThabo', 3),
       ('fatima.kwame@example.com', '', '$2y$10$5BVL2jFugIVk6c53R1nCrOvum0zU0.GbNc50lO.QrM9CeZFr7nO3y', 'SpicyFatima',
        1),
       ('simba.nkosi@example.com', '', '$2y$10$O5eXz17ubrrSylXTcM3Rsevbk4M.NOe6Yujauq2U8PioVeLrFvZZ2',
        'SafariExplorerSimba', 2);

# Recipes
INSERT INTO mealplanner_api.food_unit (id, name)
VALUES (1, 'grams'),
       (2, 'pieces'),
       (3, 'clove'),
       (4, 'l'),
       (5, 'tbs'),
       (6, '');
INSERT INTO mealplanner_api.recipe (id, description, name, nutri_tech, author_id)
VALUES (1, 'Classic Italian pasta dish with savory Bolognese sauce.', 'Spaghetti Bolognese', 0, 1),
       (2, 'Colorful and nutritious stir-fry with a variety of vegetables.', 'Vegetarian Stir-Fry', 0, 2),
       (3, 'Crispy chicken cutlets topped with marinara sauce and melted cheese.', 'Chicken Parmesan', 0, 1),
       (4, 'Refreshing salad featuring tomatoes, mozzarella, and basil.', 'Caprese Salad', 0, 2),
       (5, 'Indulgent and moist chocolate cake for a sweet treat.', 'Chocolate Cake', 0, 3),
       (6, 'Healthy and flavorful grilled salmon fillets.', 'Grilled Salmon', 0, 6),
       (7, 'Creamy and comforting risotto with savory mushrooms.', 'Mushroom Risotto', 0, 2),
       (8, 'Traditional Greek salad with fresh vegetables and feta cheese.', 'Greek Salad', 0, 8),
       (9, 'Classic Italian dessert with layers of coffee-soaked ladyfingers and mascarpone cream.', 'Tiramisu', 0, 9),
       (10, 'Savory beef tacos with a variety of toppings.', 'Beef Tacos', 0, 10),
       (11, 'Light and nutritious salad with grilled chicken and fresh greens.', 'Grilled Chicken Salad', 0, 11),
       (12, 'Quinoa-filled bell peppers for a wholesome and tasty dish.', 'Quinoa Stuffed Peppers', 0, 12),
       (13, 'Delicious pasta dish featuring tomatoes and basil.', 'Tomato Basil Pasta', 0, 13),
       (14, 'Smooth and nutritious almond milk smoothie.', 'Almond Milk Smoothie', 0, 14),
       (15, 'Stir-fried beef and broccoli in a flavorful sauce.', 'Beef and Broccoli Stir-Fry', 0, 15),
       (16, 'Garlic-infused breadsticks with Parmesan for a delightful side.', 'Garlic Parmesan Breadsticks', 0, 16),
       (17, 'Wholesome salad with wheat berries, vegetables, and dressing.', 'Wheat Berry Salad', 0, 17),
       (18, 'Cheesy omelette with a variety of ingredients.', 'Cheese Omelette', 0, 18),
       (19, 'Classic egg fried rice with a medley of flavors.', 'Egg Fried Rice', 0, 19),
       (20, 'Stuffed cabbage leaves with a flavorful filling.', 'Cabbage Rolls', 0, 20);

INSERT INTO mealplanner_api.recipe_ingredient (id, qty, ingredient_id, unit_id)
VALUES
    (1, 250, 1, 1),   -- Ground beef (Qty: 250 grams)
    (2, 1, 2, 2),     -- Onion (Qty: 1 piece)
    (3, 3, 3, 3),     -- Garlic (Qty: 3 cloves)
    (4, 150, 4, 5),   -- Tomato paste (Qty: 150 grams)
    (5, 400, 5, 4),   -- Canned tomatoes (Qty: 400 grams)
    (6, 1, 6, 5),     -- Oregano (Qty: 1 tsp)
    (7, 1, 7, 5),     -- Basil (Qty: 1 tsp)
    (8, 1, 8, 5),     -- Salt (Qty: 1 tsp)
    (9, 0.5, 9, 5),   -- Pepper (Qty: 0.5 tsp)
    (10, 300, 10, 1),  -- Spaghetti noodles (Qty: 300 grams)
    (11, 100, 11, 1),  -- Parmesan cheese (Qty: 100 grams)
    (12, 200, 12, 1),  -- Tofu (Qty: 200 grams)
    (13, 1, 13, 1),    -- Broccoli (Qty: 1 piece)
    (14, 2, 14, 1),    -- Bell peppers (Qty: 2 pieces)
    (15, 150, 15, 1),  -- Carrots (Qty: 150 grams)
    (16, 100, 16, 1),  -- Snap peas (Qty: 100 grams)
    (17, 50, 17, 5),   -- Soy sauce (Qty: 50 ml)
    (18, 1, 18, 1),    -- Ginger (Qty: 1 piece)
    (19, 2, 19, 4),    -- Sesame oil (Qty: 2 tbs)
    (20, 200, 20, 1),  -- Rice (Qty: 200 grams)
    (21, 150, 21, 1),  -- Flour (Qty: 150 grams)
    (22, 100, 22, 1),  -- Bread crumbs (Qty: 100 grams)
    (23, 30, 23, 4),   -- Olive oil (Qty: 30 ml)
    (24, 500, 24, 4),  -- Marinara sauce (Qty: 500 ml)
    (25, 200, 25, 1),  -- Mozzarella cheese (Qty: 200 grams)
    (26, 30, 26, 5),   -- Balsamic glaze (Qty: 30 ml)
    (27, 200, 27, 1),  -- All-purpose flour (Qty: 200 grams)
    (28, 30, 28, 5),   -- Cocoa powder (Qty: 30 grams)
    (29, 10, 29, 5),   -- Baking powder (Qty: 10 grams)
    (30, 100, 30, 5),  -- Sugar (Qty: 100 grams)
    (31, 30, 31, 4),   -- Vegetable oil (Qty: 30 ml)
    (32, 5, 32, 5),    -- Vanilla extract (Qty: 5 ml)
    (33, 30, 33, 4),   -- Hot water (Qty: 30 ml)
    (34, 200, 34, 1),  -- Salmon fillets (Qty: 200 grams)
    (35, 1, 35, 2),    -- Lemon (Qty: 1 piece)
    (36, 5, 36, 5),    -- Dill (Qty: 5 grams)
    (37, 200, 37, 1),  -- Arborio rice (Qty: 200 grams)
    (38, 150, 38, 1),  -- Mushrooms (Qty: 150 grams)
    (39, 500, 39, 4),  -- Vegetable or chicken broth (Qty: 500 ml)
    (40, 50, 40, 5),   -- Butter (Qty: 50 grams)
    (41, 1, 41, 2),    -- Cucumber (Qty: 1 piece)
    (42, 1, 42, 2),    -- Red onion (Qty: 1 piece)
    (43, 100, 43, 1),  -- Kalamata olives (Qty: 100 grams)
    (44, 150, 44, 1),  -- Feta cheese (Qty: 150 grams)
    (45, 30, 45, 4),   -- Red wine vinegar (Qty: 30 ml)
    (46, 100, 46, 2),  -- Ladyfingers (Qty: 100 grams)
    (47, 250, 47, 4),  -- Strong brewed coffee (Qty: 250 ml)
    (48, 250, 48, 1),  -- Mascarpone cheese (Qty: 250 grams)
    (49, 1, 49, 1),    -- Taco seasoning (Qty: 1 piece)
    (50, 8, 50, 1),    -- Taco shells (Qty: 8 pieces)
    (51, 100, 51, 1),  -- Lettuce (Qty: 100 grams)
    (52, 100, 52, 1),  -- Mixed salad greens (Qty: 100 grams)
    (53, 150, 53, 2),  -- Cherry tomatoes (Qty: 150 grams)
    (54, 50, 54, 5),   -- Balsamic vinaigrette dressing (Qty: 50 ml)
    (55, 200, 55, 5),  -- Black beans (Qty: 200 grams)
    (56, 150, 56, 5),  -- Corn (Qty: 150 grams)
    (57, 1, 57, 5),    -- Cumin (Qty: 1 tsp)
    (58, 1, 58, 5),    -- Chili powder (Qty: 1 tsp)
    (59, 250, 59, 4),  -- Almond milk (Qty: 250 ml)
    (60, 1, 60, 2),    -- Banana (Qty: 1 piece)
    (61, 30, 61, 5),   -- Almond butter (Qty: 30 grams)
    (62, 30, 62, 1),   -- Honey (Qty: 30 grams)
    (63, 200, 63, 1),  -- Beef sirloin (Qty: 200 grams)
    (64, 50, 64, 5),   -- Brown sugar (Qty: 50 grams)
    (65, 20, 65, 5),   -- Cornstarch (Qty: 20 grams)
    (66, 500, 66, 1),  -- Pizza dough (Qty: 500 grams)
    (67, 5, 67, 1),    -- Fresh parsley (Qty: 5 grams)
    (68, 150, 68, 1),  -- Wheat berries (Qty: 150 grams)
    (69, 1, 69, 5),    -- Dijon mustard (Qty: 1 tsp)
    (70, 100, 70, 1),  -- Cheddar cheese (Qty: 100 grams)
    (71, 2, 71, 1),    -- Green onions (Qty: 2 pieces)
    (72, 12, 72, 1),   -- Cabbage leaves (Qty: 12 pieces)
    (73, 1, 73, 5);    -- Thyme (Qty: 1 tsp)

INSERT INTO mealplanner_api.recipe_recipe_ingredient (recipe_id, recipe_ingredient_id)
VALUES
-- Spaghetti Bolognese
(1, 1),  -- Qty: 250 grams Ground beef
(1, 2),  -- Qty: 1 piece Onion
(1, 3),  -- Qty: 3 cloves Garlic
(1, 4),  -- Qty: 150 grams Tomato paste
(1, 5),  -- Qty: 400 grams Canned tomatoes
(1, 6),  -- Qty: 1 tsp Oregano
(1, 7),  -- Qty: 1 tsp Basil
(1, 8),  -- Qty: 1 tsp Salt
(1, 9),  -- Qty: 0.5 tsp Pepper
(1, 10), -- Qty: 300 grams Spaghetti noodles
(1, 11), -- Qty: 100 grams Parmesan cheese

-- Vegetarian Stir-Fry
(2, 6),  -- Qty: 300 grams Chicken breast
(2, 7),  -- Qty: 150 grams Broccoli
(2, 8),  -- Qty: 100 grams Bell peppers
(2, 9),  -- Qty: 50 grams Carrots
(2, 10), -- Qty: 50 grams Snap peas
(2, 11), -- Qty: 30 tbsp Soy sauce
(2, 12), -- Qty: 20 tbsp Ginger
(2, 13), -- Qty: 15 tbsp Sesame oil
(2, 14), -- Qty: 200 grams Rice

-- Chicken Parmesan
(3, 15), -- Qty: 300 grams Chicken breast
(3, 16), -- Qty: 200 grams Tomato paste
(3, 17), -- Qty: 400 grams Canned tomatoes
(3, 18), -- Qty: 10 tbsp Oregano
(3, 19), -- Qty: 10 tbsp Basil
(3, 20), -- Qty: 5 tbsp Salt

-- Caprese Salad
(4, 21), -- Qty: 150 grams Flour
(4, 22), -- Qty: 100 grams Bread crumbs
(4, 23), -- Qty: 30 ml Olive oil
(4, 24), -- Qty: 500 ml Marinara sauce

-- Chocolate Cake
(5, 25), -- Qty: 200 grams Mozzarella cheese
(5, 26), -- Qty: 30 ml Balsamic glaze
(5, 27), -- Qty: 200 grams All-purpose flour
(5, 28), -- Qty: 30 grams Cocoa powder

-- Grilled Salmon
(6, 29), -- Qty: 200 grams Salmon fillets
(6, 30), -- Qty: 1 piece Lemon
(6, 31), -- Qty: 5 grams Dill
(6, 32), -- Qty: 200 grams Arborio rice

-- Mushroom Risotto
(7, 33), -- Qty: 150 grams Mushrooms
(7, 34), -- Qty: 500 ml Vegetable or chicken broth
(7, 35), -- Qty: 50 grams Butter
(7, 36), -- Qty: 1 piece Cucumber
(7, 37), -- Qty: 1 piece Red onion

-- Greek Salad
(8, 38), -- Qty: 100 grams Kalamata olives
(8, 39), -- Qty: 150 grams Feta cheese
(8, 40), -- Qty: 30 ml Red wine vinegar

-- Tiramisu
(9, 41), -- Qty: 200 grams Ladyfingers
(9, 42), -- Qty: 250 ml Strong brewed coffee
(9, 43), -- Qty: 250 grams Mascarpone cheese
(9, 44), -- Qty: 1 piece Taco seasoning
(9, 45), -- Qty: 8 pieces Taco shells

-- Beef Tacos
(10, 46), -- Qty: 100 grams Lettuce
(10, 47), -- Qty: 100 grams Mixed salad greens
(10, 48), -- Qty: 150 grams Cherry tomatoes
(10, 49), -- Qty: 50 ml Balsamic vinaigrette dressing

-- Grilled Chicken Salad
(11, 50), -- Qty: 200 grams Black beans
(11, 51), -- Qty: 150 grams Corn
(11, 52), -- Qty: 1 tsp Cumin
(11, 53), -- Qty: 1 tsp Chili powder
(11, 54), -- Qty: 250 ml Almond milk
(11, 55), -- Qty: 1 piece Banana
(11, 56), -- Qty: 30 grams Almond butter
(11, 57), -- Qty: 30 grams Honey
(11, 58), -- Qty: 200 grams Beef sirloin
(11, 59), -- Qty: 50 grams Brown sugar
(11, 60), -- Qty: 20 grams Cornstarch
(11, 61), -- Qty: 500 grams Pizza dough
(11, 62), -- Qty: 5 grams Fresh parsley
(11, 63), -- Qty: 150 grams Wheat berries
(11, 64), -- Qty: 1 tsp Dijon mustard
(11, 65), -- Qty: 100 grams Cheddar cheese
(11, 66), -- Qty: 2 pieces Green onions
(11, 67), -- Qty: 12 pieces Cabbage leaves
(11, 68); -- Qty: 1 tsp Thyme






