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


# User
INSERT INTO mealplanner_api.user (email, img_url, password, username, plan_preference_id)
VALUES
    ('matteo.rossi@example.com', '', '$2y$10$J2Z62ZIkwZptBvK/4eAlSesjOjgy6DkeuhqQCB8ZtLeVoxVSFiP/m', 'PastaLoverMatteo', 1),
    ('lucas.hoffmann@example.com', '', '$2y$10$Y2E7enZg9i4iIL9QZ1Z66.JH/FZvB2rBaEEf7K4NB6ynB.5c8Y1jK', 'BeerSnobLucas', 2),
    ('isabel.garcia@example.com', '', '$2y$10$t3c5VrRBbwzMQgZlH8OldeeqS0Uo.B5iXGvFWsWpNMRyZGJrVhjAq', 'TapasExplorerIsabel', 3),
    ('leo.mueller@example.com', '', '$2y$10$Pbr.rr7xK/0aam5vKjx/BOM4VZEXOVVeP.mU/u6BubofcbahxJQXq', 'ChocolateLoverLeo', 1),
    ('sophie.leroy@example.com', '', '$2y$10$gNcF77IvEj3CvFsebL6UceDzLrET3RmmviPIi6yfG0rrJF9zJtWi6', 'CroissantConnoisseurSophie', 2),
    ('giovanni.ferrari@example.com', '', '$2y$10$Xy7hU21wFqXrNpCpIK5u9eApY4Pmm5miWVQj4O2x1GOD62r2wamzG', 'EspressoLoverGiovanni', 3),
    ('pierre.dupont@example.com', '', '$2y$10$Xn4kwtM34cyU0/q.HRUp6uWz6a9hWvRSZyZYXLR5dxpapBlYDHMFq', 'FromageLoverPierre', 1),
    ('marie.leclerc@example.com', '', '$2y$10$d3xP3dS4sTTmoFve7wI7r.3cW21tPZZR.GjVcWgj1TBJzVD.W6P0i', 'BoulangerieMarie', 2),
    ('hiroshi.tanaka@example.com', '', '$2y$10$zF5U7u/fY8Uz5lST9WAF0OmUjjl6OYk4s3gjGfg/vCShH8WAtBdGi', 'SushiMasterHiroshi', 1),
    ('mei.chen@example.com', '', '$2y$10$HRqSVEsEvSRsIy.VPOnW2OJ0f/wUmCpSTIjVsFYKP5dLhLtBNUhde', 'WokQueenMei', 2),
    ('raj.patil@example.com', '', '$2y$10$V8Eps1AeDfvb.LFmGLymoeTcmq9Q2H5Oz7NDWz4R9GvP3MuKWJUby', 'CurryConnoisseurRaj', 3),
    ('xia.li@example.com', '', '$2y$10$ycw9w77eziqZRMkE6If.hO2GrCvOxGp1gU5bNrGy5Qzft.KewSYoW', 'DumplingFanXia', 1),
    ('yuki.nakamura@example.com', '', '$2y$10$J9qrwY2Pw5UfHJeD/jghF.PzDoMEdNbnIeUcoQkNLShlN11HrIuJe', 'RamenLoverYuki', 2),
    ('giorgio.rossi@example.com', '', '$2y$10$rQ5QV/cGhR2W0cVht0W./uHYxxFhj31a/Dav0SK3B3sdVYsPxEq.6', 'PastaMaestroGiorgio', 3),
    ('hannah.schmidt@example.com', '', '$2y$10$H9z9/zxP4zFnW1PD8QJW1uqVODQPFuT5mm2O8Q7Q9WYVgmXpbcBbW', 'SausageQueenHannah', 2),
    ('antonio.moreno@example.com', '', '$2y$10$9X1jGCVx1IJgCZ6YlRDfa.G1L/mZ6ZnILQJUdS99R4gU2tayBslcW', 'PizzaProAntonio', 3),
    ('hanna.andersson@example.com', '', '$2y$10$opq/xAuYMaQJFZrtphw5DOytZjT3J0T/hBHzZ6.QR/bG2A4UD9d9m', 'ScandinavianFeastHanna', 1),
    ('andreas.schmidt@example.com', '', '$2y$10$H9z9/zxP4zFnW1PD8QJW1uqVODQPFuT5mm2O8Q7Q9WYVgmXpbcBbW', 'SausageKingAndreas', 2),
    ('nina.van-der-berg@example.com', '', '$2y$10$nLV5VucNcsx8yvDfr2HC0eLMHtDhWfzQZ0j3fK9TRSHVbnAQTUzOW', 'DutchTreatNina', 3),
    ('luca.moretti@example.com', '', '$2y$10$9X1jGCVx1IJgCZ6YlRDfa.G1L/mZ6ZnILQJUdS99R4gU2tayBslcW', 'PizzaFanLuca', 1),
    ('anna.jensen@example.com', '', '$2y$10$LxlNOFSq3JpUDL1s4/YYfeRRFAOS8XRTWZRH.p9ZMmGyYc1yqFfg.', 'HyggeAnna', 2),
    ('marco.conti@example.com', '', '$2y$10$RFoHqOTgj9mIwYjfgSTED.g5EOw4zOQa0ReY2KgUejmBzVHrsDtFm', 'GelatoLoverMarco', 3),
    ('alina.petrov@example.com', '', '$2y$10$G4DgV2yJ50pE/CfIGiJ35.N.9zIiowAWrXIMs9./T6W0.4HtjAhMe', 'VodkaConnoisseurAlina', 1),
    ('maxim.sokolov@example.com', '', '$2y$10$HlWdEN/jBzATyjS7blGwH.hX/8G5IR/aA.n/Iyx.kDIm/kcRGKoEu', 'BorschtLoverMaxim', 2),
    ('livia.silva@example.com', '', '$2y$10$9E4IsGyM76HJ3enxPOOb7udkd7dZPb5G.jfzL/kn4HlOfeC3/sMai', 'PortugueseFlavorsLivia', 3),
    ('maria.smith@example.com', '', '$2y$10$h15hReHPo/OZ0bKZdLUZU.FVU5c5k/2kjGrdtn7z6KQ2.nITDJF5C', 'FoodieMaria', 2),
    ('ali.khan@example.com', '', '$2y$10$9kbyA9cIlj8NldwGG5u3/.2m2/Ay1y9/wZHqisWUovXSzziCbkgxu', 'SpiceMasterAli', 3),
    ('emily.jones@example.com', '', '$2y$10$GsKEK7ZR9mtHcJXoV6VKbOMTj1Z3vXT67aOofTW.aYsLg6MT7zvmq', 'BakingEnthusiast', 1),
    ('javier.rodriguez@example.com', '', '$2y$10$aRzWV5KyH6sXIL/MK1BpQuy.0QVgWlHFEJGH9QAK2yLoowhF.BwXe', 'GrillMasterJavier', 2),
    ('lisa.nguyen@example.com', '', '$2y$10$mrOHMFE5JYQ1WsPFHJChV..Iy2zXYczMLrpsvYY3RFSr1q5sJ5fsG', 'HealthyEaterLisa', 3),
    ('adam.smith@example.com', '', '$2y$10$8RUp8g6TYszWdygyulxN2e9gGhT9jfcCQv54.JzK7e98QqFtQc7MK', 'HomeChefAdam', 1),
    ('sophia.martinez@example.com', '', '$2y$10$HZsmIqtIGnCVkW1LsL66k.DzCKJkMPQWex44UxS0WEv0EOWA4T4Pq', 'FoodExplorerSophia', 2),
    ('nathan.jones@example.com', '', '$2y$10$ymf2.LISLj7rquBq22z8XO33QFt9Y/OnVsnfIN8opORPFjS0aJZHe', 'MasterTasterNathan', 3),
    ('zara.lee@example.com', '', '$2y$10$1y82X2.JLP7Jp6WbGX7cYeMx5g3HbjT0HW2sYlPI9ynAZraLqazpK', 'ZestyZara', 1),
    ('mohammed.ali@example.com', '', '$2y$10$ymW2lfTnUn8YFZT5b5Qp8O1hwL2lQtfUj9zX11xAMhB3d2BB1fEmy', 'QuickCookMohammed', 2),
    ('olivia.smith@example.com', '', '$2y$10$FkINMFcx9fmompsOM5Gn0OpV23Z3IlTZjK.33X24zccZU/Ff3w17q', 'EpicureanOlivia', 3),
    ('luke.jones@example.com', '', '$2y$10$pA/PHns1epGb8ybBdop/D.BpNY5sgE/bDjA4c3hTtAC6Ju9H15MJe', 'GourmetLuke', 1),
    ('mia.rodriguez@example.com', '', '$2y$10$Q86AqCzZdJX/lMoz8EaGbez9hd2R3B7rPUVo4E7CMogdYvi4xlUz6', 'TasteExplorerMia', 2),
    ('aiden.nguyen@example.com', '', '$2y$10$0K/w0I/kJdbm2VbA4gizPuxNCJUb6vBrpFdYi2YsHwW7VX1z.T1OS', 'FlavorAdventurerAiden', 3),
    ('ella.smith@example.com', '', '$2y$10$A4eYTr0G0NS8RpdONN2bfuAZCwlsf0DXWcn92rHQT8rI/2Yby4N1e', 'SensoryElla', 1),
    ('liam.martinez@example.com', '', '$2y$10$1a1p8cHkpSS1k4.5mjeAKujJ1q/Z1VDgNjxxCpEFWk98xjHek8gSK', 'FlavorConnoisseurLiam', 2),
    ('ava.jones@example.com', '', '$2y$10$tODU9t04ktX4iK0ZvXbRMeNL8mrnt4aOScjUs2nhqzYbj6Pllc.ZK', 'SeasonedAva', 3),
    ('logan.lee@example.com', '', '$2y$10$Hm8PDWPlzso6HN4ex5rtOeHfj.V7/XsIpQSSfOZGFirZ4g8yE2xg2', 'UmamiLogan', 1),
    ('emma.khan@example.com', '', '$2y$10$VJf2Bk4HADOFi9A24fEDBu5IUa7gyKuZ.xGufPSvZTCCivmL3eZGW', 'FlavorfulEmma', 2),
    ('kwesi.boateng@example.com', '', '$2y$10$ex0zXT2ZyutXj8CPs2l0p.M1j6DE.YAIKReS3awZcOnCf4MavfMve', 'JollofKingKwesi', 1),
    ('nneka.uzoma@example.com', '', '$2y$10$rCSaIgGQ2a/2WGfoLgsrM..lLP1Sc4aykvxC8JyQ86fXmjBnCbgF2', 'AfroCuisineNneka', 2),
    ('sizwe.ndlovu@example.com', '', '$2y$10$UjeqqqW8aIKd7zYF1g1M6./8B2kP2es27pxEMc6U52TZa.MRW8CfG', 'BraaiMasterSizwe', 3),
    ('akio.yamamoto@example.com', '', '$2y$10$Oqap9yBHKqtetMvzy8G3FOGjZGcvOT5LLv4dWiAHj8VRSpHvRTYkG', 'TempuraLoverAkio', 1),
    ('ji-eun.kim@example.com', '', '$2y$10$5JQJOeEHs.k8gUte6sDpfeTAvqitk8rmVXxcupAQ4GCl/GamAgG9C', 'KimchiQueenJiEun', 2),
    ('rajiv.patel@example.com', '', '$2y$10$ua.kBc57P1i0/sveDMepW.jwPrbZfGg5g3O1Ij6fJH03B5bplPYAe', 'BiryaniMasterRajiv', 3),
    ('owen.nguyen@example.com', '', '$2y$10$xEcBsWiZU/yKPiXDP45TZO98wV0SySsPZ7lUwFQdCQcAl4A34tIwe', 'EpicureOwen', 3),
    ('abigail.smith@example.com', '', '$2y$10$ylE3vJUz5NKvYbmtL1KXN.3RBJ29rDhjRGSN5hSYGwdHfzRPEryyy', 'PalateExplorerAbigail', 1),
    ('noah.rodriguez@example.com', '', '$2y$10$ZQeT4W/s7VTiU/qVHRZsGeORwLwKGiE1qT86kfPp5O0V5lglBlzBa', 'GourmetNoah', 2),
    ('kwame.boateng@example.com', '', '$2y$10$PGOzOvYkVEc.kt8qzqlb7uRWeRCbnWtm95LZKs8ljiI9oyWq9cUWq', 'JollofKingKwame', 1),
    ('aminata.toure@example.com', '', '$2y$10$51/F1vFEVDAkhS/Z3LofrOn.RXsjyq2lHPVfcIJPlpRPEd3k8sZDy', 'AfroCuisineAminata', 2),
    ('thabo.ndlovu@example.com', '', '$2y$10$buLc7SgRFZYNRQ19nUqLruZuJMg3C7XW28DP0Bl/mc3FEQi4Csp/W', 'BraaiMasterThabo', 3),
    ('fatima.kwame@example.com', '', '$2y$10$5BVL2jFugIVk6c53R1nCrOvum0zU0.GbNc50lO.QrM9CeZFr7nO3y', 'SpicyFatima', 1),
    ('simba.nkosi@example.com', '', '$2y$10$O5eXz17ubrrSylXTcM3Rsevbk4M.NOe6Yujauq2U8PioVeLrFvZZ2', 'SafariExplorerSimba', 2);

