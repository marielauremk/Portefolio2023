#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: catégorie 
#------------------------------------------------------------

CREATE TABLE categorie(
        code_categorie     Varchar (50) NOT NULL ,
        intitule_categorie Text NOT NULL
	,CONSTRAINT categorie_PK PRIMARY KEY (code_categorie)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: marques
#------------------------------------------------------------

CREATE TABLE marques(
        code_marque  Varchar (50) NOT NULL ,
        nom_marque   Varchar (50) NOT NULL
	,CONSTRAINT marques_PK PRIMARY KEY (code_marque)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: modèles 
#------------------------------------------------------------

CREATE TABLE modeles(
        code_modele   Varchar (50) NOT NULL ,
        nom_modele    Varchar (50) NOT NULL ,
        annee_modele  Date NOT NULL ,
        code_marque   Varchar (50) NOT NULL
	,CONSTRAINT modeles_PK PRIMARY KEY (code_modele)

	,CONSTRAINT modeles_marques_FK FOREIGN KEY (code_marque) REFERENCES marques(code_marque)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: types pièce 
#------------------------------------------------------------

CREATE TABLE types_piece(
        code_type_piece  Int  Auto_increment  NOT NULL ,
        code_categorie   Varchar (50) NOT NULL
	,CONSTRAINT types_piece_PK PRIMARY KEY (code_type_piece)

	,CONSTRAINT types_piece_categorie_FK FOREIGN KEY (code_categorie) REFERENCES categorie(code_categorie)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: pièces 
#------------------------------------------------------------

CREATE TABLE pieces(
        code_piece       Varchar (50) NOT NULL ,
        etat             Varchar (50) NOT NULL ,
        date_recap       Date NOT NULL ,
        code_type_piece  Int NOT NULL
	,CONSTRAINT pieces_PK PRIMARY KEY (code_piece)

	,CONSTRAINT pieces_types_piece_FK FOREIGN KEY (code_type_piece) REFERENCES types_piece(code_type_piece)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: convient à 
#------------------------------------------------------------

CREATE TABLE convient_a(
        code_modele      Varchar (50) NOT NULL ,
        code_type_piece  Int NOT NULL
	,CONSTRAINT convient_a_PK PRIMARY KEY (code_modele,code_type_piece)

	,CONSTRAINT convient_a_modeles_FK FOREIGN KEY (code_modele) REFERENCES modeles(code_modele)
	,CONSTRAINT convient_a_types_piece0_FK FOREIGN KEY (code_type_piece) REFERENCES types_piece(code_type_piece)
)ENGINE=InnoDB;

