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
       (83, 8);
-- Thyme - Spices


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
        'SafariExplorerSimba', 2),
    ('someone@someone.com','','$2a$10$c/4CredT0C7DWe7/SyEJqOvRXGgIDvNah36kXswpkuMhSAGs7wBqu', 'someone','3');

# Recipes
INSERT INTO mealplanner_api.food_unit (id, name)
VALUES (1, 'grams'),
       (2, 'pieces'),
       (3, 'clove'),
       (4, 'l'),
       (5, 'tbs'),
       (6, '');

INSERT INTO mealplanner_api.recipe (id, description, img_url, name, nutri_tech, author_id)
VALUES (1, 'Classic Italian pasta dish with savory Bolognese sauce.', null, 'Spaghetti Bolognese', false, 1),
       (2, 'Colorful and nutritious stir-fry with a variety of vegetables.', null, 'Vegetarian Stir-Fry', false, 2),
       (3, 'Crispy chicken cutlets topped with marinara sauce and melted cheese.', null, 'Chicken Parmesan', false, 1),
       (4, 'Refreshing salad featuring tomatoes, mozzarella, and basil.', null, 'Caprese Salad', false, 2),
       (5, 'Indulgent and moist chocolate cake for a sweet treat.', null, 'Chocolate Cake', false, 3),
       (6, 'Healthy and flavorful grilled salmon fillets.', null, 'Grilled Salmon', false, 6),
       (7, 'Creamy and comforting risotto with savory mushrooms.', null, 'Mushroom Risotto', false, 2),
       (8, 'Traditional Greek salad with fresh vegetables and feta cheese.', null, 'Greek Salad', false, 8),
       (9, 'Classic Italian dessert with layers of coffee-soaked ladyfingers and mascarpone cream.', null, 'Tiramisu',
        false, 9),
       (10, 'Savory beef tacos with a variety of toppings.', null, 'Beef Tacos', false, 10),
       (11, 'Light and nutritious salad with grilled chicken and fresh greens.', null, 'Grilled Chicken Salad', false,
        11),
       (12, 'Quinoa-filled bell peppers for a wholesome and tasty dish.', null, 'Quinoa Stuffed Peppers', false, 12),
       (13, 'Delicious pasta dish featuring tomatoes and basil.', null, 'Tomato Basil Pasta', false, 13),
       (14, 'Smooth and nutritious almond milk smoothie.', null, 'Almond Milk Smoothie', false, 14),
       (15, 'Stir-fried beef and broccoli in a flavorful sauce.', null, 'Beef and Broccoli Stir-Fry', false, 15),
       (16, 'Garlic-infused breadsticks with Parmesan for a delightful side.', null, 'Garlic Parmesan Breadsticks',
        false, 16),
       (17, 'Wholesome salad with wheat berries, vegetables, and dressing.', null, 'Wheat Berry Salad', false, 17),
       (18, 'Cheesy omelette with a variety of ingredients.', null, 'Cheese Omelette', false, 18),
       (19, 'Classic egg fried rice with a medley of flavors.', null, 'Egg Fried Rice', false, 19),
       (20, 'Stuffed cabbage leaves with a flavorful filling.', null, 'Cabbage Rolls', false, 20);


