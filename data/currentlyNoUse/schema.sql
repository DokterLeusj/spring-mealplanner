create table mealplanner_api.dietary_need
(
    id   bigint auto_increment
        primary key,
    name varchar(255) null,
    constraint UK_ccgi3klx3ctuw5yun1hs0yrg7
        unique (name)
);

create table mealplanner_api.food_category
(
    id       bigint auto_increment
        primary key,
    allergen bit          not null,
    name     varchar(255) not null
);

create table mealplanner_api.dietary_need_excluded_category
(
    dietary_need_id       bigint not null,
    excl_food_category_id bigint not null,
    primary key (dietary_need_id, excl_food_category_id),
    constraint FK7rstwibwa0i4d9fjt44rawcpa
        foreign key (excl_food_category_id) references mealplanner_api.food_category (id),
    constraint FKnydbcs5piw5pes36eun5lgjku
        foreign key (dietary_need_id) references mealplanner_api.dietary_need (id)
);

create table mealplanner_api.food_unit
(
    id   bigint auto_increment
        primary key,
    name varchar(255) null
);

create table mealplanner_api.ingredient
(
    id   bigint auto_increment
        primary key,
    name varchar(255) not null,
    constraint UK_bcuaj97y3iu3t2vj26jg6hijj
        unique (name)
);

create table mealplanner_api.ingredient_category
(
    ingredient_id    bigint not null,
    food_category_id bigint not null,
    primary key (ingredient_id, food_category_id),
    constraint FKjn6eeuqmcucrapeyla0jrvqf3
        foreign key (food_category_id) references mealplanner_api.food_category (id),
    constraint FKt7hidegw18cutvgdf982p6cj7
        foreign key (ingredient_id) references mealplanner_api.ingredient (id)
);

create table mealplanner_api.plan_preference
(
    id                bigint auto_increment
        primary key,
    kcal_target       int not null,
    meals_per_day     int not null,
    servings_per_meal int not null
);

create table mealplanner_api.plan_preference_per_diet
(
    plan_preference_id bigint not null,
    dietary_need_id    bigint not null,
    primary key (plan_preference_id, dietary_need_id),
    constraint FKpuva6h62agvxr6o5qgj8c9ykj
        foreign key (dietary_need_id) references mealplanner_api.dietary_need (id),
    constraint FKriuxcdb16jj4yg9eju6pl60bq
        foreign key (plan_preference_id) references mealplanner_api.plan_preference (id)
);

create table mealplanner_api.recipe_ingredient
(
    id            bigint auto_increment
        primary key,
    qty           double not null,
    ingredient_id bigint not null,
    unit_id       bigint not null,
    constraint FK9b3oxoskt0chwqxge0cnlkc29
        foreign key (ingredient_id) references mealplanner_api.ingredient (id),
    constraint FKlc1na8tpjtgxpem8ffimse86a
        foreign key (unit_id) references mealplanner_api.food_unit (id)
);

create table mealplanner_api.user
(
    id                 bigint auto_increment
        primary key,
    email              varchar(255) not null,
    img_url            varchar(255) null,
    password           varchar(255) not null,
    username           varchar(255) not null,
    plan_preference_id bigint       null,
    constraint UK_ob8kqyqqgmefl0aco34akdtpe
        unique (email),
    constraint FK2f8u92nwl1odnaeem97scegcf
        foreign key (plan_preference_id) references mealplanner_api.plan_preference (id)
);

create table mealplanner_api.recipe
(
    id          bigint auto_increment
        primary key,
    description varchar(255) null,
    img_url     varchar(255) null,
    name        varchar(255) null,
    nutri_tech  bit          null,
    author_id   bigint       not null,
    constraint FK46bkdlrloxnhf7k622sgy9cn4
        foreign key (author_id) references mealplanner_api.user (id)
);

create table mealplanner_api.recipe_instruction
(
    id          bigint auto_increment
        primary key,
    instruction varchar(255) not null,
    step        int          not null,
    recipe_id   bigint       not null,
    constraint FKfnfnvujej5d5udq02ce15m0pl
        foreign key (recipe_id) references mealplanner_api.recipe (id)
);

create table mealplanner_api.recipe_recipe_ingredient
(
    recipe_id            bigint not null,
    recipe_ingredient_id bigint not null,
    primary key (recipe_id, recipe_ingredient_id),
    constraint FK3dp6a6v7ich7djh6d4mlq1uqr
        foreign key (recipe_id) references mealplanner_api.recipe (id),
    constraint FKs86pxj83mf5diee92yq028riq
        foreign key (recipe_ingredient_id) references mealplanner_api.recipe_ingredient (id)
);

