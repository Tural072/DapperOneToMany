create database OneToManyDB



use OneToManyDB



create table [Groups](
GroupId int primary key identity(1,1) not null,
[Title] nvarchar(30) not null
) 



create table Students(
StudentId int primary key Identity(1,1) not null,
[FirstName] nvarchar(30) not null,
[Age] int not null,
GroupId int foreign key references Groups(GroupId)
)


INSERT INTO Groups([Title])
VALUES('2201_AZ'),('12012_AZ')


INSERT INTO Students([FirstName],[Age],[GroupId])
VALUES('Jhon',22,1),('Leyla',25,1),('Eli',30,2),('Nergiz',18,2)
