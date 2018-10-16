CREATE DATABASE ejercicioJuegos
GO

USE ejercicioJuegos
GO

CREATE TABLE juego(
id INT IDENTITY(1,1),
nombreJuego VARCHAR (30),
stock INT,
precio INT,
PRIMARY KEY (id)
)
GO

CREATE TABLE genero(
id INT IDENTITY(1,1),
nombreGenero VARCHAR(30),
PRIMARY KEY (id)
)
GO

CREATE TABLE juego_genero(
id INT IDENTITY (1,1),
fk_juego INT,
fk_genero INT,
PRIMARY KEY (id),
FOREIGN KEY (fk_juego) REFERENCES juego (id),
FOREIGN KEY (fk_genero) REFERENCES genero (id)
)
GO

INSERT INTO genero VALUES ('Survival')--1
INSERT INTO genero VALUES ('Sigilo')--2
INSERT INTO genero VALUES ('Sandbox')--3
INSERT INTO genero VALUES ('Estrategia')--4
INSERT INTO genero VALUES ('Hack and Slash')--5
INSERT INTO genero VALUES ('RPG')--6
INSERT INTO genero VALUES ('Shooter')--7
GO


INSERT INTO juego VALUES('Dishonored', 100, 20000)--1
INSERT INTO juego VALUES('Dishonored 2', 50, 25000)--2
INSERT INTO juego VALUES('Prey', 100, 15000)--3
INSERT INTO juego VALUES('Devil May Cry 5', 100, 10000)--4
INSERT INTO juego VALUES('Bayonetta 3', 100, 15000)--5
INSERT INTO juego VALUES('Half Life 3', 75, 10000)--6
INSERT INTO juego VALUES('Starcraft 2', 300, 30000)--7
GO
/*

Posibles juegos extra
INSERT INTO juego VALUES('Fallout 76', 100, 8000)--7
INSERT INTO juego VALUES('Minecraft', 200, 9000)--8
INSERT INTO juego VALUES('7 days to die', 100, 10000)--9
INSERT INTO juego VALUES('Plague:Inc', 400, 12000)--11
INSERT INTO juego VALUES('Dungeons 4', 50, 16000)--12
INSERT INTO juego VALUES('Chaos Legion', 100, 13000)--13
INSERT INTO juego VALUES('Heroes of Might and Magic 7', 100, 13600)--14
*/
GO

INSERT INTO juego_genero VALUES(1,2)
INSERT INTO juego_genero VALUES(1,7)
INSERT INTO juego_genero VALUES(1,6)
INSERT INTO juego_genero VALUES(1,1)

INSERT INTO juego_genero VALUES(2,2)
INSERT INTO juego_genero VALUES(2,7)
INSERT INTO juego_genero VALUES(2,6)
INSERT INTO juego_genero VALUES(2,1)


INSERT INTO juego_genero VALUES(3,2)
INSERT INTO juego_genero VALUES(3,7)
INSERT INTO juego_genero VALUES(3,6)

INSERT INTO juego_genero VALUES(4,5)
INSERT INTO juego_genero VALUES(4,6)

INSERT INTO juego_genero VALUES(5,5)
INSERT INTO juego_genero VALUES(5,6)


INSERT INTO juego_genero VALUES(6,1)
INSERT INTO juego_genero VALUES(6,6)

INSERT INTO juego_genero VALUES (7,4)
GO


--Listado de juegos, top 3 ordenados por stock de mayor a menor

CREATE VIEW verTop3Juegos AS
SELECT TOP 3 juego.id, juego.nombreJuego, juego.stock, juego.precio FROM juego, genero, juego_genero WHERE juego.id=juego_genero.fk_juego AND
juego_genero.fk_genero=genero.id  GROUP BY juego.id, juego.nombreJuego, juego.precio, juego.stock ORDER BY stock DESC
GO


--Promedio de precio de juegos
SELECT AVG(precio) FROM juego 
GO

--Listado de juegos que esten asociados al genero Survival
CREATE VIEW	 verJuegosSurvival AS
SELECT juego.id, juego.nombreJuego, juego.stock, juego.precio FROM juego, genero, juego_genero WHERE juego.id=juego_genero.fk_juego AND
juego_genero.fk_genero=genero.id AND genero.nombreGenero='Survival'
GO

SELECT * FROM verTop3Juegos
GO

SELECT * FROM verJuegosSurvival
GO


/*
SELECT * FROM juego
SELECT * FROM genero
SELECT * FROM juego_genero






USE MASTER
GO
DROP DATABASE ejercicioJuegos
GO
*/