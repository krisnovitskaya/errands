-----------------------------------------------------------------------

insert into users(username, password)
values
    ('ivanovaa', '$2a$12$n6KY4mpI2RdcBQWwyM4msudGmPD6gXxQDjKDQiXojmzykVYhtvaem'),   --id 2 master
    ('petrovss', '$2a$12$n6KY4mpI2RdcBQWwyM4msudGmPD6gXxQDjKDQiXojmzykVYhtvaem'),   --id 3 master
    ('novikovamn', '$2a$12$n6KY4mpI2RdcBQWwyM4msudGmPD6gXxQDjKDQiXojmzykVYhtvaem'),   --id 4 master
    ('novikovas', '$2a$12$n6KY4mpI2RdcBQWwyM4msudGmPD6gXxQDjKDQiXojmzykVYhtvaem'),   --id 5
    ('volkovagn', '$2a$12$n6KY4mpI2RdcBQWwyM4msudGmPD6gXxQDjKDQiXojmzykVYhtvaem'),   --id 6
    ('kulaginaa', '$2a$12$n6KY4mpI2RdcBQWwyM4msudGmPD6gXxQDjKDQiXojmzykVYhtvaem'),   --id 7
    ('kalininsm', '$2a$12$n6KY4mpI2RdcBQWwyM4msudGmPD6gXxQDjKDQiXojmzykVYhtvaem'),   --id 8
    ('novayaka', '$2a$12$n6KY4mpI2RdcBQWwyM4msudGmPD6gXxQDjKDQiXojmzykVYhtvaem'),   --id 9
    ('kotovvs', '$2a$12$n6KY4mpI2RdcBQWwyM4msudGmPD6gXxQDjKDQiXojmzykVYhtvaem'),   --id 10
    ('kotovskyimn', '$2a$12$n6KY4mpI2RdcBQWwyM4msudGmPD6gXxQDjKDQiXojmzykVYhtvaem'),   --id 11
    ('gerberkk', '$2a$12$n6KY4mpI2RdcBQWwyM4msudGmPD6gXxQDjKDQiXojmzykVYhtvaem');   --id 12

insert into users_roles(user_id, role_id)
values
    (2, 2), (2, 3), (3, 2), (3, 3), (4, 2), (4, 3),
    (5, 3), (6, 3), (7, 3), (8, 3), (9, 3), (10, 3), (11, 3), (12, 3);


insert into positions(position)
values
    ('Начальник отделения'),   --id 1
    ('Заместитель начальника отделения'),   --id 2
    ('Начальник отдела'),   --id 3
    ('Начальник лаборатории'),   --id 4
    ('Главный специалист'),   --id 5
    ('Ведущий инженер'),   --id 6
    ('Инженер 1 категории'),   --id 7
    ('Инженер 2 категории'),   --id 8
    ('Инженер 3 категории'),   --id 9
    ('Старший техник'),  --id 10
    ('Техник');  --id 11

insert into departments(title)
values
    ('Отделение технологии испытаний и неразрушающих методов контроля'),    --id 1
    ('Отдел пневмогидроиспытаний и контроля герметичности'),    --id 2
    ('Отдел неразрушающих методов контроля'),    --id 3
    ('Лаборатория ультразвуковых методов контроля'),    --id 4
    ('Лаборатория радиационных методов контроля'),    --id 5
    ('Лаборатория вакуумных покрытий');    --id 6

update departments set master_department_id = 1 where id = 2;
update departments set master_department_id = 1 where id = 3;
update departments set master_department_id = 1 where id = 6;
update departments set master_department_id = 3 where id = 4;
update departments set master_department_id = 3 where id = 5;


insert into employees(last_name, first_name, middle_name, email, position_id, department_id, user_id)
values
    ('Иванов', 'Александр', 'Андреевич', 'ivanovaa@errands.ru', 1, 1, 2),                   --id 1
    ('Петров', 'Сергей', 'Семенович', 'petrovss@errands.ru', 2, 1, 3),                   --id 2
    ('Новикова', 'Марина', 'Николаевна', 'novikovamn@errands.ru', 3, 2, 4),                   --id 3
    ('Новиков', 'Алексей', 'Сергеевич', 'novikovas@errands.ru', 3, 3, 5),                   --id 4
    ('Волкова', 'Галина', 'Николаевна', 'volkovagn@errands.ru', 4, 4, 6),                   --id 5
    ('Кулагин', 'Анатолий', 'Александрович', 'kulaginaa@errands.ru', 4, 5, 7),              --id 6
    ('Калинин', 'Сергей', 'Михайлович', 'kalininsm@errands.ru', 4, 6, 8),              --id 7
    ('Новая', 'Карина', 'Алексеевна', 'novayaka@errands.ru', 5, 4, 9),              --id 8
    ('Котов', 'Владислав', 'Сергеевич', 'kotovvs@errands.ru', 6, 5, 10),              --id 9
    ('Котовский', 'Матвей', 'Никодимович', 'kotovskyimn@errands.ru', 7, 6, 11),           --id 10
    ('Гербер', 'Клим', 'Константинович', 'gerberkk@errands.ru', 8, 6, 12);           --id 11


insert into subordinate_dapartments(employee_id, department_id)
values
    (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6),
    (2, 2), (2, 3), (2, 4), (2, 5), (2, 6),
    (3, 2),
    (4, 3), (4, 4), (4, 5);