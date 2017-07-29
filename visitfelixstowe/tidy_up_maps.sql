SELECT `Lat`,`Long`FROM `page` where `Long` != 1.350;
UPDATE `page` SET `Latitudes` = `Lat`, `Longitudes` = `Long`, `MapinSideBar` = 1 WHERE `Long` != 1.350;
UPDATE `page_live` SET `Latitudes` = `Lat`, `Longitudes` = `Long`, `MapinSideBar` = 1 WHERE `Long` != 1.350;
