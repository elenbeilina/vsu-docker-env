create schema if not exists vsu;

create table vsu.answer
(
    id          serial not null
        constraint answer_pk
            primary key,
    description varchar
);
INSERT INTO vsu.answer (id, description) VALUES (1, 'test');

create unique index answer_id_uindex
    on vsu.answer (id);

create table vsu.department
(
    id          serial not null
        constraint department_pkey
            primary key,
    name        varchar,
    description varchar,
    picture     varchar,
    facebook  varchar,
    instagram varchar,
    twitter   varchar,
    vk        varchar
);

INSERT INTO vsu.department (id, name, description, picture) VALUES (1, 'Компьютерных Наук', '', '');
INSERT INTO vsu.department (id, name, description, picture) VALUES (2, 'Прикладной математики и информатики', '', '');
INSERT INTO vsu.department (id, name, description, picture) VALUES (3, 'ФИПСИ', '', '');
INSERT INTO vsu.department (id, name, description, picture) VALUES (4, 'Экономический', '', '');
INSERT INTO vsu.department (id, name, description, picture) VALUES (5, 'Юридический', '', '');
INSERT INTO vsu.department (id, name, description, picture) VALUES (6, 'Биологический', '', '');
INSERT INTO vsu.department (id, name, description, picture) VALUES (7, 'Геологический', '', '');

create table vsu.users
(
    id              serial not null
        constraint users_pkey
            primary key,
    role_id         bigint,
    student_book_id varchar,
    department_id   bigint
        constraint users_department_fk
            references vsu.department,
    username        varchar,
    first_name      varchar,
    second_name     varchar,
    password        varchar,
    description     varchar,
    birthday        timestamp with time zone,
    picture         varchar,
    facebook        varchar,
    instagram       varchar,
    twitter         varchar,
    vk              varchar
);

INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (2, 2, '80809090', 1, 'dataart', 'DataArt', ' ', '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'DataArt — международная сеть компаний, которые проектируют, разрабатывают, модернизирует и поддерживают IT-решения. В 17 центрах продаж и разработки DataArt работают более 2200 специалистов.', null, 'https://upload.wikimedia.org/wikipedia/commons/5/55/DataArt%27s_Logo.png', null, null, null, null);
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (4, 2, '80809090', 1, 'lukoil', 'ЛУКОЙЛ', ' ', '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'ПАО «Лукойл» — российская нефтяная компания. Официальное название — ПАО «Нефтяная компания „Лукойл“» Наименование компании происходит от первых букв названий городов нефтяников и слова «ойл». Вторая после «Газпрома» по объёмам выручки компания в России.', null, 'https://www.polinaft.com/images/lukoil.png', null, null, null, null);
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (9, 1, '80809090', 1, 'user4', 'Анатолий', 'Сидорчук', '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'У меня свой путь к счастью... И я не люблю, когда мне навязывают чужие маршруты... ПОВЕРЬТЕ, за руль своей жизни я не посажу никого!', null, 'http://advicewoman.ru/wp-content/uploads/2017/05/kakim-dolzhen-byt-nastoyashiy-muzhchina.jpg', null, null, null, null);
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (8, 1, '80809090', 1, 'user3', 'Александр', 'Смирнов', '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'Я очень богат! У меня два видящих глаза, рабочие руки и ноги, да и слышу вроде неплохо. Я вижу рассвет, закат, чувствую, живу моментом. Радуйтесь мелочам.', null, 'http://kak-bog.ru/sites/default/files/imagecache/height_200/brutalnyy_muzhchina.jpg', null, null, null, null);
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (1, 0, '80809090', 1, 'admin', '', ' Administrator', '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'Администратор сервиса VSU Tournaments', null, 'http://www.monteirolobato.edu.br/public/assets/admin/images/avatars/avatar4_big.png', null, null, null, null);
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (5, 2, '80809090', 1, 'inline', 'Ин Лайн', 'Груп', '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'Инлайн', null, 'http://www.inlinegroup.ru/img/logo/logo.png', null, null, null, null);
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (3, 2, '', 1, 'netcrk', ' ', 'NetCracker', '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'Netcracker Technology — дочерняя компания корпорации NEC, специализирующаяся на создании, внедрении и сопровождении систем эксплуатационной поддержки, систем поддержки бизнеса, а также SDN/NFV-решений для операторов связи, крупных предприятий и государственных учреждений.', null, 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c2/Netcracker_Technology_logo.svg/1280px-Netcracker_Technology_logo.svg.png', null, null, null, null);
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (12, 1, '1232123231', 1, 'y1', 'йо', 'ой', '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG', 'йо', null, null, null, null, null, null);
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (6, 1, '808090902', 2, 'al_kachino', 'Алиса', 'Капранчик', '$2a$10$sSqZgvQ1QdWSA0/zFU8Xh.s2XF5UIKDTdph3vZrhoODXkQ3ZMOM1.', 'Всем привет', null, 'https://pic.sport.ua/images/news/0/8/112/orig_342444.jpg', null, null, null, null);
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (7, 1, null, null, 'user2', 'user2', '', '$2a$10$SdZ34R6ny4fGDHPPTBIGZukjz/iH2zyTu9xuqAUSjy/0pk7NqUjmK', null, null, null, null, null, null, null);

create table vsu.news
(
    id           serial not null
        constraint news_pk
            primary key,
    owner        bigint
        constraint news_users_fk
            references vsu.users,
    title        varchar,
    description  varchar,
    date_created timestamp with time zone
);

create unique index news_id_uindex
    on vsu.news (id);

INSERT INTO vsu.news (id, owner, title, description, date_created) VALUES (2, 1, 'Дан старт новому европейскому проекту ВГУ', '29 ноября в стенах Европейского Центра Управления (Брюссель, Бельгия) прошло совещании координаторов новых проектов в сфере европейским исследований программы Эразмус+ «Проекты Акций имени Жана Монне – поиск ответов на вызовы в современной Европе», организатором которого стало Исполнительное агентство по образованию, культуре и аудиовизуальным средствам.', '2018-07-11 21:00:00.000000');
INSERT INTO vsu.news (id, owner, title, description, date_created) VALUES (3, 1, 'Представители ВГУ вошли в резерв управленческих кадров Воронежской области', '«Команда будущего» – конкурс в рамках проекта «Современное государственное управление». В Воронежской области его проводит Российская академия народного хозяйства и государственной службы при Президенте РФ (РАНХиГС) и Фонд «Центр стратегических разработок».', '2018-06-11 21:00:00.000000');
INSERT INTO vsu.news (id, owner, title, description, date_created) VALUES (4, 1, 'Чемпионами Всероссийского турнира физиков стала сборная ВГУ и ВГТУ', 'Всероссийский турнир физиков открылся 30 ноября и продлился до 4 декабря. В нем приняли участие представители восьми университетов: САФУ, МГУ, Высшая школа экономики, Южно-Уральский университет, МФТИ, Воронежский Государственный университет и Воронежский технический университет, представляющие одну команду, а также Пензенский Государственный университет.', '2018-06-11 21:00:00.000000');
INSERT INTO vsu.news (id, owner, title, description, date_created) VALUES (5, 1, 'Студенты ВГУ стали победителями первого хакатона единого института развития в жилищной сфере', 'Студенты Воронежского государственного университета стали победителями первого хакатона единого института развития в жилищной сфере ДОМ.РФ, который прошел в Воронеже.', '2018-05-11 21:00:00.000000');
INSERT INTO vsu.news (id, owner, title, description, date_created) VALUES (6, 1, 'Студенты Борисоглебского филиала ВГУ стали победителями конкурса премий Молодежного правительства Воронежской области', 'По результатам очной защиты проект «Запечатли момент» получил грант Молодежного правительства Воронежской области в размере 30 тысяч рублей. Цель проекта – обучение основам фотографии детей и подростков с ограниченными возможностями здоровья.', '2018-05-11 21:00:00.000000');
INSERT INTO vsu.news (id, owner, title, description, date_created) VALUES (1, 1, 'Мониторинг европейских проектов ВГУ успешно пройден!', 'Задача визита состояла в изучении эффективности реализации европейских проектов в ВГУ. ВГУ является одним из лидеров среди российских университетов по количеству реализуемых международных проектов, получивших поддержку в рамках программ Европейского Союза. В настоящее время университет реализует 35 проектов.', '2018-07-11 21:00:00.000000');

create table vsu.prizes
(
    id          serial not null
        constraint prizes_pk
            primary key,
    owner       integer
        constraint prizes_owner_id_fk
            references vsu.users,
    name        varchar,
    picture     varchar,
    description varchar
);

create unique index prizes_id_uindex
    on vsu.prizes (id);

INSERT INTO vsu.prizes (id, owner, name, picture, description) VALUES (1, null, 'ыва', null, 'ываы');
INSERT INTO vsu.prizes (id, owner, name, picture, description) VALUES (2, null, '', null, '');

create table vsu.question
(
    id          serial not null
        constraint question_pk
            primary key,
    owner_id    bigint
        constraint question_users_fk
            references vsu.users,
    start_date  timestamp with time zone,
    description varchar,
    answer_id   bigint
        constraint question_answer_fk
            references vsu.answer
);

create unique index question_id_uindex
    on vsu.question (id);

INSERT INTO vsu.question (id, owner_id, start_date, description, answer_id) VALUES (1, 8, '2021-03-06 21:00:00.000000', 'string', 1);

create table vsu.tournament
(
    id         serial not null
        constraint tournament_pkey
            primary key,
    sponsor_id bigint
        constraint tournament_sponsor_id_fk
            references vsu.users,
    winner_id  bigint
        constraint tournament_winner_id_fk
            references vsu.users,
    start_date timestamp with time zone,
    end_date   timestamp with time zone,
    status     bigint,
    prize_id   integer
        constraint tournament_prize_fk
            references vsu.prizes,
    name       varchar(255),
    task       varchar(255)
);

create unique index tournament_id_uindex
    on vsu.tournament (id);

INSERT INTO vsu.tournament (id, sponsor_id, winner_id, start_date, end_date, status, prize_id, name, task) VALUES (3, 1, null, '2021-03-03 21:00:00.000000', '2021-03-03 21:00:00.000000', 1, null, 'test3', null);
INSERT INTO vsu.tournament (id, sponsor_id, winner_id, start_date, end_date, status, prize_id, name, task) VALUES (2, 1, null, '2021-03-04 21:00:00.000000', '2021-03-04 21:00:00.000000', 0, 2, 'asd', 'asda');
INSERT INTO vsu.tournament (id, sponsor_id, winner_id, start_date, end_date, status, prize_id, name, task) VALUES (1, 2, null, '2021-03-06 21:00:00.000000', '2021-03-06 21:00:00.000000', 0, 1, 'выа', 'ыва');

create table vsu.participants
(
    tournament_id serial not null
        constraint participants_tournament_fk
            references vsu.tournament,
    user_id       bigint
        constraint participants_users_id_fk
            references vsu.users,
    grade         integer,
    task          varchar
);

INSERT INTO vsu.participants (tournament_id, user_id, grade, task) VALUES (2, 8, 0, null);
INSERT INTO vsu.participants (tournament_id, user_id, grade, task) VALUES (3, 9, 2, null);
INSERT INTO vsu.participants (tournament_id, user_id, grade, task) VALUES (3, 8, 1, '23212');

create table vsu.rating
(
    user_id    bigint
        constraint rating__user_fk
            references vsu.users,
    mean       integer,
    deviation  integer,
    technology integer,
    rating     integer
);

create table vsu.technology
(
    tournament_id bigint not null
        constraint technology_tournament_fk
            references vsu.tournament,
    technology    integer,
    percent       integer
);

INSERT INTO vsu.technology (tournament_id, technology, percent) VALUES (1, 1, 100);