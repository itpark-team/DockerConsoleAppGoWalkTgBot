create table users
(
    id        serial
        primary key,
    chat_id   bigint      not null,
    gender    integer     not null,
    age       integer     not null,
    height    integer     not null,
    weight    integer     not null,
    city      varchar(64) not null,
    walk_time varchar(64) not null,
    lifestyle varchar(64) not null
);

INSERT INTO public.users (id, chat_id, gender, age, height, weight, city, walk_time, lifestyle) VALUES (1, 123, 1, 1, 1, 1, 'sdfg', 'sdfg', 'sdfgsdfg');
INSERT INTO public.users (id, chat_id, gender, age, height, weight, city, walk_time, lifestyle) VALUES (6, 927832451, 0, 20, 200, 60, 'Москва', '19', 'asdf');
INSERT INTO public.users (id, chat_id, gender, age, height, weight, city, walk_time, lifestyle) VALUES (7, 247021014, 0, 30, 171, 78, 'Брянск', 'Вечер', 'asdf');
INSERT INTO public.users (id, chat_id, gender, age, height, weight, city, walk_time, lifestyle) VALUES (4, 879223741, 0, 16, 180, 80, 'Йошкар ола', 'утром', 'asdf');


create table diary_records
(
    id          serial
        primary key,
    user_id     integer      not null
        constraint diary_records_users_id_fk
            references users
            on update restrict on delete restrict,
    day         date         not null,
    distance    integer      not null,
    selffeeling integer      not null,
    description varchar(512) not null
);

INSERT INTO public.diary_records (id, user_id, day, distance, selffeeling, description) VALUES (1, 1, '2023-08-13', 10, 2, 'asdf');
INSERT INTO public.diary_records (id, user_id, day, distance, selffeeling, description) VALUES (2, 1, '2023-08-13', 1, 0, 'asdf');
INSERT INTO public.diary_records (id, user_id, day, distance, selffeeling, description) VALUES (3, 1, '2023-08-13', 1, 2, 'asdf');
INSERT INTO public.diary_records (id, user_id, day, distance, selffeeling, description) VALUES (4, 1, '2023-08-13', 1, 2, 'asdf');

