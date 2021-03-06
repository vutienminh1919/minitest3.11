CREATE
DATABASE tour_management;

CREATE table tours
(
    id           int PRIMARY KEY AUTO_INCREMENT,
    tour_code    varchar(50),
    tour_type_id int,
    name         varchar(60),
    price        varchar(50),
    start_date   date,
    end_date     date
);
INSERT INTO `tours`(`tour_code`, `tour_type_id`, `name`, `price`, `start_date`, `end_date`)
VALUES ('HL', 2, 'Chuyen di toi Ha Long', '100USD', '2020-3-19', '2020-3-22'),
       ('QN', 3, 'Chuyen di toi Quang Ninh', '150USD', '2020-4-19', '2020-4-22'),
       ('NT', 1, 'Chuyen di toi Nha Trang', '200USD', '2020-5-19', '2020-5-22'),
       ('DS', 3, 'Chuyen di toi Do Son', '500USD', '2020-3-20', '2020-3-30'),
       ('HN', 2, 'Chuyen di toi Ha Noi', '100USD', '2020-6-19', '2020-6-22'),
       ('SS', 2, 'Chuyen di toi Sam Son', '30USD', '2020-1-19', '2020-1-22'),
       ('CL', 1, 'Chuyen di toi Cua Lo', '100USD', '2020-8-19', '2020-8-22'),
       ('HUE', 5, 'Chuyen di toi Hue', '100USD', '2020-4-5', '2020-4-8'),
       ('HN', 2, 'Chuyen di toi Ha Noi', '100USD', '2020-9-19', '2020-9-22'),
       ('HN', 1, 'Chuyen di toi Ha Noi', '100USD', '2020-3-19', '2020-3-24');

CREATE TABLE locations
(
    id        int PRIMARY KEY AUTO_INCREMENT,
    name      varchar(50),
    detail    text,
    avg_price varchar(50),
    city_id   int
);
insert into `locations`(`name`, `detail`, `avg_price`,)
VALUES ('Ha Noi', 'Ha Noi nghin nam van vo', '200USD'),
       ('Ha Long', 'Canh rat dep', '200USD'),
       ('Do Son', 'An hai san thoai mai ', '200USD');

CREATE table customers
(
    id             int PRIMARY KEY AUTO_INCREMENT,
    name           varchar(50),
    id_card_number int unique,
    year_of_birth  int,
    city_id        int
);
insert into customers (`name`, `id_card_number`, `year_of_birth`, `city_id`)
VALUES ('Minh', '123456789', 1996, 1),
       ('Duc', '123456788', 1996, 2),
       ('Tuan Anh', '123467778', 1995, 1),
       ('Xuan Anh', '123456999', 1997, 3),
       ('Thanh', '123456876', 1966, 2),
       ('Nhu Anh', '123456939', 1965, 4),
       ('Khanh', '123456373', 1999, 1),
       ('Doc co cau bai', '1234562928', 1900, 2),
       ('Anh hung xa dieu', '123456986', 1900, 2);

CREATE table cities
(
    id   int PRIMARY KEY AUTO_INCREMENT,
    name varchar(50)
);
insert into cities(`name`)
values ('Hai Phong'),
       ('Ha Noi'),
       ('Nghe An'),
       ('Hue'),
       ('Khanh Hoa');
create table tour_type
(
    id        int primary key auto_increment,
    tour_code varchar(50),
    name      varchar(50)
);
insert into tour_type (tour_code, name)
values ('HN', 'tour vip co ghe giuong nam co tay vin '),
       ('HP', 'tour vip co an hai san mien phi ');

create table order_invoice
(
    id          int primary key auto_increment,
    tour_id     int,
    customer_id int,
    status      varchar(50)
);
insert into order_invoice (tour_id, customer_id, status)
values (1, 1, 'da thanh toan 20%'),
       (3, 2, 'chua thanh toan'),
       (2, 3, 'da thanh toan 10%'),
       (5, 4, 'da thanh toan 50%'),
       (1, 5, 'da thanh toan 100%'),
       (6, 6, 'da thanh toan'),
       (3, 7, 'chua thanh toan'),
       (5, 8, 'da thanh toan 100%'),
       (1, 9, 'chua thanh toan'),
       (2, 10, 'da thanh toan 100%');

select count(name)
from `tours`
where `start_date` between '2020-3-1' and '2020-3-31';
select count(name)
from `tours`
where `end_date` between '2020-4-1' and '2020-4-30';
select distinct count(tour_code)
from `tours`;


