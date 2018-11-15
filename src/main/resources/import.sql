--création du premier quiz
insert into quiz (id,name) values (1,'Burger Quiz');

	--création de la 1ere question
	insert into question (id,text,quiz_id) values (1,'Lequel de ces films osé n existe pas ?',1);
		--choix de la question 1 
		insert into choice (id,value,question_id) values (1,'Qui veut la bite de roger rapeau',1);
		insert into choice (id,value,question_id) values (2,'Le silence des anus',1);
		insert into choice (id,value,question_id) values (3,'Couche moi sur le sable et fais jaillir ton petrole',1);
		insert into choice (id,value,question_id) values (4,'Blanche fesse et les sept mains',1);
		--reponse : Blanche fesse et les sept mains

	--création de la 2e question
	insert into question (id,text,quiz_id) values (2,'Qu est qui est désormais censuré au cinéma en Chine ?',1);
		--choix de la question 1 
		insert into choice (id,value,question_id) values (5,'Les femmes ce serait un peu misogyne',2);
		insert into choice (id,value,question_id) values (6,'Les étangers, ce serait un peu xénophobe',2);
		insert into choice (id,value,question_id) values (7,'Les arts martiaux, ce serait un peu négationniste',2);
		insert into choice (id,value,question_id) values (8,'Les voyages dans le temps, ce serait un peu spatio-temporophobe',2);
		--réponse : Les voyages dans le temps
		
	--création de la 2e question
	insert into question (id,text,quiz_id) values (3,'Parmi ces 4 mots, lequel est un meuble IKEA ?',1);
		--choix de la question 1 
		insert into choice (id,value,question_id) values (9,'Pälvä',3);
		insert into choice (id,value,question_id) values (10,'Fjällbo',3);
		insert into choice (id,value,question_id) values (11,'Yrjänä',3);
		insert into choice (id,value,question_id) values (12,'Boofmöalük',3);
		--réponse : Les voyages dans le temps
		
--création de plusieurs quiz
insert into quiz (id,name) values (2,'Sandwich Quiz');
insert into quiz (id,name) values (3,'Panini Quiz');

--création du 4e quiz
insert into quiz (id,name) values (4,'J2EE quiz');

	insert into question (id,text,quiz_id) values (4,'Est-ce vous aimez le J2EE ?',4);
		--choix de la question 1 du 4e quiz
		insert into choice (id,value,question_id) values (13,'oui',4);
		insert into choice (id,value,question_id) values (14,'non',4);
		insert into choice (id,value,question_id) values (15,'merde',4);
		
--les réponses
insert into answer (id,value,choice_id) values(1,'Le silence des anus',2);
insert into answer (id,value,choice_id) values(2,'Le silence des anus',2);
insert into answer (id,value,choice_id) values(3,'Blanche fesse et les sept mains',4);
insert into answer (id,value,choice_id) values(4,'Qui veut la bite de roger rapeau',1);

insert into answer (id,value,choice_id) values(5,'oui',13);
insert into answer (id,value,choice_id) values(6,'oui',13);
insert into answer (id,value,choice_id) values(7,'oui',13);
insert into answer (id,value,choice_id) values(8,'oui',13);
insert into answer (id,value,choice_id) values(9,'oui',13);
insert into answer (id,value,choice_id) values(10,'non',14);
insert into answer (id,value,choice_id) values(11,'non',14);
insert into answer (id,value,choice_id) values(12,'non',14);
insert into answer (id,value,choice_id) values(13,'merde',15);
insert into answer (id,value,choice_id) values(14,'merde',15);

insert into utilisateur (id,mail,newsletter) values(1,'jl@mail.fr',true);