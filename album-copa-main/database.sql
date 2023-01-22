CREATE TABLE selecoes(
  id int AUTO_INCREMENT NOT NULL PRIMARY KEY
  ,nome VARCHAR(50) NOT NULL
);

INSERT INTO selecoes(nome) VALUES ("Argentina");
INSERT INTO selecoes(nome) VALUES ("Brasil");
INSERT INTO selecoes(nome) VALUES ("Franca");

CREATE TABLE mytable(
   id int AUTO_INCREMENT NOT NULL PRIMARY KEY
  ,Position VARCHAR(10) NOT NULL 
  ,Player   VARCHAR(22) NOT NULL 
  ,Club     VARCHAR(23) NOT NULL
  ,Age      INTEGER  NOT NULL
  ,Caps     INTEGER  NOT NULL
  ,Id_Selecao   INTEGER NOT NULL
);

ALTER TABLE mytable 
ADD FOREIGN KEY (Id_Selecao) REFERENCES selecoes(id);

INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Goalkeeper','Franco Armani','River Plate (ARG)',36,18, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Goalkeeper','Emiliano Martinez','Aston Villa (ENG)',30,19, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Goalkeeper','Geronimo Rulli','Villarreal (SPA)',30,4, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Marcos Acuna','Sevilla (SPA)',30,43, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Juan Foyth','Villarreal (SPA)',24,16, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Lisandro Martinez','Man United (ENG)',24,10, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Nahuel Molina','Atletico Madrid (SPA)',24,19, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Gonzalo Montiel','Sevilla (SPA)',25,19, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Nicolas Otamendi','Benfica (POR)',34,93, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','German Pezzella','Real Betis (SPA)',31,32, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Cristian Romero','Tottenham (ENG)',24,12, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Nicolas Tagliafico','Lyon (FRA)',30,42, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Rodrigo De Paul','Atletico Madrid (SPA)',28,44, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Enzo Fernandez','Benfica (POR)',21,3, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Alejandro ''Papu'' Gomez','Sevilla (SPA)',34,15, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Alexis Mac Allister','Brighton (ENG)',23,8, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Exequiel Pa lacios','Bayer Leverkusen (GER)',24,20, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Leandro Paredes','Juventus (ITA)',28,46, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Guido Rodriguez','Real Betis (SPA)',28,26, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Julian Alvarez','Man City (ENG)',22,12, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Thiago Almada**','Atlanta United (USA)',21,1, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Angel Di Maria','Juventus (ITA)',34,124, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Paulo Dybala','AS Roma (ITA)',28,34, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Angel Correa*','Atletico Madrid',25,22, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Lautaro Martinez','Inter Milan (ITA)',25,40, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Lionel Messi','PSG (FRA)',35,165, 1);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Goalkeeper','Alisson','Liverpool (ENG)',30,56, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Goalkeeper','Ederson','Manchester City (ENG)',29,18, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Goalkeeper','Weverton','Palmeiras (BRA)',34,11, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Marquinhos','PSG (FRA)',28,70, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Eder Militao','Real Madrid (SPA)',24,23, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Thiago Silva','Chelsea (ENG)',38,108, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Danilo','Juventus (ITA)',24,15, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Alex Telles','Sevilla (SPA)',29,7, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Dani Alves','Pumas UNAM (MEX)',39,125, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Alex Sandro','Juventus (ITA)',31,37, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Bremer','Juventus (ITA)',25,1, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Fabinho','Liverpool (ENG)',28,28, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Casemiro','Manchester United (ENG)',30,64, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Bruno Guimaraes','Newcastle United (ENG)',24,8, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Fred','Manchester United (ENG)',29,27, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Lucas Paqueta','West Ham (ENG)',25,34, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Everton Ribeiro','Flamengo (BRA)',33,22, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Gabriel Martinelli','Arsenal (ENG)',21,3, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Vinicius Jr.','Real Madrid (SPA)',22,15, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Neymar','PSG (FRA)',30,120, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Antony','Manchester United (ENG)',22,10, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Rodrygo','Real Madrid (SPA)',21,6, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Raphinha','Barcelona (SPA)',25,10, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Richarlison','Tottenham (ENG)',25,37, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Pedro','Flamengo (BRA)',25,2, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Gabriel Jesus','Arsenal (ENG)',25,56, 2);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Goalkeeper','Alphonse Areola','West Ham (ENG)',29,5, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Goalkeeper','Hugo Lloris','Tottenham (ENG)',35,139, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Goalkeeper','Steve Mandanda','Rennes (FRA)',37,34, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Axel Disasi','Monaco (FRA)',24,0, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Lucas Hernandez*','Bayern Munich (FRA)',26,32, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Theo Hernandez','AC Milan (ITA)',25,7, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Ibrahima Konate','Liverpool (ENG)',23,2, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Jules Kounde','Barcelona (SPA)',23,12, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Benjamin Pavard','Bayern Munich (GER)',26,46, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','William Saliba','Arsenal (ENG)',21,7, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Dayot Upamecano','Bayern Munich (GER)',23,7, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Defender','Raphael Varane','Manchester United (ENG)',29,87, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Eduardo Camavinga','Real Madrid (SPA)',19,4, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Youssouf Fofana','AS Monaco (FRA)',23,2, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Matteo Guendouzi','Marseille (FRA)',23,6, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Adrien Rabiot','Juventus (ITA)',27,29, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Aurelien Tchouameni','Real Madrid (SPA)',22,14, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Midfielder','Jordan Veretout','Marseille (FRA)',29,5, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Ousmane Dembele','Barcelona (FRA)',25,28, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Kingsley Coman','Bayern Munich (GER)',26,40, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Olivier Giroud','AC Milan (ITA)',36,114, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Antoine Griezmann','Atletico Madrid (SPA)',31,110, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Kylian Mbappe','PSG (FRA)',23,59, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Marcus Thuram','Bor. M''Gladbach (GER)',25,4, 3);
INSERT INTO mytable(Position,Player,Club,Age,Caps,Id_Selecao) VALUES ('Forward','Randal Kolo Muani','Monaco (FRA)',23,2, 3);  

