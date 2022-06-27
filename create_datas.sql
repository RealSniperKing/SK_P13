BEGIN TRANSACTION;
INSERT INTO auth_user VALUES(1,'pbkdf2_sha256$320000$dky0CMjlTTCDrkfTNquObG$JJSwBVo2Z/7k5mfkAEmZw2xIIWDWDoJ/5EBZ0EXD+CU=','2022-05-05 10:02:12.554321',TRUE,'admin','', '','admin@email.com',TRUE,TRUE,'2020-06-14 09:41:15.326411');
INSERT INTO auth_user VALUES(2,'pbkdf2_sha256$180000$8ZKjEEdeYubZ$jq4T/Vaa2DWdAvzNys4ynNO6Wd/PsWe3dux20F7BGgQ=',NULL,FALSE,'4meRomance','John','Rodriguez','coemperor@famemma.net',FALSE,TRUE,'2020-06-14 09:44:05');
INSERT INTO auth_user VALUES(3,'pbkdf2_sha256$180000$DdNkE39rolFF$nGmWZanXv4GlcTxtfUgc+MUIqBgDszAtvFfuFu538LQ=',NULL,FALSE,'AirWow','Ada','Paul','flocation.vam4@glendenningflowerdesign.com',FALSE,TRUE,'2020-06-14 09:44:45');
INSERT INTO auth_user VALUES(4,'pbkdf2_sha256$180000$3VJdHtu39cbD$8qNVkvJ0KddsvfFueEm09Sg0LxgFievigmtAEb39paE=',NULL,FALSE,'DavWin','Cassandra','Grahm','5houssam.kessaiso@facpidif.ml',FALSE,TRUE,'2020-06-14 09:46:28');
INSERT INTO auth_user VALUES(5,'pbkdf2_sha256$180000$zjnQu4LiqMAT$Qxom08ahzw11iPlX6kYyySa94yJXdjrptta6Qzx8HWE=',NULL,FALSE,'HeadlinesGazer','Jamie','Lal','jssssss33@acee9.live',FALSE,TRUE,'2020-06-14 09:47:21');
INSERT INTO lettings_address VALUES(1,7217,'Bedford Street','Brunswick','GA',31525,'USA');
INSERT INTO lettings_address VALUES(2,4,'Military Street','Willoughby','OH',44094,'USA');
INSERT INTO lettings_address VALUES(3,340,'Wintergreen Avenue','Newport News','VA',23601,'USA');
INSERT INTO lettings_address VALUES(4,9230,'E. Joy Ridge Street','Marquette','MI',49855,'USA');
INSERT INTO lettings_address VALUES(5,9606,'Harvard Street','Aliquippa','PA',15001,'USA');
INSERT INTO lettings_address VALUES(6,588,'Argyle Avenue','East Meadow','NY',11554,'USA');
INSERT INTO lettings_letting VALUES(1,'Joshua Tree Green Haus /w Hot Tub',1);
INSERT INTO lettings_letting VALUES(2,'Oceanview Retreat',2);
INSERT INTO lettings_letting VALUES(3,'''Silo Studio'' Cottage',3);
INSERT INTO lettings_letting VALUES(4,'Pirates of the Caribbean Getaway',4);
INSERT INTO lettings_letting VALUES(5,'The Mushroom Dome Retreat & LAND of Paradise Suite',5);
INSERT INTO lettings_letting VALUES(6,'Underground Hygge',6);
INSERT INTO profiles_profile VALUES(1,'Buenos Aires',5);
INSERT INTO profiles_profile VALUES(2,'Barcelona',4);
INSERT INTO profiles_profile VALUES(3,'Budapest',3);
INSERT INTO profiles_profile VALUES(4,'Berlin',2);
COMMIT;


