insert into users(username, password)
values
    ('admin', '$2a$10$tZDY1/sJwv7CmNLt.yDAzeRqwHnuyNHEIT/Id5AWYHgOmFyv8TG.6'); --password13

insert into roles(name)
values
    ('ROLE_ADMIN'), --1
    ('ROLE_MASTER'), --2
    ('ROLE_EMPLOYEE'); --3

insert into users_roles (user_id, role_id)
values
    (1, 1);   -- admin
