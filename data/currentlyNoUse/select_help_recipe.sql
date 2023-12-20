# Get relevant information from db
SELECT r.id, r.name, i.name, fc.id, fc.name, diet.dietary_need_id
FROM mealplanner_api.recipe r
         left JOIN recipe_recipe_ingredient rri on rri.recipe_id = r.id
         left JOIN recipe_ingredient ri on rri.recipe_ingredient_id = ri.id
         left join ingredient i on ri.ingredient_id = i.id
         left join ingredient_per_category on i.id = ingredient_per_category.ingredient_id
         left join food_category fc on ingredient_per_category.food_category_id = fc.id
         left join dietary_need_excluded_category diet on fc.id = diet.excl_food_category_id
         join dietary_need dn on diet.dietary_need_id = dn.id or isnull(dietary_need_id)
;
# works hehe
SELECT DISTINCT r.*
FROM recipe r
WHERE r.id NOT IN (
    SELECT DISTINCT r.id
    FROM recipe r
             LEFT JOIN recipe_recipe_ingredient rri ON r.id = rri.recipe_id
             LEFT JOIN recipe_ingredient ri ON rri.recipe_ingredient_id = ri.id
             LEFT JOIN ingredient_per_category ic1 ON ri.ingredient_id = ic1.ingredient_id
             LEFT JOIN dietary_need_excluded_category dn1 ON ic1.food_category_id = dn1.excl_food_category_id
    WHERE ic1.food_category_id = 1
);
# ----------------------------------------- everything below this line is kladblok





# Filter out recipes with a category
SELECT DISTINCT r.*
FROM recipe r
         JOIN recipe_recipe_ingredient rri ON r.id = rri.recipe_id
         JOIN recipe_ingredient ri ON rri.recipe_ingredient_id = ri.id
         JOIN ingredient_per_category ic ON ri.ingredient_id = ic.ingredient_id
WHERE r.id NOT IN (SELECT ic.food_category_id where food_category_id != 1);




# ------------------------------------------------------ (gibberish below)
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
                                                                             where ic.food_category_id not in (9))));
# Pretty statement
SELECT DISTINCT r.*
FROM recipe r
         JOIN recipe_recipe_ingredient rri ON r.id = rri.recipe_id
         JOIN recipe_ingredient ri ON rri.recipe_ingredient_id = ri.id
         JOIN ingredient_per_category ic ON ri.ingredient_id = ic.ingredient_id
WHERE ic.food_category_id NOT IN (9);

# Statement filtering by everything
#ugly
select r.*
from recipe r
where r.id in (SELECT rri.recipe_id
               from recipe_recipe_ingredient rri
               where isnull(rri.recipe_ingredient_id)
                  or rri.recipe_ingredient_id in (select ri.id
                                                  from recipe_ingredient ri
                                                  where isnull(ri.ingredient_id)
                                                     or ri.ingredient_id in (select ic.ingredient_id
                                                                             from ingredient_per_category ic
                                                                             where isnull(food_category_id)
                                                                                or (ic.food_category_id not in (9)
                                                                                 AND ic.food_category_id not in
                                                                                     (select dn.excl_food_category_id
                                                                                      from dietary_need_excluded_category dn
                                                                                      where isnull(dn.dietary_need_id)
                                                                                         or dn.dietary_need_id not in (0))))));
#pretty
SELECT DISTINCT r.*
FROM recipe r
         left JOIN recipe_recipe_ingredient rri ON r.id = rri.recipe_id
         left JOIN recipe_ingredient ri ON rri.recipe_ingredient_id = ri.id
         left JOIN ingredient_per_category ic ON ri.ingredient_id = ic.ingredient_id
         LEFT JOIN dietary_need_excluded_category dn ON ic.food_category_id = dn.excl_food_category_id
GROUP BY r.id
HAVING  not SUM(ic.food_category_id=1)>0;




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
HAVING SUM(fc.id=5)=0;
;