--database PostgreSQL creation
create table if not exists users(
    id          bigserial primary key,
    username    varchar(100) unique not null,
    password    varchar(100) not null
    );

create table if not exists roles(
    id          bigserial primary key,
    name        varchar(30) not null
    );

create table if not exists users_roles(
    user_id               bigint not null,
    role_id               bigint not null,
    primary key (user_id, role_id),
    foreign key (user_id) references users (id),
    foreign key (role_id) references roles (id)
    );

create table if not exists positions(
    id 		    bigserial primary key,
    position	varchar(255)
    );

create table if not exists departments(
    id                      bigserial primary key,
    title                   varchar(255) not null,
    master_department_id    bigint,
    foreign key (master_department_id) references departments (id)
    );

create table if not exists employees(
    id              	bigserial primary key,
    first_name      	varchar(100) not null,
    middle_name     	varchar(100),
    last_name       	varchar(100) not null,
    email	            varchar(100),
    position_id     	bigint not null,
    department_id   	bigint not null,
    user_id         	bigint,
    foreign key (position_id) references positions (id),
    foreign key (department_id) references departments (id),
    foreign key (user_id) references users (id)
    );

create table if not exists subordinate_dapartments(
    employee_id               bigint not null,
    department_id             bigint not null,
    primary key (employee_id, department_id),
    foreign key (employee_id) references employees (id),
    foreign key (department_id) references departments (id)
);

create table if not exists errands(
    id                          bigserial primary key,
    status                      varchar(50) not null,
    matter                      varchar(50) not null,
    employee_id                 bigint not null,
    date_start                  timestamp not null,
    date_end                    timestamp not null,
    place                       varchar(100),
    comment                     varchar(255),
    created_by                  bigint not null,
    confirmed_or_rejected_by    bigint,
    foreign key (employee_id) references employees(id),
    foreign key (created_by) references employees(id),
    foreign key (confirmed_or_rejected_by) references employees(id)
);
