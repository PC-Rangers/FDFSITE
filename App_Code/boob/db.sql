CREATE TABLE Post
(
	PostNr int,
	[By] varchar(32)
)

CREATE TABLE USR_Brugere
(
	BrugerID int IDENTITY(1,1) PRIMARY KEY,
	BrugeNavn varchar(32),
	Adgangskode varchar(128),
	Salt varchar(128),
	MailAdresse varchar(255),
	BrugerGruppe bit DEFAULT '0',
	Rettighedder int NOT NULL
)

CREATE TABLE USR_Ledere
(
	LederID int IDENTITY(1,1) PRIMARY KEY,
	Fodselsdag date NOT NULL,
	CPR int CHECK (cpr > 999 AND cpr < 10000),
	Navn varchar(64) NOT NULL,
	Telefon int NOT NULL,
	Adresse varchar(64) NOT NULL,
	PostNr int NOT NULL,
	Indmeldt date NOT NULL,
	Udmeldt date
)

CREATE TABLE USR_Medlem_Kontakt
(
	Med_KonID int IDENTITY(1,1) PRIMARY KEY,
	MedlemID int,
	KontaktID int
)

CREATE TABLE USR_Medlemmer
(
	MedlemID int IDENTITY(1,1) PRIMARY KEY,
	Medlem_Kontakt int,
	Fodselsdag date NOT NULL,
	CPR int CHECK (cpr > 999 AND cpr < 10000),
	Adresse varchar(64) NOT NULL,
	PostNr int NOT NULL,
	Stivkrampe date,
	Allergi varchar(255),
	Penicilin bit NOT NULL DEFAULT '0',
	Skole varchar(64),
	Klasse varchar(32),
	Indmeldt date NOT NULL,
	Udmeldt date,
	Gruppe varchar(32) NOT NULL,
	Note text,
	TilladBillede bit NOT NULL DEFAULT '0',

	FOREIGN KEY (Medlem_Kontakt) REFERENCES USR_Medlem_Kontakt(Med_KonID)
)


CREATE TABLE USR_Kontakt
(
	KontaktID int IDENTITY(1,1) PRIMARY KEY,
	Medlem_Kontakt int,
	Navn varchar(64) NOT NULL,
	Telefon int NOT NULL,
	MailAdresse varchar(255) NOT NULL,
	Rolle varchar(32) NOT NULL,

	FOREIGN KEY (Medlem_Kontakt) REFERENCES USR_Medlem_Kontakt(Med_KonID)
)

/* ######################################################################### */

CREATE TABLE UDL_Huse
(
HusID int IDENTITY(1,1) PRIMARY KEY,
Adresse varchar(64) NOT NULL,
PostNr int NOT NULL,
UgePris float NOT NULL,
WeekendPris float NOT NULL
);

CREATE TABLE UDL_Kunder
(
KundeID int IDENTITY(1,1) PRIMARY KEY,
Adresse varchar(64) NOT NULL,
PostNr int NOT NULL,
Navn varchar(64) NOT NULL
);

CREATE TABLE UDL_Booking
(
BookingID int IDENTITY(1,1) PRIMARY KEY,
HusID int,
OrdreID int,
KundeID int,
Start date NOT NULL,
Slut date NOT NULL,

FOREIGN KEY (HusID) REFERENCES UDL_Huse(HusID),
FOREIGN KEY (KundeID) REFERENCES UDL_Kunder(KundeID)
);

CREATE TABLE UDL_Ordre
(
OrdreID int IDENTITY(1,1) PRIMARY KEY,
KundeID int,
BookingID int,
Betalt date,
Pris float NOT NULL,

FOREIGN KEY (KundeID) REFERENCES UDL_Kunder(KundeID),
FOREIGN KEY (BookingID) REFERENCES UDL_Booking(BookingID)
);

ALTER TABLE Booking
ADD FOREIGN KEY (OrdreID)
REFERENCES UDL_Ordre(OrdreID)