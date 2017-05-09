CREATE TABLE Bands
(
BandID int NOT NULL PRIMARY KEY,
ArtistName varchar(50) NULL,
)

CREATE TABLE Contents
(
contentID int NOT NULL PRIMARY KEY,
genreid int NOT NULL,
bandid int NOT NULL,
Ainstrumentid int NOT NULL,
locationid int NOT NULL
)

CREATE TABLE Genres
(
genreID int NOT NULL PRIMARY KEY,
genredesc varchar(max) NOT NULL,
salsatypes varchar(50) NOT NULL,
salsadesc varchar(max) NOT NULL
)

CREATE TABLE Instruments
(
instrumentID int NOT NULL PRIMARY KEY,
instrumentName varchar(50)NULL,
instrumenttypeid int NOT NULL
)

CREATE TABLE InstrumentTypes
(
instrumenttypeID int NOT NULL PRIMARY KEY,
instrumenttypedesc varchar(max) NOT NULL
)

ALTER TABLE Instruments
ADD CONSTRAINT FK_instruments_instrumenttypeid
FOREIGN KEY (instrumenttypeid)
REFERENCES InstrumentTypes (instrumenttypeid);



CREATE TABLE Locations
(
LocationID int NOT NULL PRIMARY KEY,
cityName varchar(50)NULL,
stateName varchar(50)NULL,
countryName varchar(50)NULL
)

CREATE TABLE Singers
(
singerID int NOT NULL PRIMARY KEY,
firstName varchar(50)NULL,
lastName varchar(50)NULL,
bandid int NOT NULL
)

ALTER TABLE Singers
ADD CONSTRAINT FK_singers_bandid
FOREIGN KEY (bandid)
REFERENCES Bands (BandID);

CREATE TABLE Venue
(
venueID int NOT NULL PRIMARY KEY,
venueName varchar(50) NOT NULL,
locationid int NOT NULL
)

ALTER TABLE Venue
ADD CONSTRAINT FK_venue_locationid
FOREIGN KEY (locationid)
REFERENCES Locations (LocationID);