-- Sample recipe data
INSERT INTO mealplanner_api.recipe (id, description, name, nutri_tech, author_id)
VALUES
    (1, 'Spaghetti Bolognese', 'Spaghetti Bolognese', 0, 1),
    (2, 'Vegetarian Stir-Fry', 'Vegetarian Stir-Fry', 0, 2),
    (3, 'Chicken Parmesan', 'Chicken Parmesan', 0, 1),
    (4, 'Caprese Salad', 'Caprese Salad', 0, 2),
    (5, 'Chocolate Cake', 'Chocolate Cake', 0, 3),
    (6, 'Grilled Salmon', 'Grilled Salmon', 0, 6),
    (7, 'Mushroom Risotto', 'Mushroom Risotto', 0, 2),
    (8, 'Greek Salad', 'Greek Salad', 0, 8),
    (9, 'Tiramisu', 'Tiramisu', 0, 9),
    (10, 'Beef Tacos', 'Beef Tacos', 0, 10),
    (11, 'Grilled Chicken Salad', 'Grilled Chicken Salad', 0, 11),
    (12, 'Quinoa Stuffed Peppers', 'Quinoa Stuffed Peppers', 0, 12),
    (13, 'Tomato Basil Pasta', 'Tomato Basil Pasta', 0, 13),
    (14, 'Almond Milk Smoothie', 'Almond Milk Smoothie', 0, 14),
    (15, 'Beef and Broccoli Stir-Fry', 'Beef and Broccoli Stir-Fry', 0, 15),
    (16, 'Garlic Parmesan Breadsticks', 'Garlic Parmesan Breadsticks', 0, 16),
    (17, 'Wheat Berry Salad', 'Wheat Berry Salad', 0, 17),
    (18, 'Cheese Omelette', 'Cheese Omelette', 0, 18),
    (19, 'Egg Fried Rice', 'Egg Fried Rice', 0, 19),
    (20, 'Cabbage Rolls', 'Cabbage Rolls', 0, 20);

INSERT INTO mealplanner_api.recipe (id, description, name, nutri_tech, author_id)
VALUES
    (1, 'Classic Italian pasta dish with savory Bolognese sauce.', 'Spaghetti Bolognese', 0, 1),
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
