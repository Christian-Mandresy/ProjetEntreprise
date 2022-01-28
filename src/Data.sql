create table Departement(
                            Id integer primary key not null auto_increment,
                            Nom VARCHAR(50)
);

-- 6 departement ------------

INSERT INTO Departement (Nom)
VALUES
("Public Relations"),
("Accounting"),
("Asset Management"),
("Advertising"),
("Customer Service"),
("Asset Management"),
("Tech Support"),
("Payroll");

create table Fonction(
                         Id integer primary key not null auto_increment,
                         Nom VARCHAR(50)
);

-- 8 fonction -----------
insert into Fonction(Nom)
values ('Directeur'),('comptables'),('Responsable informatique'),('chargé de la formation'),
       ('ingenieur informatique'),('Chargé de la production et du développement'),('Commercial'),
       ('Chargé de la communication');



create TABLE Employe(
                        Id integer primary key not null AUTO_INCREMENT,
                        Nom VARCHAR(50),
                        Prenom VARCHAR(50),
                        IdFonction integer,
                        IdDepartement integer,
                        FOREIGN KEY (IdFonction) REFERENCES Fonction(Id),
                        FOREIGN KEY (IdDepartement) REFERENCES Departement(Id)
);


INSERT INTO Employe (Nom,Prenom,IdFonction,IdDepartement)
VALUES
("Jolene","Jade Cannon",6,5),
("Maya","Sawyer Wiggins",3,1),
("Amelia","Medge Walker",3,2),
("Jordan","Malachi Hays",6,3),
("Camden","Murphy Browning",6,1),
("Brenda","Cedric Montgomery",1,1),
("Drew","Kaitlin Mack",6,6),
("Molly","Urielle Welch",4,5),
("Jacob","Audrey Willis",2,4),
("Ignacia","Denise Stafford",7,2);
INSERT INTO Employe (Nom,Prenom,IdFonction,IdDepartement)
VALUES
("Noel","Shaine Todd",4,2),
("Lacota","Cruz Raymond",4,1),
("Silas","Luke Reese",5,5),
("Sade","Scarlett Dillard",4,3),
("Phoebe","Yardley Gordon",2,3),
("Chadwick","Alika Mccormick",6,5),
("Griffith","Cole Cervantes",7,1),
("Briar","Jolene Bennett",4,5),
("Hiram","Scarlett Cohen",5,4),
("Tarik","Janna Case",5,3);
INSERT INTO Employe (Nom,Prenom,IdFonction,IdDepartement)
VALUES
("Gary","Amelia Mcclure",6,3),
("Tatyana","Paul Adkins",7,4),
("Margaret","Bert Dunlap",5,4),
("Rebecca","Brendan Knox",4,4),
("Lee","Fletcher Jacobson",8,5),
("Barrett","Ralph Sloan",3,1),
("Deborah","Armando Mosley",7,4),
("Guinevere","MacKenzie Glass",6,6),
("Fitzgerald","Karen Gill",6,4),
("Lilah","Slade Baker",4,4);
INSERT INTO Employe (Nom,Prenom,IdFonction,IdDepartement)
VALUES
("Connor","Gray Miles",3,4),
("Eric","Hayden Kent",7,4),
("Quamar","Jack Patrick",4,4),
("Jolene","Ariana Curtis",5,6),
("Ariel","Jerome Mack",5,2),
("Roary","Felicia Stein",4,6),
("Sawyer","Aaron Grant",3,6),
("Lillith","Yvette Haney",3,5),
("Jack","Myra Gould",8,3),
("Iliana","Dorian Burgess",3,2);
INSERT INTO Employe (Nom,Prenom,IdFonction,IdDepartement)
VALUES
("Thomas","Nicole Valenzuela",4,1),
("Wanda","Nerea Steele",5,2),
("Aaron","Lisandra Petersen",8,6),
("Illana","Pandora Barrera",3,4),
("Eaton","Cain Walters",4,5),
("Winifred","Fuller Wagner",4,4),
("Lesley","Merritt Castillo",1,5),
("Bert","Brielle Anderson",3,5),
("Samson","Burke Stone",3,6),
("Duncan","Mira Jensen",6,4);

create table Document(
                         IdDocument integer primary key not null auto_increment,
                         NomDocument VARCHAR(50),
                         Path VARCHAR(100)
);

INSERT INTO Document (NomDocument,Path)
VALUES
("1","http://localhost:8080/Entreprise_war_exploded/"),
("2","http://localhost:8080/Entreprise_war_exploded/"),
("3","http://localhost:8080/Entreprise_war_exploded/"),
("4","http://localhost:8080/Entreprise_war_exploded/"),
("5","http://localhost:8080/Entreprise_war_exploded/"),
("6","http://localhost:8080/Entreprise_war_exploded/"),
("7","http://localhost:8080/Entreprise_war_exploded/"),
("8","http://localhost:8080/Entreprise_war_exploded/"),
("9","http://localhost:8080/Entreprise_war_exploded/"),
("10","http://localhost:8080/Entreprise_war_exploded/");
INSERT INTO Document (NomDocument,Path)
VALUES
("11","http://localhost:8080/Entreprise_war_exploded/"),
("12","http://localhost:8080/Entreprise_war_exploded/"),
("13","http://localhost:8080/Entreprise_war_exploded/"),
("14","http://localhost:8080/Entreprise_war_exploded/"),
("15","http://localhost:8080/Entreprise_war_exploded/"),
("16","http://localhost:8080/Entreprise_war_exploded/"),
("17","http://localhost:8080/Entreprise_war_exploded/"),
("18","http://localhost:8080/Entreprise_war_exploded/"),
("19","http://localhost:8080/Entreprise_war_exploded/"),
("20","http://localhost:8080/Entreprise_war_exploded/");
INSERT INTO Document (NomDocument,Path)
VALUES
("21","http://localhost:8080/Entreprise_war_exploded/"),
("22","http://localhost:8080/Entreprise_war_exploded/"),
("23","http://localhost:8080/Entreprise_war_exploded/"),
("24","http://localhost:8080/Entreprise_war_exploded/"),
("25","http://localhost:8080/Entreprise_war_exploded/"),
("26","http://localhost:8080/Entreprise_war_exploded/"),
("27","http://localhost:8080/Entreprise_war_exploded/"),
("28","http://localhost:8080/Entreprise_war_exploded/"),
("29","http://localhost:8080/Entreprise_war_exploded/"),
("30","http://localhost:8080/Entreprise_war_exploded/");


