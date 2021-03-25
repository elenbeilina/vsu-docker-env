create schema if not exists vsu;

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

INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (3, 2, '', 1, 'netcrk', ' ', 'NetCracker', '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'Netcracker Technology — дочерняя компания корпорации NEC, специализирующаяся на создании, внедрении и сопровождении систем эксплуатационной поддержки, систем поддержки бизнеса, а также SDN/NFV-решений для операторов связи, крупных предприятий и государственных учреждений.', null, 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c2/Netcracker_Technology_logo.svg/1280px-Netcracker_Technology_logo.svg.png', null, null, null, null);
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (1, 0, '', 1, 'admin', '', ' Administrator', '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'Администратор сервиса VSU Tournaments', null, 'http://www.monteirolobato.edu.br/public/assets/admin/images/avatars/avatar4_big.png', null, null, null, null);
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (5, 2, '', 1, 'inline', 'Ин Лайн', 'Груп', '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'Инлайн', null, 'http://www.inlinegroup.ru/img/logo/logo.png', null, null, null, null);
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (4, 2, '', 1, 'lukoil', 'ЛУКОЙЛ', ' ', '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'ПАО «Лукойл» — российская нефтяная компания. Официальное название — ПАО «Нефтяная компания „Лукойл“» Наименование компании происходит от первых букв названий городов нефтяников и слова «ойл». Вторая после «Газпрома» по объёмам выручки компания в России.', null, 'https://www.polinaft.com/images/lukoil.png', null, null, null, null);
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (2, 2, '', 1, 'dataart', 'DataArt', ' ', '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'DataArt — международная сеть компаний, которые проектируют, разрабатывают, модернизирует и поддерживают IT-решения. В 17 центрах продаж и разработки DataArt работают более 2200 специалистов.', null, 'https://upload.wikimedia.org/wikipedia/commons/5/55/DataArt%27s_Logo.png', null, null, null, null);
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (6, 1, '808090902', 2, 'al_kachino', 'Павел', 'Чехов', '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'Всем привет', null, 'data:image/jpeg;base64,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', null, null, null, null);
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (8, 1, '80809090', 1, 'user3', 'Майкл', 'Бёрнем', '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'Я очень богат! У меня два видящих глаза, рабочие руки и ноги, да и слышу вроде неплохо. Я вижу рассвет, закат, чувствую, живу моментом. Радуйтесь мелочам.', null, 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c6d35fc5-1a3b-48c6-9992-5bbe41698ff6/debv8vq-5873398d-ef09-4f36-aa84-5db3733adeb5.jpg/v1/fill/w_1000,h_667,q_75,strp/let_s_fly__captain_michael_burnham___uss_discovery_by_stalindc_debv8vq-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3siaGVpZ2h0IjoiPD02NjciLCJwYXRoIjoiXC9mXC9jNmQzNWZjNS0xYTNiLTQ4YzYtOTk5Mi01YmJlNDE2OThmZjZcL2RlYnY4dnEtNTg3MzM5OGQtZWYwOS00ZjM2LWFhODQtNWRiMzczM2FkZWI1LmpwZyIsIndpZHRoIjoiPD0xMDAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.Rj5XTvLX2csWrZIOOI9tX-VJMzbHN3WYgofeeLVygTg', null, null, null, null);
INSERT INTO vsu.users (id, role_id, student_book_id, department_id, username, first_name, second_name, password, description, birthday, picture, facebook, instagram, twitter, vk) VALUES (9, 1, '80809090', 1, 'user4', 'Джеймс', 'Кирк', '$2a$10$S6y6fMD5z.d69WWvRcNZJux6CHOh/9PeatgZAQWxf8eVtZxNojbG.', 'У меня свой путь к счастью... И я не люблю, когда мне навязывают чужие маршруты... ПОВЕРЬТЕ, за руль своей жизни я не посажу никого!', null, 'https://i.guim.co.uk/img/media/72702b16786297d4130317692af41ba2fabd7cd6/0_0_3072_1843/master/3072.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=98918f19018c9f579f73970357435ab0', null, null, null, null);

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

INSERT INTO vsu.prizes (id, owner, name, picture, description) VALUES (4, null, 'Футболка Guchi', null, '');
INSERT INTO vsu.prizes (id, owner, name, picture, description) VALUES (6, null, 'Настоящий живой ПИТОН', null, '');

create table vsu.question
(
    id          serial not null
        constraint question_pk
            primary key,
    owner_id    bigint
        constraint question_users_fk
            references vsu.users,
    start_date  timestamp with time zone,
    description varchar
);

create unique index question_id_uindex
    on vsu.question (id);

INSERT INTO vsu.question (id, owner_id, start_date, description) VALUES (1, 8, '2021-03-06 21:00:00.000000', 'string');
INSERT INTO vsu.question (id, owner_id, start_date, description) VALUES (3, 1, '2021-03-25 00:00:00.000000', 'Сколько может быть технологий в турнирах?');

create table vsu.answer
(
    question_id bigint
        constraint answer_question_fk
            references vsu.question,
    description varchar
);

INSERT INTO vsu.answer (question_id, description) VALUES (1, 'test');
INSERT INTO vsu.answer (question_id, description) VALUES (3, '3');

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

INSERT INTO vsu.tournament (id, sponsor_id, winner_id, start_date, end_date, status, prize_id, name, task) VALUES (4, 2, null, '2021-03-25 00:00:00.000000', '2021-03-25 00:00:00.000000', 2, 4, 'Турнир всех наук', 'Загрузи свой самый крутой проект ');
INSERT INTO vsu.tournament (id, sponsor_id, winner_id, start_date, end_date, status, prize_id, name, task) VALUES (6, 2, null, '2021-03-25 00:00:00.000000', '2021-03-25 00:00:00.000000', 2, 6, 'Только питонистам!!', 'пссссссссс');

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

INSERT INTO vsu.participants (tournament_id, user_id, grade, task) VALUES (6, 9, 2, '123');
INSERT INTO vsu.participants (tournament_id, user_id, grade, task) VALUES (6, 8, 3, '123');
INSERT INTO vsu.participants (tournament_id, user_id, grade, task) VALUES (4, 8, 1, '123');
INSERT INTO vsu.participants (tournament_id, user_id, grade, task) VALUES (6, 6, 1, '123');
INSERT INTO vsu.participants (tournament_id, user_id, grade, task) VALUES (4, 9, 2, '123');

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

INSERT INTO vsu.rating (user_id, mean, deviation, technology, rating) VALUES (8, 28, 5, 0, 14);
INSERT INTO vsu.rating (user_id, mean, deviation, technology, rating) VALUES (9, 22, 5, 0, 8);
INSERT INTO vsu.rating (user_id, mean, deviation, technology, rating) VALUES (6, 32, 7, 1, 12);
INSERT INTO vsu.rating (user_id, mean, deviation, technology, rating) VALUES (8, 19, 6, 1, -1);
INSERT INTO vsu.rating (user_id, mean, deviation, technology, rating) VALUES (9, 25, 6, 1, 7);

create table vsu.technology
(
    tournament_id bigint not null
        constraint technology_tournament_fk
            references vsu.tournament,
    technology    integer,
    percent       integer
);

INSERT INTO vsu.technology (tournament_id, technology, percent) VALUES (4, 1, 25);
INSERT INTO vsu.technology (tournament_id, technology, percent) VALUES (4, 0, 75);
INSERT INTO vsu.technology (tournament_id, technology, percent) VALUES (6, 1, 100);