INSERT INTO mealplanner_api.recipe_ingredient (id, qty, ingredient_id, unit_id)
VALUES (1, 250, 12, 1),  -- Ground beef (Qty: 250 grams)
       (2, 1, 13, 2),    -- Onion (Qty: 1 piece)
       (3, 3, 7, 3),     -- Garlic (Qty: 3 cloves)
       (4, 150, 14, 5),  -- Tomato paste (Qty: 150 grams)
       (5, 400, 15, 4),  -- Canned tomatoes (Qty: 400 grams)
       (6, 1, 6, 5),     -- Oregano (Qty: 1 tsp)
       (7, 1, 17, 5),    -- Basil (Qty: 1 tsp)
       (8, 1, 18, 5),    -- Salt (Qty: 1 tsp)
       (9, 0.5, 19, 5),  -- Pepper (Qty: 0.5 tsp)
       (10, 300, 20, 1), -- Spaghetti noodles (Qty: 300 grams)
       (11, 100, 21, 1), -- Parmesan cheese (Qty: 100 grams)
       (12, 200, 22, 1), -- Tofu (Qty: 200 grams)
       (13, 1, 8, 5),    -- Broccoli (Qty: 1 piece)
       (14, 2, 23, 1),   -- Bell peppers (Qty: 2 pieces)
       (15, 150, 24, 1), -- Carrots (Qty: 150 grams)
       (16, 100, 25, 1), -- Snap peas (Qty: 100 grams)
       (17, 50, 26, 5),  -- Soy sauce (Qty: 50 ml)
       (18, 1, 27, 1),   -- Ginger (Qty: 1 piece)
       (19, 2, 28, 5),   -- Sesame oil (Qty: 2 tbs)
       (20, 200, 29, 1), -- Rice (Qty: 200 grams)
       (21, 150, 30, 1), -- Flour (Qty: 150 grams)
       (22, 100, 31, 1), -- Bread crumbs (Qty: 100 grams)
       (23, 30, 32, 4),  -- Olive oil (Qty: 30 ml)
       (24, 500, 33, 4), -- Marinara sauce (Qty: 500 ml)
       (25, 200, 34, 1), -- Mozzarella cheese (Qty: 200 grams)
       (26, 30, 35, 5),  -- Balsamic glaze (Qty: 30 ml)
       (27, 200, 36, 1), -- All-purpose flour (Qty: 200 grams)
       (28, 30, 37, 5),  -- Cocoa powder (Qty: 30 grams)
       (29, 10, 38, 5),  -- Baking powder (Qty: 10 grams)
       (30, 100, 39, 5), -- Sugar (Qty: 100 grams)
       (31, 30, 40, 4),  -- Vegetable oil (Qty: 30 ml)
       (32, 5, 41, 5),   -- Vanilla extract (Qty: 5 ml)
       (33, 30, 42, 4),  -- Hot water (Qty: 30 ml)
       (34, 200, 43, 1), -- Salmon fillets (Qty: 200 grams)
       (35, 1, 44, 2),   -- Lemon (Qty: 1 piece)
       (36, 5, 45, 5),   -- Dill (Qty: 5 grams)
       (37, 200, 46, 1), -- Arborio rice (Qty: 200 grams)
       (38, 150, 47, 1), -- Mushrooms (Qty: 150 grams)
       (39, 500, 48, 4), -- Vegetable or chicken broth (Qty: 500 ml)
       (40, 50, 49, 5),  -- Butter (Qty: 50 grams)
       (41, 1, 51, 2),   -- Cucumber (Qty: 1 piece)
       (42, 1, 52, 2),   -- Red onion (Qty: 1 piece)
       (43, 100, 53, 1), -- Kalamata olives (Qty: 100 grams)
       (44, 150, 54, 1), -- Feta cheese (Qty: 150 grams)
       (45, 30, 55, 4),  -- Red wine vinegar (Qty: 30 ml)
       (46, 100, 56, 2), -- Ladyfingers (Qty: 100 grams)
       (47, 250, 57, 4), -- Strong brewed coffee (Qty: 250 ml)
       (48, 250, 58, 1), -- Mascarpone cheese (Qty: 250 grams)
       (49, 1, 59, 1),   -- Taco seasoning (Qty: 1 piece)
       (50, 8, 60, 1),   -- Taco shells (Qty: 8 pieces)
       (51, 100, 61, 1), -- Lettuce (Qty: 100 grams)
       (52, 100, 62, 1), -- Mixed salad greens (Qty: 100 grams)
       (53, 150, 63, 2), -- Cherry tomatoes (Qty: 150 grams)
       (54, 50, 64, 5),  -- Balsamic vinaigrette dressing (Qty: 50 ml)
       (55, 200, 65, 5), -- Black beans (Qty: 200 grams)
       (56, 150, 66, 5), -- Corn (Qty: 150 grams)
       (57, 1, 67, 5),   -- Cumin (Qty: 1 tsp)
       (58, 1, 68, 5),   -- Chili powder (Qty: 1 tsp)
       (59, 250, 69, 4), -- Almond milk (Qty: 250 ml)
       (60, 1, 70, 2),   -- Banana (Qty: 1 piece)
       (61, 30, 71, 5),  -- Almond butter (Qty: 30 grams)
       (62, 30, 72, 1),  -- Honey (Qty: 30 grams)
       (63, 200, 73, 1), -- Beef sirloin (Qty: 200 grams)
       (64, 50, 74, 5),  -- Brown sugar (Qty: 50 grams)
       (65, 20, 75, 5),  -- Cornstarch (Qty: 20 grams)
       (66, 500, 76, 1), -- Pizza dough (Qty: 500 grams)
       (67, 5, 77, 1),   -- Fresh parsley (Qty: 5 grams)
       (68, 150, 78, 1), -- Wheat berries (Qty: 150 grams)
       (69, 1, 79, 5),   -- Dijon mustard (Qty: 1 tsp)
       (70, 100, 80, 1), -- Cheddar cheese (Qty: 100 grams)
       (71, 2, 81, 1),   -- Green onions (Qty: 2 pieces)
       (72, 12, 82, 1),  -- Cabbage leaves (Qty: 12 pieces)
       (73, 1, 83, 5); -- Thyme (Qty: 1 tsp)


