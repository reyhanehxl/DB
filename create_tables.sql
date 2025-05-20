create table Person(
    personID int auto_increment primary key,
    name nvarchar(127) not null,
    nationalID nvarchar(10) not null unique
);
create table Student(
    studentID int primary key,
    personID int not null,
    major nvarchar(127) not null,
    foreign key (personID) references Person(personID)
);
create table Teacher(
    teacherID int primary key,
    personID int not null,
    department nvarchar(127) not null,
    academicRank nvarchar(127) not null,
    foreign key (personID) references Person(personID)
);
create table Dish(
    dishID int auto_increment primary key,
    name nvarchar(127) not null
);
create table Daily_menu(
    menuID int auto_increment primary key,
    dishID int not null,
    menuDate DATE not null,
    price int not null,
    foreign key (dishID) references Dish(dishID),
    unique (dishID, menuDate)
);
create table Order_table (
    orderID int auto_increment primary key,
    personID int not null,
    menuID int not null,
    quantity int not null check (quantity > 0),
    foreign key (personID) references Person(personID),
    foreign key (menuID) references Daily_menu(menuID)
);
