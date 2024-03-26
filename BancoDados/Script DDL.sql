create database ConectaCafe;
go

use ConectaCafe;
go

create table Categoria 
(
	Id		int not null identity,
	Nome	varchar(30) not null, 
	constraint Pk_Categoria primary key (Id)

);

create table Produto 
(
	Id			int not null identity,
	Nome		varchar(60) not null,
	Descricao	varchar(200),
	Preco       decimal(8,2) not null,
	Foto        varchar(200),
	CategoriaId int not null,
	constraint Pk_Produto primary key (Id),
	constraint FK_Produto_Categoria 
	foreign key(CategoriaId) references Categoria (Id)
);

create table Avaliacao
(
	Id			int not null identity,
	Pessoa		varchar(60) not null,
	Titulo		varchar(100) not null,
	Texto		varchar(500) not null,
	Nota		decimal(1,0) not null,
	DataAvaliacao date,
	constraint PK_Avaliacao primary key(Id)
);

create table Blog
(
	Id		int not null identity, 
	Titulo	varchar(100) not null,
	Texto	varchar(500) not null,
	Foto	varchar(200),
	DataBlog datetime,
	constraint PK_Blog primary key (Id)
);

create table Tag 
(
	Id		int not null identity,
	Nome	varchar(30) not null, 
	constraint Pk_Tag primary key (Id)
);

create table BlogTag
(
	BlogId	int not null,
	TagId	int not null,
	constraint PK_BlogTag primary key (BlogId, TagId),
	constraint FK_BlogTag_Blog
		foreign key(BlogId) references Blog(Id),
	constraint FK_BlogTag_tag
		foreign key(TagId) references Tag(Id),
);

create table Configuracao
(
	Id		int not null identity,
	Horario	varchar(200),
	Telefone	varchar(20),
	constraint PK_Configuracao primary key (Id)
);
