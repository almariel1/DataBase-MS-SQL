CREATE DATABASE T_M
GO

USE T_M
GO

CREATE TABLE Typography 
(
	tab_T int NOT NULL IDENTITY(1,1)
		PRIMARY KEY,
	Types varchar(20) NOT NULL,
	Width_height nvarchar(40) NOT NULL,
	Requirements varchar(1000), 
	Parameters varchar(1000),
	Programs nvarchar(30) NOT NULL,
	Formats nvarchar(20) NOT NULL,
);

CREATE TABLE Web 
(

	tab_W int NOT NULL IDENTITY(1,1)
		PRIMARY KEY,
	Types varchar(50) NOT NULL,
	Width_height nvarchar(20) NOT NULL,
	Requirements varchar(1000), 
	Parameters varchar(1000),
	Programs nvarchar(30) NOT NULL,
	Formats nvarchar(40) NOt NULL,
	Interactivity nvarchar(10) NOT NULL,

);

CREATE TABLE Multimedia
(

	tab_M int NOT NULL IDENTITY(1,1)
		PRIMARY KEY,
	Types varchar(50) NOT NULL,
	Width_height nvarchar(40) NOT NULL,
	Requirements varchar(1000), 
	Parameters varchar(1000),
	Programs nvarchar(30) NOT NULL,
	Formats nvarchar(40) NOt NULL,
	Interactivity nvarchar(10) NOT NULL
	
);

CREATE TABLE Grafic
(

	tab_G int NOT NULL IDENTITY(1,1)
		PRIMARY KEY,
	Types varchar(50) NOT NULL,
	Width_height nvarchar(40) NOT NULL,
	Requirements varchar(1000), 
	Parameters varchar(1000),
	Programs nvarchar(30) NOT NULL,
	Formats nvarchar(40) NOT NULL,
);


CREATE TABLE Rest
(

	tab_R int NOT NULL IDENTITY(1,1)
		PRIMARY KEY,
	Types varchar(50) NOT NULL,
	Programs nvarchar(30) NOT NULL,
	Formats nvarchar(20) NOT NULL,
	Interactivity nvarchar(20) NOT NULL
);

CREATE TABLE Summary
(
	tab_T int NOT NULL,
	tab_W int NOT NULL,
	tab_M int NOT NULL,
	tab_G int NOT NULL,
	tab_R int NOT NULL
);
GO


ALTER TABLE Summary ADD
	CONSTRAINT FK_Typography FOREIGN KEY (tab_T)
		REFERENCES Typography (tab_T),
	CONSTRAINT FK_Web FOREIGN KEY (tab_W)
		REFERENCES Web (tab_W),
	CONSTRAINT FK_Multimedia FOREIGN KEY (tab_M)
		REFERENCES Multimedia (tab_M),
	CONSTRAINT FK_Grafic FOREIGN KEY (tab_G)
		REFERENCES Grafic (tab_G),
	CONSTRAINT FK_Rest FOREIGN KEY (tab_R)
		REFERENCES Rest (tab_R);
GO
	