INSERT INTO mealplanner_api.recipe_recipe_ingredient (recipe_id, recipe_ingredient_id)
VALUES
-- Spaghetti Bolognese
(1, 1),   -- Qty: 250 grams Ground beef
(1, 2),   -- Qty: 1 piece Onion
(1, 3),   -- Qty: 3 cloves Garlic
(1, 4),   -- Qty: 150 grams Tomato paste
(1, 5),   -- Qty: 400 grams Canned tomatoes
(1, 6),   -- Qty: 1 tsp Oregano
(1, 7),   -- Qty: 1 tsp Basil
(1, 8),   -- Qty: 1 tsp Salt
(1, 9),   -- Qty: 0.5 tsp Pepper
(1, 10),  -- Qty: 300 grams Spaghetti noodles
(1, 11),  -- Qty: 100 grams Parmesan cheese

-- Vegetarian Stir-Fry
(2, 6),   -- Qty: 300 grams Chicken breast
(2, 7),   -- Qty: 150 grams Broccoli
(2, 8),   -- Qty: 100 grams Bell peppers
(2, 9),   -- Qty: 50 grams Carrots
(2, 10),  -- Qty: 50 grams Snap peas
(2, 11),  -- Qty: 30 tbsp Soy sauce
(2, 12),  -- Qty: 20 tbsp Ginger
(2, 13),  -- Qty: 15 tbsp Sesame oil
(2, 14),  -- Qty: 200 grams Rice

-- Chicken Parmesan
(3, 15),  -- Qty: 300 grams Chicken breast
(3, 16),  -- Qty: 200 grams Tomato paste
(3, 17),  -- Qty: 400 grams Canned tomatoes
(3, 18),  -- Qty: 10 tbsp Oregano
(3, 19),  -- Qty: 10 tbsp Basil
(3, 20),  -- Qty: 5 tbsp Salt

-- Caprese Salad
(4, 21),  -- Qty: 150 grams Flour
(4, 22),  -- Qty: 100 grams Bread crumbs
(4, 23),  -- Qty: 30 ml Olive oil
(4, 24),  -- Qty: 500 ml Marinara sauce

-- Chocolate Cake
(5, 25),  -- Qty: 200 grams Mozzarella cheese
(5, 26),  -- Qty: 30 ml Balsamic glaze
(5, 27),  -- Qty: 200 grams All-purpose flour
(5, 28),  -- Qty: 30 grams Cocoa powder

-- Grilled Salmon
(6, 29),  -- Qty: 200 grams Salmon fillets
(6, 30),  -- Qty: 1 piece Lemon
(6, 31),  -- Qty: 5 grams Dill
(6, 32),  -- Qty: 200 grams Arborio rice

-- Mushroom Risotto
(7, 33),  -- Qty: 150 grams Mushrooms
(7, 34),  -- Qty: 500 ml Vegetable or chicken broth
(7, 35),  -- Qty: 50 grams Butter
(7, 36),  -- Qty: 1 piece Cucumber
(7, 37),  -- Qty: 1 piece Red onion

-- Greek Salad
(8, 38),  -- Qty: 100 grams Kalamata olives
(8, 39),  -- Qty: 150 grams Feta cheese
(8, 40),  -- Qty: 30 ml Red wine vinegar

-- Tiramisu
(9, 41),  -- Qty: 200 grams Ladyfingers
(9, 42),  -- Qty: 250 ml Strong brewed coffee
(9, 43),  -- Qty: 250 grams Mascarpone cheese
(9, 44),  -- Qty: 1 piece Taco seasoning
(9, 45),  -- Qty: 8 pieces Taco shells

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
('Bake for 25-30 minutes or until the cabbage rolls are cooked through. Serve hot.', 5, 20);





