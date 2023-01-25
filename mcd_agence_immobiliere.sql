#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: client
#------------------------------------------------------------

CREATE TABLE client(
        numclient     Varchar (50) NOT NULL ,
        nomclient     Varchar (50) NOT NULL ,
        titre         Varchar (50) NOT NULL ,
        adresseclient Varchar (50) NOT NULL
	,CONSTRAINT client_PK PRIMARY KEY (numclient)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: appartement 
#------------------------------------------------------------

CREATE TABLE appartement(
        numappart  Varchar (50) NOT NULL ,
        typeappart Varchar (50) NOT NULL ,
        etage      Int NOT NULL ,
        porte      Int NOT NULL ,
        superficie Varchar (50) NOT NULL
	,CONSTRAINT appartement_PK PRIMARY KEY (numappart)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: immeuble 
#------------------------------------------------------------

CREATE TABLE immeuble(
        numim        Int NOT NULL ,
        typeimmeuble Varchar (50) NOT NULL ,
        taxe         Varchar (50) NOT NULL
	,CONSTRAINT immeuble_PK PRIMARY KEY (numim)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ville 
#------------------------------------------------------------

CREATE TABLE ville(
        codeville   Int NOT NULL ,
        codepostale Int NOT NULL ,
        nomville    Varchar (50) NOT NULL
	,CONSTRAINT ville_PK PRIMARY KEY (codeville)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: louer 
#------------------------------------------------------------

CREATE TABLE louer(
        numappart       Varchar (50) NOT NULL ,
        numclient       Varchar (50) NOT NULL ,
        datesignature   Varchar (50) NOT NULL ,
        dateresiliation Varchar (50) NOT NULL
	,CONSTRAINT louer_PK PRIMARY KEY (numappart,numclient)

	,CONSTRAINT louer_appartement_FK FOREIGN KEY (numappart) REFERENCES appartement(numappart)
	,CONSTRAINT louer_client0_FK FOREIGN KEY (numclient) REFERENCES client(numclient)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: appartenir 
#------------------------------------------------------------

CREATE TABLE appartenir(
        numim     Int NOT NULL ,
        numappart Varchar (50) NOT NULL
	,CONSTRAINT appartenir_PK PRIMARY KEY (numim,numappart)

	,CONSTRAINT appartenir_immeuble_FK FOREIGN KEY (numim) REFERENCES immeuble(numim)
	,CONSTRAINT appartenir_appartement0_FK FOREIGN KEY (numappart) REFERENCES appartement(numappart)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: habiter
#------------------------------------------------------------

CREATE TABLE habiter(
        numclient Varchar (50) NOT NULL ,
        codeville Int NOT NULL
	,CONSTRAINT habiter_PK PRIMARY KEY (numclient,codeville)

	,CONSTRAINT habiter_client_FK FOREIGN KEY (numclient) REFERENCES client(numclient)
	,CONSTRAINT habiter_ville0_FK FOREIGN KEY (codeville) REFERENCES ville(codeville)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: situer
#------------------------------------------------------------

CREATE TABLE situer(
        codeville Int NOT NULL ,
        numim     Int NOT NULL
	,CONSTRAINT situer_PK PRIMARY KEY (codeville,numim)

	,CONSTRAINT situer_ville_FK FOREIGN KEY (codeville) REFERENCES ville(codeville)
	,CONSTRAINT situer_immeuble0_FK FOREIGN KEY (numim) REFERENCES immeuble(numim)
)ENGINE=InnoDB;

