SELECT r.name, i.name, fc.id, fc.name, dn.id, dn.name
FROM mealplanner_api.recipe r
         JOIN recipe_recipe_ingredient rri on rri.recipe_id = r.id
         JOIN recipe_ingredient ri on rri.recipe_ingredient_id = ri.id
         join ingredient i on ri.ingredient_id = i.id
         join ingredient_per_category on i.id = ingredient_per_category.ingredient_id
         join food_category fc on ingredient_per_category.food_category_id = fc.id
         join dietary_need_excluded_category on fc.id = dietary_need_excluded_category.excl_food_category_id
         join dietary_need dn on dietary_need_excluded_category.dietary_need_id = dn.id
;

# category per ingredient
select i.name, fc.name
from ingredient_per_category ingr
         join mealplanner_api.ingredient i on i.id = ingr.ingredient_id
         join mealplanner_api.food_category fc on ingr.food_category_id = fc.id
where food_category_id not in (4, 5);

# ingredient per recipe ingredient
select *
from ingredient ingr
         join mealplanner_api.recipe_ingredient ri on ingr.id = ri.ingredient_id
         join mealplanner_api.ingredient_per_category ipc on ingr.id = ipc.ingredient_id
where ingr.id in
      (SELECT ipc.ingredient_id from mealplanner_api.ingredient_per_category where ipc.food_category_id not in (4, 5));

# Statement filtering by category id
#Ugly statement
select *
from recipe r
where r.id in (SELECT rri.recipe_id
               from recipe_recipe_ingredient rri
               where rri.recipe_ingredient_id in (select ri.id
                                                  from recipe_ingredient ri
                                                  where ri.ingredient_id in (select ic.ingredient_id
                                                                             from ingredient_per_category ic
                                                                             where ic.food_category_id not in (4, 5))));
# Pretty statement
SELECT DISTINCT r.*
FROM recipe r
         JOIN recipe_recipe_ingredient rri ON r.id = rri.recipe_id
         JOIN recipe_ingredient ri ON rri.recipe_ingredient_id = ri.id
         JOIN ingredient_per_category ic ON ri.ingredient_id = ic.ingredient_id
WHERE ic.food_category_id NOT IN (4, 5);

# Statement filtering by everything
#ugly
select *
from recipe r
where r.id in (SELECT rri.recipe_id
               from recipe_recipe_ingredient rri
               where rri.recipe_ingredient_id in (select ri.id
                                                  from recipe_ingredient ri
                                                  where ri.ingredient_id in (select ic.ingredient_id
                                                                             from ingredient_per_category ic
                                                                             where ic.food_category_id not in (4, 5)
                                                                               AND ic.food_category_id not in
                                                                                   (select dn.excl_food_category_id
                                                                                    from dietary_need_excluded_category dn
                                                                                    where dn.dietary_need_id not in (1, 8)))));
#pretty
SELECT DISTINCT r.*
FROM recipe r
         JOIN recipe_recipe_ingredient rri ON r.id = rri.recipe_id
         JOIN recipe_ingredient ri ON rri.recipe_ingredient_id = ri.id
         JOIN ingredient_per_category ic ON ri.ingredient_id = ic.ingredient_id
         LEFT JOIN dietary_need_excluded_category dn ON ic.food_category_id = dn.excl_food_category_id
WHERE ic.food_category_id NOT IN (4, 5)
  AND (dn.dietary_need_id IS NULL OR dn.dietary_need_id not IN (1, 8));
# --------------------------------------------------

# SELECT r.* from recipe r
# where r.id =

# Overview of all recipes, ingredients, categories and diet restrictions
SELECT r.name, i.name, fc.id, fc.name, dn.id, dn.name
FROM mealplanner_api.recipe r
         JOIN recipe_recipe_ingredient rri on rri.recipe_id = r.id
         JOIN recipe_ingredient ri on rri.recipe_ingredient_id = ri.id
         join ingredient i on ri.ingredient_id = i.id
         join ingredient_per_category on i.id = ingredient_per_category.ingredient_id
         join food_category fc on ingredient_per_category.food_category_id = fc.id
         join dietary_need_excluded_category on fc.id = dietary_need_excluded_category.excl_food_category_id
         join dietary_need dn on dietary_need_excluded_category.dietary_need_id = dn.id
;

# apply WHERE
SELECT r.*,
       MAX(CASE WHEN fc.id = 5 then 1 end) as matches_criteria
FROM mealplanner_api.recipe r
         JOIN recipe_recipe_ingredient rri on rri.recipe_id = r.id
         JOIN recipe_ingredient ri on rri.recipe_ingredient_id = ri.id
         join ingredient i on ri.ingredient_id = i.id
         join ingredient_per_category on i.id = ingredient_per_category.ingredient_id
         join food_category fc on ingredient_per_category.food_category_id = fc.id
         join dietary_need_excluded_category on fc.id = dietary_need_excluded_category.excl_food_category_id
         join dietary_need dn on dietary_need_excluded_category.dietary_need_id = dn.id
GROUP BY r.id
# HAVING SUM(fc.id=5)=0;
;