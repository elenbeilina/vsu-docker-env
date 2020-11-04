create schema if not exists vsu;

create table vsu.answer
(
    id          bigint not null
        constraint answer_pk
            primary key,
    description varchar
);

create unique index answer_id_uindex
    on vsu.answer (id);

create table vsu.department
(
    id          bigint  not null
        constraint department_pkey
            primary key,
    name        varchar not null,
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
    id              bigint  not null
        constraint users_pkey
            primary key,
    role_id         bigint  not null,
    student_book_id varchar not null,
    department_id   bigint  not null
        constraint users_department__fk
            references vsu.department,
    username        varchar not null,
    first_name      varchar not null,
    second_name     varchar not null,
    rating          bigint  not null,
    password        varchar not null,
    description     varchar,
    birthday        timestamp with time zone,
    picture         varchar,
    facebook  varchar,
    instagram varchar,
    twitter   varchar,
    vk        varchar
);

INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, rating, password, description, birthday, picture) VALUES (2, 2, '80809090', 1, 'dataart', 'DataArt', ' ', 0, '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'DataArt — международная сеть компаний, которые проектируют, разрабатывают, модернизирует и поддерживают IT-решения. В 17 центрах продаж и разработки DataArt работают более 2200 специалистов.', null, 'https://upload.wikimedia.org/wikipedia/commons/5/55/DataArt%27s_Logo.png');
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, rating, password, description, birthday, picture) VALUES (4, 2, '80809090', 1, 'lukoil', 'ЛУКОЙЛ', ' ', 0, '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'ПАО «Лукойл» — российская нефтяная компания. Официальное название — ПАО «Нефтяная компания „Лукойл“» Наименование компании происходит от первых букв названий городов нефтяников и слова «ойл». Вторая после «Газпрома» по объёмам выручки компания в России.', null, 'https://www.polinaft.com/images/lukoil.png');
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, rating, password, description, birthday, picture) VALUES (9, 1, '80809090', 1, 'user4', 'Анатолий', 'Сидорчук', 3450, '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'У меня свой путь к счастью... И я не люблю, когда мне навязывают чужие маршруты... ПОВЕРЬТЕ, за руль своей жизни я не посажу никого!', null, 'http://advicewoman.ru/wp-content/uploads/2017/05/kakim-dolzhen-byt-nastoyashiy-muzhchina.jpg');
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, rating, password, description, birthday, picture) VALUES (8, 1, '80809090', 1, 'user3', 'Александр', 'Смирнов', 545, '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'Я очень богат! У меня два видящих глаза, рабочие руки и ноги, да и слышу вроде неплохо. Я вижу рассвет, закат, чувствую, живу моментом. Радуйтесь мелочам.', null, 'http://kak-bog.ru/sites/default/files/imagecache/height_200/brutalnyy_muzhchina.jpg');
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, rating, password, description, birthday, picture) VALUES (1, 0, '80809090', 1, 'admin', '', ' Administrator', 100000, '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'Администратор сервиса VSU Tournaments', null, 'http://www.monteirolobato.edu.br/public/assets/admin/images/avatars/avatar4_big.png');
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, rating, password, description, birthday, picture) VALUES (5, 2, '80809090', 1, 'inline', 'Ин Лайн', 'Груп', 156, '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'Инлайн', null, 'http://www.inlinegroup.ru/img/logo/logo.png');
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, rating, password, description, birthday, picture) VALUES (3, 2, '', 1, 'netcrk', ' ', 'NetCracker', 0, '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'Netcracker Technology — дочерняя компания корпорации NEC, специализирующаяся на создании, внедрении и сопровождении систем эксплуатационной поддержки, систем поддержки бизнеса, а также SDN/NFV-решений для операторов связи, крупных предприятий и государственных учреждений.', null, 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c2/Netcracker_Technology_logo.svg/1280px-Netcracker_Technology_logo.svg.png');
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, rating, password, description, birthday, picture) VALUES (12, 1, '1232123231', 1, 'y1', 'йо', 'ой', 0, '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG', 'йо', null, null);
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, rating, password, description, birthday, picture) VALUES (6, 1, '808090902', 2, 'al_kachino', 'Алиса', 'Капранчик', 1000, '$2a$10$sSqZgvQ1QdWSA0/zFU8Xh.s2XF5UIKDTdph3vZrhoODXkQ3ZMOM1.', 'Всем привет', null, 'https://pic.sport.ua/images/news/0/8/112/orig_342444.jpg');

create table vsu.news
(
    id           bigint  not null
        constraint news_pk
            primary key,
    owner        bigint  not null
        constraint news_users__fk
            references vsu.users,
    title        varchar not null,
    description  varchar not null,
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
    id          integer not null
        constraint prizes_pk
            primary key,
    owner       integer,
    name        varchar,
    picture     varchar,
    description varchar
);

create unique index prizes_id_uindex
    on vsu.prizes (id);

create table vsu.partisipants
(
    tournament_id bigint not null,
    user_id       bigint not null
);

create table vsu.question
(
    id          bigint                   not null
        constraint question_pk
            primary key,
    owner_id    bigint                   not null
        constraint question_users__fk
            references vsu.users,
    start_date  timestamp with time zone not null,
    description varchar                  not null,
    answer_id   bigint
        constraint question_answer__fk
            references vsu.answer
);

create unique index question_id_uindex
    on vsu.question (id);

create table vsu.tournament
(
    id            bigint                   not null
        constraint tournament_pk
            primary key,
    sponsor_id    bigint                   not null
        constraint "TOURNAMENTS_fk0"
            references vsu.users,
    department_id bigint                   not null
        constraint "TOURNAMENTS_fk2"
            references vsu.department,
    winner_id     bigint
        constraint "TOURNAMENTS_fk1"
            references vsu.users,
    start_date    timestamp with time zone not null,
    end_date      timestamp with time zone not null,
    status        bigint                   not null,
    label         bigint,
    prize_id      integer
        constraint tournament___fk3
            references vsu.prizes
);