#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Rayons 
#------------------------------------------------------------

CREATE TABLE Rayons(
        code_rayon     Varchar (50) NOT NULL ,
        intitule_rayon Varchar (50) NOT NULL
	,CONSTRAINT Rayons_PK PRIMARY KEY (code_rayon)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: auteurs
#------------------------------------------------------------

CREATE TABLE auteurs(
        code_auteur   Varchar (50) NOT NULL ,
        nom_auteur    Varchar (50) NOT NULL ,
        prenom_auteur Varchar (50) NOT NULL
	,CONSTRAINT auteurs_PK PRIMARY KEY (code_auteur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: mots clé
#------------------------------------------------------------

CREATE TABLE mots_cle(
        code_mot Varchar (50) NOT NULL ,
        mot      Varchar (50) NOT NULL
	,CONSTRAINT mots_cle_PK PRIMARY KEY (code_mot)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: adhérents
#------------------------------------------------------------

CREATE TABLE adherents(
        code_adherent     Varchar (50) NOT NULL ,
        nom_adherent      Varchar (50) NOT NULL ,
        prenom_adherent   Varchar (50) NOT NULL ,
        adresse_adherent  Varchar (50) NOT NULL
	,CONSTRAINT adherents_PK PRIMARY KEY (code_adherent)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ouvrages
#------------------------------------------------------------

CREATE TABLE ouvrages(
        code_ouvrages Varchar (50) NOT NULL ,
        titre         Varchar (50) NOT NULL ,
        date_emprunt  Date NOT NULL ,
        code_adherent Varchar (50) NOT NULL ,
        code_rayon    Varchar (50) NOT NULL
	,CONSTRAINT ouvrages_PK PRIMARY KEY (code_ouvrages)

	,CONSTRAINT ouvrages_adherents_FK FOREIGN KEY (code_adherent) REFERENCES adherents(code_adherent)
	,CONSTRAINT ouvrages_Rayons0_FK FOREIGN KEY (code_rayon) REFERENCES Rayons(code_rayon)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: est l'auteur de 
#------------------------------------------------------------

CREATE TABLE est_l_auteur_de(
        code_ouvrages Varchar (50) NOT NULL ,
        code_auteur   Varchar (50) NOT NULL
	,CONSTRAINT est_l_auteur_de_PK PRIMARY KEY (code_ouvrages,code_auteur)

	,CONSTRAINT est_l_auteur_de_ouvrages_FK FOREIGN KEY (code_ouvrages) REFERENCES ouvrages(code_ouvrages)
	,CONSTRAINT est_l_auteur_de_auteurs0_FK FOREIGN KEY (code_auteur) REFERENCES auteurs(code_auteur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: indexe 
#------------------------------------------------------------

CREATE TABLE indexe(
        code_ouvrages Varchar (50) NOT NULL ,
        code_mot      Varchar (50) NOT NULL
	,CONSTRAINT indexe_PK PRIMARY KEY (code_ouvrages,code_mot)

	,CONSTRAINT indexe_ouvrages_FK FOREIGN KEY (code_ouvrages) REFERENCES ouvrages(code_ouvrages)
	,CONSTRAINT indexe_mots_cle0_FK FOREIGN KEY (code_mot) REFERENCES mots_cle(code_mot)
)ENGINE=InnoDB;