create table pv(
                   Id integer primary key not null AUTO_INCREMENT,
                   IdEmploye integer,
                   Description text,
                   DatePublication DATE,
                   IdDocument integer,
                   FOREIGN KEY (IdEmploye) REFERENCES Employe(Id),
                   FOREIGN KEY (IdDocument) REFERENCES Document(IdDocument)
);

INSERT INTO pv (IdEmploye,Description,DatePublication,IdDocument)
VALUES
(34,"Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio.","2020-06-16",1),
(28,"Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit","2020-03-22",2),
(29,"dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget,","2021-01-01",3),
(31,"lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti","2020-04-26",4),
(39,"vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris","2020-12-23",5),
(35,"eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et","2020-04-05",6),
(39,"nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et","2020-01-09",7),
(50,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum","2020-08-01",8),
(7,"erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris","2020-12-08",9),
(15,"amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec","2020-10-24",10);
INSERT INTO pv (IdEmploye,Description,DatePublication,IdDocument)
VALUES
(41,"sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem","2020-08-01",11),
(42,"malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim","2020-10-22",12),
(5,"ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate,","2020-07-26",13),
(2,"aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis","2020-12-19",14),
(21,"Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est.","2020-09-14",15),
(35,"nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit","2020-07-17",16),
(37,"felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio","2020-09-11",17),
(3,"dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas","2020-09-19",18),
(26,"tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi,","2020-01-21",19),
(47,"viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer","2020-06-22",20);
INSERT INTO pv (IdEmploye,Description,DatePublication,IdDocument)
VALUES
(18,"Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras","2020-06-07",21),
(7,"Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam","2020-07-31",22),
(2,"nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam","2020-05-18",23),
(19,"et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed","2020-02-14",24),
(24,"pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at,","2020-10-12",25),
(12,"viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer","2020-11-29",26),
(1,"ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem","2020-07-16",27),
(26,"amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc.","2020-05-25",28),
(17,"eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci","2020-01-07",29),
(47,"malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada","2020-08-10",30);


create table Evenement(
                          Id integer primary key not null auto_increment,
                          IdEmploye integer,
                          Description text,
                          DatePublication DATE,
                          DateEvenement DATE,
                          IdDocument integer,
                          FOREIGN KEY (IdEmploye) REFERENCES Employe(Id),
                          FOREIGN KEY (IdDocument) REFERENCES Document(IdDocument)
);

INSERT INTO Evenement (IdEmploye,Description,DatePublication)
VALUES
(5,"sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit","2020-08-20"),
(12,"eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et","2020-03-05"),
(22,"Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing","2020-04-02"),
(34,"tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis","2020-06-21"),
(42,"feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat","2020-07-12"),
(5,"adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin","2020-07-07"),
(24,"auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod","2020-06-25"),
(16,"habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi","2020-08-31"),
(19,"non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget","2020-06-30"),
(11,"sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet","2020-03-31");
INSERT INTO Evenement (IdEmploye,Description,DatePublication)
VALUES
(45,"id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec","2020-07-30"),
(24,"nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel","2020-01-12"),
(37,"in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing","2020-09-16"),
(14,"facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus","2020-07-08"),
(5,"adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy","2020-06-22"),
(25,"turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus,","2020-08-08"),
(23,"tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna","2020-05-18"),
(15,"quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris.","2020-10-21"),
(35,"varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non,","2020-05-20"),
(42,"Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget,","2020-02-23");
INSERT INTO Evenement (IdEmploye,Description,DatePublication)
VALUES
(16,"urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet,","2020-10-24"),
(45,"enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla","2020-12-06"),
(10,"pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem","2020-10-08"),
(48,"arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non,","2020-03-26"),
(19,"Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula","2020-02-20"),
(49,"metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget","2020-07-24"),
(5,"convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor","2020-08-08"),
(46,"torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt","2020-08-24"),
(47,"Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus","2020-12-14"),
(25,"sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at","2020-01-27");
INSERT INTO Evenement (IdEmploye,Description,DatePublication)
VALUES
(40,"luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec","2020-09-26"),
(33,"ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate,","2020-04-25"),
(21,"bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed","2020-08-19"),
(10,"tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare","2020-03-10"),
(31,"Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non,","2020-08-29"),
(26,"iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget","2020-04-28"),
(3,"ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc","2020-11-03"),
(36,"Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae","2020-08-26"),
(21,"purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim,","2020-10-08"),
(24,"dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla","2020-02-09");
INSERT INTO Evenement (IdEmploye,Description,DatePublication)
VALUES
(41,"lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id,","2020-05-15"),
(20,"amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna","2020-01-29"),
(19,"lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque","2020-02-17"),
(17,"ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida","2020-03-10"),
(15,"tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In","2020-02-21"),
(19,"sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci","2020-12-28"),
(27,"pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac","2020-05-07"),
(4,"at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum","2020-07-20"),
(8,"et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus.","2020-09-15"),
(24,"at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum.","2020-03-09");



