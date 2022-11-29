-- CRIANDO E USANDO DATABASE

CREATE DATABASE ProjetoIndividual;

USE ProjetoIndividual;

-- CRIANDO TABELAS

CREATE TABLE usuario (
	idUsuario INT AUTO_INCREMENT,
    fkAllStar INT,
    FOREIGN KEY (fkAllStar) REFERENCES AllStar(idAllStar),
    PRIMARY KEY (idUsuario, fkAllStar),
	nome VARCHAR(45),
	email VARCHAR(45),
	senha VARCHAR(60),
    nascimento DATE
);

CREATE TABLE AllStar (
	idAllStar INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(45),
	UltimoTime VARCHAR(100)
)AUTO_INCREMENT = 1000;

create table Estatistica (
	idEstatistica INT AUTO_INCREMENT,
	fkAllStar INT,
	FOREIGN KEY (fkAllStar) REFERENCES AllStar(idAllStar),
    PRIMARY KEY (idEstatistica, fkAllStar),
	JogosDisputados INT,
	PontosPorPartida DECIMAL(10,2),
	ArremessosEmQuadra DECIMAL(10,2),
	Arremessos3Pts DECIMAL(10,2),
    RebotesPorPartida DECIMAL(10,2),
    AssistênciasPorPartida DECIMAL(10,2),
    RoubosDeBolaPorPartida DECIMAL(10,2),
    BloqueiosPorPartida DECIMAL(10,2),
    Camisa CHAR(2)
)AUTO_INCREMENT = 500;

-- INSERINDO DADOS

INSERT INTO usuario VALUES
(null, 1009, 'Matheus', 'matheus.moura@gmail.com', 'matheus123', '2004-04-28'),
(null, 1011, 'Marcus', 'Marcus12@gmail.com', 'vivian123', '2003-03-15');

INSERT INTO AllStar VALUES
(null, 'Michael Jordan', 'Washington Wizards'),
(null, 'Lebron James', 'Los Angeles Lakers'),
(null, 'Kareem Abdul Jabbar', 'Los Angeles Lakers'),
(null, 'Earving "Magic" Johnson', 'Los Angeles Lakers'),
(null, 'Wilt Chamberlain', 'Los Angeles Lakers'),
(null, 'Bill Russell', 'Boston Celtics'),
(null, 'Larry Bird', 'Boston Celtics'),
(null, 'Tim Duncan', 'San Antonio Spurs'),
(null, 'Oscar Robertson', 'Milwaukee Buck'),
(null, 'Kobe Bryant', 'Lakers'),
(null, "Shaquille O'Neal", 'Boston Celtics'),
(null, 'Kevin Durant', 'Brooklyn Nets'),
(null, 'Hakeem Olajuwon', 'Toronto Raptors'),
(null, 'Julius Erving', 'Philadelphia 76ers'),
(null, 'Stephen Curry', 'Golden State Warriors');

INSERT INTO Estatistica VALUES
(null, 1000, '1072', '30.1', '49.7', '32.7', '6.2', '5.3', '2.3', '0.8', '23'),
(null, 1001, '1376', '27.1', '50.4', '34.5', '7.5', '7.4', '1.6', '0.8', '6'),
(null, 1002, '1560', '36.8', '55.9', '5.6', '11.2', '3.6', '0.7', '2.0', '33'),
(null, 1003, '906', '19.5', '52.0', '30.3', '7.2', '11.2', '1.9', '0.4', '32'),
(null, 1004, '1045', '30.1', '54.0', null, '22.9', '4.4', null, null, '13'),
(null, 1005, '963', '15.1', '44.0', null, '22.5', '4.3', null, null, '6'),
(null, 1006, '897', '24.3', '49.6', '37.6', '10.0', '6.3', '1.7', '0.8', '33'),
(null, 1007, '1392', '19.0', '50.6', '17.9', '10.8', '3.0', '0.7', '2.2', '21'),
(null, 1008, '1040', '25.7', '48.5', null, '7.5', '9.5', '0.1', '0.0', '14'),
(null, 1009, '1346', '25.0', '44.7', '32.9', '5.2', '4.7', '1.4', '0.5', '24'),
(null, 1010, '1207', '23.7', '58.2', '4.5', '10.9', '2.5', '0.6', '2.3', '36'),
(null, 1011, '957', '27.2', '49.7', '38.3', '7.1', '4.3', '1.1', '1.1', '7'),
(null, 1012, '1238', '21.8', '51.2', '20.2', '11.1', '2.5', '1.7', '3.1', '34'),
(null, 1013, '836', '22.0', '50.7', '26.1', '6.7', '3.9', '1.8', '1.5', '6'),
(null, 1014, '842', '24.4', '47.5', '42.8', '4.7', '6.5', '1.6', '0.2', '30');

-- SELECTS

SELECT * FROM Usuario;
SELECT * FROM AllStar;
SELECT * FROM Estatistica;

SELECT
    (SELECT COUNT(*) FROM Usuario WHERE fkAllStar = 1001) as JogadorFavorito1,
    (SELECT COUNT(*) FROM Usuario WHERE fkAllStar = 1002) as JogadorFavorito2,
    (SELECT COUNT(*) FROM Usuario WHERE fkAllStar = 1003) as JogadorFavorito3,
    (SELECT COUNT(*) FROM Usuario WHERE fkAllStar = 1004) as JogadorFavorito4,
    (SELECT COUNT(*) FROM Usuario WHERE fkAllStar = 1005) as JogadorFavorito5,
    (SELECT COUNT(*) FROM Usuario WHERE fkAllStar = 1006) as JogadorFavorito6,
    (SELECT COUNT(*) FROM Usuario WHERE fkAllStar = 1007) as JogadorFavorito7,
    (SELECT COUNT(*) FROM Usuario WHERE fkAllStar = 1008) as JogadorFavorito8,
    (SELECT COUNT(*) FROM Usuario WHERE fkAllStar = 1009) as JogadorFavorito9,
    (SELECT COUNT(*) FROM Usuario WHERE fkAllStar = 1010) as JogadorFavorito10,
    (SELECT COUNT(*) FROM Usuario WHERE fkAllStar = 1011) as JogadorFavorito11,
    (SELECT COUNT(*) FROM Usuario WHERE fkAllStar = 1012) as JogadorFavorito12,
    (SELECT COUNT(*) FROM Usuario WHERE fkAllStar = 1013) as JogadorFavorito13,
    (SELECT COUNT(*) FROM Usuario WHERE fkAllStar = 1014) as JogadorFavorito14;
    