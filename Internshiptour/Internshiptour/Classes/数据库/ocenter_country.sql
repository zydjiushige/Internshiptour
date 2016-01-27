/*
Navicat MySQL Data Transfer

Source Server         : 230
Source Server Version : 50627
Source Host           : 192.168.0.230:3306
Source Database       : ytst

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2016-01-21 17:47:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ocenter_country
-- ----------------------------
DROP TABLE IF EXISTS `ocenter_country`;
CREATE TABLE `ocenter_country` (
  `Code` varchar(3) NOT NULL DEFAULT '',
  `Name` varchar(52) NOT NULL DEFAULT '',
  `Continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL DEFAULT 'Asia',
  `Region` varchar(26) NOT NULL DEFAULT '',
  `SurfaceArea` float(10,2) NOT NULL DEFAULT '0.00',
  `IndepYear` smallint(6) DEFAULT NULL,
  `Population` int(11) NOT NULL DEFAULT '0',
  `LifeExpectancy` float(3,1) DEFAULT NULL,
  `GNP` float(10,2) DEFAULT NULL,
  `GNPOld` float(10,2) DEFAULT NULL,
  `LocalName` varchar(45) NOT NULL DEFAULT '',
  `GovernmentForm` varchar(45) NOT NULL DEFAULT '',
  `HeadOfState` varchar(60) DEFAULT NULL,
  `Capital` int(11) DEFAULT NULL,
  `Code2` varchar(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ocenter_country
-- ----------------------------
INSERT INTO `ocenter_country` VALUES ('ABW', 'Aruba', 'North America', 'Caribbean', '193.00', null, '103000', '78.4', '828.00', '793.00', 'Aruba', 'Nonmetropolitan Territory of The Netherlands', 'Beatrix', '129', 'AW');
INSERT INTO `ocenter_country` VALUES ('AFG', 'Afghanistan', 'Asia', 'Southern and Central Asia', '652090.00', '1919', '22720000', '45.9', '5976.00', null, 'Afganistan/Afqanestan', 'Islamic Emirate', 'Mohammad Omar', '1', 'AF');
INSERT INTO `ocenter_country` VALUES ('AGO', 'Angola', 'Africa', 'Central Africa', '1246700.00', '1975', '12878000', '38.3', '6648.00', '7984.00', 'Angola', 'Republic', 'José Eduardo dos Santos', '56', 'AO');
INSERT INTO `ocenter_country` VALUES ('AIA', 'Anguilla', 'North America', 'Caribbean', '96.00', null, '8000', '76.1', '63.20', null, 'Anguilla', 'Dependent Territory of the UK', 'Elisabeth II', '62', 'AI');
INSERT INTO `ocenter_country` VALUES ('ALB', 'Albania', 'Europe', 'Southern Europe', '28748.00', '1912', '3401200', '71.6', '3205.00', '2500.00', 'Shqipëria', 'Republic', 'Rexhep Mejdani', '34', 'AL');
INSERT INTO `ocenter_country` VALUES ('AND', 'Andorra', 'Europe', 'Southern Europe', '468.00', '1278', '78000', '83.5', '1630.00', null, 'Andorra', 'Parliamentary Coprincipality', '', '55', 'AD');
INSERT INTO `ocenter_country` VALUES ('ANT', 'Netherlands Antilles', 'North America', 'Caribbean', '800.00', null, '217000', '74.7', '1941.00', null, 'Nederlandse Antillen', 'Nonmetropolitan Territory of The Netherlands', 'Beatrix', '33', 'AN');
INSERT INTO `ocenter_country` VALUES ('ARE', 'United Arab Emirates', 'Asia', 'Middle East', '83600.00', '1971', '2441000', '74.1', '37966.00', '36846.00', 'Al-Imarat al-´Arabiya al-Muttahida', 'Emirate Federation', 'Zayid bin Sultan al-Nahayan', '65', 'AE');
INSERT INTO `ocenter_country` VALUES ('ARG', 'Argentina', 'South America', 'South America', '2780400.00', '1816', '37032000', '75.1', '340238.00', '323310.00', 'Argentina', 'Federal Republic', 'Fernando de la Rúa', '69', 'AR');
INSERT INTO `ocenter_country` VALUES ('ARM', 'Armenia', 'Asia', 'Middle East', '29800.00', '1991', '3520000', '66.4', '1813.00', '1627.00', 'Hajastan', 'Republic', 'Robert KotSCIarjan', '126', 'AM');
INSERT INTO `ocenter_country` VALUES ('ASM', 'American Samoa', 'Oceania', 'Polynesia', '199.00', null, '68000', '75.1', '334.00', null, 'Amerika Samoa', 'US Territory', 'George W. Bush', '54', 'AS');
INSERT INTO `ocenter_country` VALUES ('ATA', 'Antarctica', 'Antarctica', 'Antarctica', '13120000.00', null, '0', null, '0.00', null, 'Antarctica', 'Co-administrated', '', null, 'AQ');
INSERT INTO `ocenter_country` VALUES ('ATF', 'French Southern territories', 'Antarctica', 'Antarctica', '7780.00', null, '0', null, '0.00', null, 'Terres australes françaises', 'Nonmetropolitan Territory of France', 'Jacques Chirac', null, 'TF');
INSERT INTO `ocenter_country` VALUES ('ATG', 'Antigua and Barbuda', 'North America', 'Caribbean', '442.00', '1981', '68000', '70.5', '612.00', '584.00', 'Antigua and Barbuda', 'Constitutional Monarchy', 'Elisabeth II', '63', 'AG');
INSERT INTO `ocenter_country` VALUES ('AUS', 'Australia', 'Oceania', 'Australia and New Zealand', '7741220.00', '1901', '18886000', '79.8', '351182.00', '392911.00', 'Australia', 'Constitutional Monarchy, Federation', 'Elisabeth II', '135', 'AU');
INSERT INTO `ocenter_country` VALUES ('AUT', 'Austria', 'Europe', 'Western Europe', '83859.00', '1918', '8091800', '77.7', '211860.00', '206025.00', 'Österreich', 'Federal Republic', 'Thomas Klestil', '1523', 'AT');
INSERT INTO `ocenter_country` VALUES ('AZE', 'Azerbaijan', 'Asia', 'Middle East', '86600.00', '1991', '7734000', '62.9', '4127.00', '4100.00', 'Azärbaycan', 'Federal Republic', 'Heydär Äliyev', '144', 'AZ');
INSERT INTO `ocenter_country` VALUES ('BDI', 'Burundi', 'Africa', 'Eastern Africa', '27834.00', '1962', '6695000', '46.2', '903.00', '982.00', 'Burundi/Uburundi', 'Republic', 'Pierre Buyoya', '552', 'BI');
INSERT INTO `ocenter_country` VALUES ('BEL', 'Belgium', 'Europe', 'Western Europe', '30518.00', '1830', '10239000', '77.8', '249704.00', '243948.00', 'België/Belgique', 'Constitutional Monarchy, Federation', 'Albert II', '179', 'BE');
INSERT INTO `ocenter_country` VALUES ('BEN', 'Benin', 'Africa', 'Western Africa', '112622.00', '1960', '6097000', '50.2', '2357.00', '2141.00', 'Bénin', 'Republic', 'Mathieu Kérékou', '187', 'BJ');
INSERT INTO `ocenter_country` VALUES ('BFA', 'Burkina Faso', 'Africa', 'Western Africa', '274000.00', '1960', '11937000', '46.7', '2425.00', '2201.00', 'Burkina Faso', 'Republic', 'Blaise Compaoré', '549', 'BF');
INSERT INTO `ocenter_country` VALUES ('BGD', 'Bangladesh', 'Asia', 'Southern and Central Asia', '143998.00', '1971', '129155000', '60.2', '32852.00', '31966.00', 'Bangladesh', 'Republic', 'Shahabuddin Ahmad', '150', 'BD');
INSERT INTO `ocenter_country` VALUES ('BGR', 'Bulgaria', 'Europe', 'Eastern Europe', '110994.00', '1908', '8190900', '70.9', '12178.00', '10169.00', 'Balgarija', 'Republic', 'Petar Stojanov', '539', 'BG');
INSERT INTO `ocenter_country` VALUES ('BHR', 'Bahrain', 'Asia', 'Middle East', '694.00', '1971', '617000', '73.0', '6366.00', '6097.00', 'Al-Bahrayn', 'Monarchy (Emirate)', 'Hamad ibn Isa al-Khalifa', '149', 'BH');
INSERT INTO `ocenter_country` VALUES ('BHS', 'Bahamas', 'North America', 'Caribbean', '13878.00', '1973', '307000', '71.1', '3527.00', '3347.00', 'The Bahamas', 'Constitutional Monarchy', 'Elisabeth II', '148', 'BS');
INSERT INTO `ocenter_country` VALUES ('BIH', 'Bosnia and Herzegovina', 'Europe', 'Southern Europe', '51197.00', '1992', '3972000', '71.5', '2841.00', null, 'Bosna i Hercegovina', 'Federal Republic', 'Ante Jelavic', '201', 'BA');
INSERT INTO `ocenter_country` VALUES ('BLR', 'Belarus', 'Europe', 'Eastern Europe', '207600.00', '1991', '10236000', '68.0', '13714.00', null, 'Belarus', 'Republic', 'Aljaksandr LukaSCIenka', '3520', 'BY');
INSERT INTO `ocenter_country` VALUES ('BLZ', 'Belize', 'North America', 'Central America', '22696.00', '1981', '241000', '70.9', '630.00', '616.00', 'Belize', 'Constitutional Monarchy', 'Elisabeth II', '185', 'BZ');
INSERT INTO `ocenter_country` VALUES ('BMU', 'Bermuda', 'North America', 'North America', '53.00', null, '65000', '76.9', '2328.00', '2190.00', 'Bermuda', 'Dependent Territory of the UK', 'Elisabeth II', '191', 'BM');
INSERT INTO `ocenter_country` VALUES ('BOL', 'Bolivia', 'South America', 'South America', '1098581.00', '1825', '8329000', '63.7', '8571.00', '7967.00', 'Bolivia', 'Republic', 'Hugo Bánzer Suárez', '194', 'BO');
INSERT INTO `ocenter_country` VALUES ('BRA', 'Brazil', 'South America', 'South America', '8547403.00', '1822', '170115000', '62.9', '776739.00', '804108.00', 'Brasil', 'Federal Republic', 'Fernando Henrique Cardoso', '211', 'BR');
INSERT INTO `ocenter_country` VALUES ('BRB', 'Barbados', 'North America', 'Caribbean', '430.00', '1966', '270000', '73.0', '2223.00', '2186.00', 'Barbados', 'Constitutional Monarchy', 'Elisabeth II', '174', 'BB');
INSERT INTO `ocenter_country` VALUES ('BRN', 'Brunei', 'Asia', 'Southeast Asia', '5765.00', '1984', '328000', '73.6', '11705.00', '12460.00', 'Brunei Darussalam', 'Monarchy (Sultanate)', 'Haji Hassan al-Bolkiah', '538', 'BN');
INSERT INTO `ocenter_country` VALUES ('BTN', 'Bhutan', 'Asia', 'Southern and Central Asia', '47000.00', '1910', '2124000', '52.4', '372.00', '383.00', 'Druk-Yul', 'Monarchy', 'Jigme Singye Wangchuk', '192', 'BT');
INSERT INTO `ocenter_country` VALUES ('BVT', 'Bouvet Island', 'Antarctica', 'Antarctica', '59.00', null, '0', null, '0.00', null, 'Bouvetøya', 'Dependent Territory of Norway', 'Harald V', null, 'BV');
INSERT INTO `ocenter_country` VALUES ('BWA', 'Botswana', 'Africa', 'Southern Africa', '581730.00', '1966', '1622000', '39.3', '4834.00', '4935.00', 'Botswana', 'Republic', 'Festus G. Mogae', '204', 'BW');
INSERT INTO `ocenter_country` VALUES ('CAF', 'Central African Republic', 'Africa', 'Central Africa', '622984.00', '1960', '3615000', '44.0', '1054.00', '993.00', 'Centrafrique/Bê-Afrîka', 'Republic', 'Ange-Félix Patassé', '1889', 'CF');
INSERT INTO `ocenter_country` VALUES ('CAN', 'Canada', 'North America', 'North America', '9970610.00', '1867', '31147000', '79.4', '598862.00', '625626.00', 'Canada', 'Constitutional Monarchy, Federation', 'Elisabeth II', '1822', 'CA');
INSERT INTO `ocenter_country` VALUES ('CCK', 'Cocos (Keeling) Islands', 'Oceania', 'Australia and New Zealand', '14.00', null, '600', null, '0.00', null, 'Cocos (Keeling) Islands', 'Territory of Australia', 'Elisabeth II', '2317', 'CC');
INSERT INTO `ocenter_country` VALUES ('CHE', 'Switzerland', 'Europe', 'Western Europe', '41284.00', '1499', '7160400', '79.6', '264478.00', '256092.00', 'Schweiz/Suisse/Svizzera/Svizra', 'Federation', 'Adolf Ogi', '3248', 'CH');
INSERT INTO `ocenter_country` VALUES ('CHL', 'Chile', 'South America', 'South America', '756626.00', '1810', '15211000', '75.7', '72949.00', '75780.00', 'Chile', 'Republic', 'Ricardo Lagos Escobar', '554', 'CL');
INSERT INTO `ocenter_country` VALUES ('CHN', 'China', 'Asia', 'Eastern Asia', '9572900.00', '-1523', '1277558000', '71.4', '982268.00', '917719.00', 'ZhongGuo', 'People\'s Republic', 'Jiang Zemin', '1891', 'CN');
INSERT INTO `ocenter_country` VALUES ('CIV', ' Cote d\'Ivoire', 'Africa', 'Western Africa', '322463.00', '1960', '14786000', '45.2', '11345.00', '10285.00', 'People\'s Republic', 'Republic', 'Laurent Gbagbo', '2814', 'CI');
INSERT INTO `ocenter_country` VALUES ('CMR', 'Cameroon', 'Africa', 'Central Africa', '475442.00', '1960', '15085000', '54.8', '9174.00', '8596.00', 'Cameroun/Cameroon', 'Republic', 'Paul Biya', '1804', 'CM');
INSERT INTO `ocenter_country` VALUES ('COD', 'Congo, The Democratic Republic of the', 'Africa', 'Central Africa', '2344858.00', '1960', '51654000', '48.8', '6964.00', '2474.00', 'République Démocratique du Congo', 'Republic', 'Joseph Kabila', '2298', 'CD');
INSERT INTO `ocenter_country` VALUES ('COG', 'Congo', 'Africa', 'Central Africa', '342000.00', '1960', '2943000', '47.4', '2108.00', '2287.00', 'Congo', 'Republic', 'Denis Sassou-Nguesso', '2296', 'CG');
INSERT INTO `ocenter_country` VALUES ('COK', 'Cook Islands', 'Oceania', 'Polynesia', '236.00', null, '20000', '71.1', '100.00', null, 'The Cook Islands', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', '583', 'CK');
INSERT INTO `ocenter_country` VALUES ('COL', 'Colombia', 'South America', 'South America', '1138914.00', '1810', '42321000', '70.3', '102896.00', '105116.00', 'Colombia', 'Republic', 'Andrés Pastrana Arango', '2257', 'CO');
INSERT INTO `ocenter_country` VALUES ('COM', 'Comoros', 'Africa', 'Eastern Africa', '1862.00', '1975', '578000', '60.0', '4401.00', '4361.00', 'Komori/Comores', 'Republic', 'Azali Assoumani', '2295', 'KM');
INSERT INTO `ocenter_country` VALUES ('CPV', 'Cape Verde', 'Africa', 'Western Africa', '4033.00', '1975', '428000', '68.9', '435.00', '420.00', 'Cabo Verde', 'Republic', 'António Mascarenhas Monteiro', '1859', 'CV');
INSERT INTO `ocenter_country` VALUES ('CRI', 'Costa Rica', 'North America', 'Central America', '51100.00', '1821', '4023000', '75.8', '10226.00', '9757.00', 'Costa Rica', 'Republic', 'Miguel Ángel Rodríguez Echeverría', '584', 'CR');
INSERT INTO `ocenter_country` VALUES ('CUB', 'Cuba', 'North America', 'Caribbean', '110861.00', '1902', '11201000', '76.2', '17843.00', '18862.00', 'Cuba', 'Socialistic Republic', 'Fidel Castro Ruz', '2413', 'CU');
INSERT INTO `ocenter_country` VALUES ('CXR', 'Christmas Island', 'Oceania', 'Australia and New Zealand', '135.00', null, '2500', null, '0.00', null, 'Christmas Island', 'Territory of Australia', 'Elisabeth II', '1791', 'CX');
INSERT INTO `ocenter_country` VALUES ('CYM', 'Cayman Islands', 'North America', 'Caribbean', '264.00', null, '38000', '78.9', '1263.00', '1186.00', 'Cayman Islands', 'Dependent Territory of the UK', 'Elisabeth II', '553', 'KY');
INSERT INTO `ocenter_country` VALUES ('CYP', 'Cyprus', 'Asia', 'Middle East', '9251.00', '1960', '754700', '76.7', '9333.00', '8246.00', 'Kýpros/Kibris', 'Republic', 'Glafkos Klerides', '2430', 'CY');
INSERT INTO `ocenter_country` VALUES ('CZE', 'Czech Republic', 'Europe', 'Eastern Europe', '78866.00', '1993', '10278100', '74.5', '55017.00', '52037.00', '¸esko', 'Republic', 'Václav Havel', '3339', 'CZ');
INSERT INTO `ocenter_country` VALUES ('DEU', 'Germany', 'Europe', 'Western Europe', '357022.00', '1955', '82164700', '77.4', '2133367.00', '2102826.00', 'Deutschland', 'Federal Republic', 'Johannes Rau', '3068', 'DE');
INSERT INTO `ocenter_country` VALUES ('DJI', 'Djibouti', 'Africa', 'Eastern Africa', '23200.00', '1977', '638000', '50.8', '382.00', '373.00', 'Djibouti/Jibuti', 'Republic', 'Ismail Omar Guelleh', '585', 'DJ');
INSERT INTO `ocenter_country` VALUES ('DMA', 'Dominica', 'North America', 'Caribbean', '751.00', '1978', '71000', '73.4', '256.00', '243.00', 'Dominica', 'Republic', 'Vernon Shaw', '586', 'DM');
INSERT INTO `ocenter_country` VALUES ('DNK', 'Denmark', 'Europe', 'Nordic Countries', '43094.00', '800', '5330000', '76.5', '174099.00', '169264.00', 'Danmark', 'Constitutional Monarchy', 'Margrethe II', '3315', 'DK');
INSERT INTO `ocenter_country` VALUES ('DOM', 'Dominican Republic', 'North America', 'Caribbean', '48511.00', '1844', '8495000', '73.2', '15846.00', '15076.00', 'República Dominicana', 'Republic', 'Hipólito Mejía Domínguez', '587', 'DO');
INSERT INTO `ocenter_country` VALUES ('DZA', 'Algeria', 'Africa', 'Northern Africa', '2381741.00', '1962', '31471000', '69.7', '49982.00', '46966.00', 'Democratic People\'s Republic of Algeria', 'Republic', 'Abdelaziz Bouteflika', '35', 'DZ');
INSERT INTO `ocenter_country` VALUES ('ECU', 'Ecuador', 'South America', 'South America', '283561.00', '1822', '12646000', '71.1', '19770.00', '19769.00', 'Ecuador', 'Republic', 'Gustavo Noboa Bejarano', '594', 'EC');
INSERT INTO `ocenter_country` VALUES ('EGY', 'Egypt', 'Africa', 'Northern Africa', '1001449.00', '1922', '68470000', '63.3', '82710.00', '75617.00', 'Misr', 'Republic', 'Hosni Mubarak', '608', 'EG');
INSERT INTO `ocenter_country` VALUES ('ERI', 'Eritrea', 'Africa', 'Eastern Africa', '117600.00', '1993', '3850000', '55.8', '650.00', '755.00', 'Ertra', 'Republic', 'Isayas Afewerki [Isaias Afwerki]', '652', 'ER');
INSERT INTO `ocenter_country` VALUES ('ESH', 'Western Sahara', 'Africa', 'Northern Africa', '266000.00', null, '293000', '49.8', '60.00', null, 'As-Sahrawiya', 'Occupied by Marocco', 'Mohammed Abdel Aziz', '2453', 'EH');
INSERT INTO `ocenter_country` VALUES ('ESP', 'Spain', 'Europe', 'Southern Europe', '505992.00', '1492', '39441700', '78.8', '553233.00', '532031.00', 'España', 'Constitutional Monarchy', 'Juan Carlos I', '653', 'ES');
INSERT INTO `ocenter_country` VALUES ('EST', 'Estonia', 'Europe', 'Baltic Countries', '45227.00', '1991', '1439200', '69.5', '5328.00', '3371.00', 'Eesti', 'Republic', 'Lennart Meri', '3791', 'EE');
INSERT INTO `ocenter_country` VALUES ('ETH', 'Ethiopia', 'Africa', 'Eastern Africa', '1104300.00', '-1000', '62565000', '45.2', '6353.00', '6180.00', 'YeItyop´iya', 'Republic', 'Negasso Gidada', '756', 'ET');
INSERT INTO `ocenter_country` VALUES ('FIN', 'Finland', 'Europe', 'Nordic Countries', '338145.00', '1917', '5171300', '77.4', '121914.00', '119833.00', 'Suomi', 'Republic', 'Tarja Halonen', '3236', 'FI');
INSERT INTO `ocenter_country` VALUES ('FJI', 'Fiji Islands', 'Oceania', 'Melanesia', '18274.00', '1970', '817000', '67.9', '1536.00', '2149.00', 'Fiji Islands', 'Republic', 'Josefa Iloilo', '764', 'FJ');
INSERT INTO `ocenter_country` VALUES ('FLK', 'Falkland Islands', 'South America', 'South America', '12173.00', null, '2000', null, '0.00', null, 'Falkland Islands', 'Dependent Territory of the UK', 'Elisabeth II', '763', 'FK');
INSERT INTO `ocenter_country` VALUES ('FRA', 'France', 'Europe', 'Western Europe', '551500.00', '843', '59225700', '78.8', '1424285.00', '1392448.00', 'France', 'Republic', 'Jacques Chirac', '2974', 'FR');
INSERT INTO `ocenter_country` VALUES ('FRO', 'Faroe Islands', 'Europe', 'Nordic Countries', '1399.00', null, '43000', '78.4', '0.00', null, 'Føroyar', 'Part of Denmark', 'Margrethe II', '901', 'FO');
INSERT INTO `ocenter_country` VALUES ('FSM', 'Micronesia, Federated States of', 'Oceania', 'Micronesia', '702.00', '1990', '119000', '68.6', '212.00', null, 'Micronesia', 'Federal Republic', 'Leo A. Falcam', '2689', 'FM');
INSERT INTO `ocenter_country` VALUES ('GAB', 'Gabon', 'Africa', 'Central Africa', '267668.00', '1960', '1226000', '50.1', '5493.00', '5279.00', 'Le Gabon', 'Republic', 'Omar Bongo', '902', 'GA');
INSERT INTO `ocenter_country` VALUES ('GBR', 'United Kingdom', 'Europe', 'British Islands', '242900.00', '1066', '59623400', '77.7', '1378330.00', '1296830.00', 'United Kingdom', 'Constitutional Monarchy', 'Elisabeth II', '456', 'GB');
INSERT INTO `ocenter_country` VALUES ('GEO', 'Georgia', 'Asia', 'Middle East', '69700.00', '1991', '4968000', '64.5', '6064.00', '5924.00', 'Sakartvelo', 'Republic', 'Eduard evardnadze', '905', 'GE');
INSERT INTO `ocenter_country` VALUES ('GHA', 'Ghana', 'Africa', 'Western Africa', '238533.00', '1957', '20212000', '57.4', '7137.00', '6884.00', 'Ghana', 'Republic', 'John Kufuor', '910', 'GH');
INSERT INTO `ocenter_country` VALUES ('GIB', 'Gibraltar', 'Europe', 'Southern Europe', '6.00', null, '25000', '79.0', '258.00', null, 'Gibraltar', 'Dependent Territory of the UK', 'Elisabeth II', '915', 'GI');
INSERT INTO `ocenter_country` VALUES ('GIN', 'Guinea', 'Africa', 'Western Africa', '245857.00', '1958', '7430000', '45.6', '2352.00', '2383.00', 'Guinée', 'Republic', 'Lansana Conté', '926', 'GN');
INSERT INTO `ocenter_country` VALUES ('GLP', 'Guadeloupe', 'North America', 'Caribbean', '1705.00', null, '456000', '77.0', '3501.00', null, 'Guadeloupe', 'Overseas Department of France', 'Jacques Chirac', '919', 'GP');
INSERT INTO `ocenter_country` VALUES ('GMB', 'Gambia', 'Africa', 'Western Africa', '11295.00', '1965', '1305000', '53.2', '320.00', '325.00', 'The Gambia', 'Republic', 'Yahya Jammeh', '904', 'GM');
INSERT INTO `ocenter_country` VALUES ('GNB', 'Guinea-Bissau', 'Africa', 'Western Africa', '36125.00', '1974', '1213000', '49.0', '293.00', '272.00', 'Guiné-Bissau', 'Republic', 'Kumba Ialá', '927', 'GW');
INSERT INTO `ocenter_country` VALUES ('GNQ', 'Equatorial Guinea', 'Africa', 'Central Africa', '28051.00', '1968', '453000', '53.6', '283.00', '542.00', 'Guinea Ecuatorial', 'Republic', 'Teodoro Obiang Nguema Mbasogo', '2972', 'GQ');
INSERT INTO `ocenter_country` VALUES ('GRC', 'Greece', 'Europe', 'Southern Europe', '131626.00', '1830', '10545700', '78.4', '120724.00', '119946.00', 'Elláda', 'Republic', 'Kostis Stefanopoulos', '2401', 'GR');
INSERT INTO `ocenter_country` VALUES ('GRD', 'Grenada', 'North America', 'Caribbean', '344.00', '1974', '94000', '64.5', '318.00', null, 'Grenada', 'Constitutional Monarchy', 'Elisabeth II', '916', 'GD');
INSERT INTO `ocenter_country` VALUES ('GRL', 'Greenland', 'North America', 'North America', '2166090.00', null, '56000', '68.1', '0.00', null, 'Kalaallit Nunaat/Grønland', 'Part of Denmark', 'Margrethe II', '917', 'GL');
INSERT INTO `ocenter_country` VALUES ('GTM', 'Guatemala', 'North America', 'Central America', '108889.00', '1821', '11385000', '66.2', '19008.00', '17797.00', 'Guatemala', 'Republic', 'Alfonso Portillo Cabrera', '922', 'GT');
INSERT INTO `ocenter_country` VALUES ('GUF', 'French Guiana', 'South America', 'South America', '90000.00', null, '181000', '76.1', '681.00', null, 'Guyane française', 'Overseas Department of France', 'Jacques Chirac', '3014', 'GF');
INSERT INTO `ocenter_country` VALUES ('GUM', 'Guam', 'Oceania', 'Micronesia', '549.00', null, '168000', '77.8', '1197.00', '1136.00', 'Guam', 'US Territory', 'George W. Bush', '921', 'GU');
INSERT INTO `ocenter_country` VALUES ('GUY', 'Guyana', 'South America', 'South America', '214969.00', '1966', '861000', '64.0', '722.00', '743.00', 'Guyana', 'Republic', 'Bharrat Jagdeo', '928', 'GY');
INSERT INTO `ocenter_country` VALUES ('HKG', 'Hong Kong', 'Asia', 'Eastern Asia', '1075.00', null, '6782000', '79.5', '166448.00', '173610.00', 'Xianggang/Hong Kong', 'Special Administrative Region of China', 'Jiang Zemin', '937', 'HK');
INSERT INTO `ocenter_country` VALUES ('HMD', 'Heard Island and McDonald Islands', 'Antarctica', 'Antarctica', '359.00', null, '0', null, '0.00', null, 'Heard and McDonald Islands', 'Territory of Australia', 'Elisabeth II', null, 'HM');
INSERT INTO `ocenter_country` VALUES ('HND', 'Honduras', 'North America', 'Central America', '112088.00', '1838', '6485000', '69.9', '5333.00', '4697.00', 'Honduras', 'Republic', 'Carlos Roberto Flores Facussé', '933', 'HN');
INSERT INTO `ocenter_country` VALUES ('HRV', 'Croatia', 'Europe', 'Southern Europe', '56538.00', '1991', '4473000', '73.7', '20208.00', '19300.00', 'Hrvatska', 'Republic', 'tipe Mesic', '2409', 'HR');
INSERT INTO `ocenter_country` VALUES ('HTI', 'Haiti', 'North America', 'Caribbean', '27750.00', '1804', '8222000', '49.2', '3459.00', '3107.00', 'Haïti/Dayti', 'Republic', 'Jean-Bertrand Aristide', '929', 'HT');
INSERT INTO `ocenter_country` VALUES ('HUN', 'Hungary', 'Europe', 'Eastern Europe', '93030.00', '1918', '10043200', '71.4', '48267.00', '45914.00', 'Magyarország', 'Republic', 'Ferenc Mádl', '3483', 'HU');
INSERT INTO `ocenter_country` VALUES ('IDN', 'Indonesia', 'Asia', 'Southeast Asia', '1904569.00', '1945', '212107000', '68.0', '84982.00', '215002.00', 'Indonesia', 'Republic', 'Abdurrahman Wahid', '939', 'ID');
INSERT INTO `ocenter_country` VALUES ('IND', 'India', 'Asia', 'Southern and Central Asia', '3287263.00', '1947', '1013662000', '62.5', '447114.00', '430572.00', 'Bharat/India', 'Federal Republic', 'Kocheril Raman Narayanan', '1109', 'IN');
INSERT INTO `ocenter_country` VALUES ('IOT', 'British Indian Ocean Territory', 'Africa', 'Eastern Africa', '78.00', null, '0', null, '0.00', null, 'British Indian Ocean Territory', 'Dependent Territory of the UK', 'Elisabeth II', null, 'IO');
INSERT INTO `ocenter_country` VALUES ('IRL', 'Ireland', 'Europe', 'British Islands', '70273.00', '1921', '3775100', '76.8', '75921.00', '73132.00', 'Ireland/Éire', 'Republic', 'Mary McAleese', '1447', 'IE');
INSERT INTO `ocenter_country` VALUES ('IRN', 'Iran', 'Asia', 'Southern and Central Asia', '1648195.00', '1906', '67702000', '69.7', '195746.00', '160151.00', 'Iran', 'Islamic Republic', 'Ali Mohammad Khatami-Ardakani', '1380', 'IR');
INSERT INTO `ocenter_country` VALUES ('IRQ', 'Iraq', 'Asia', 'Middle East', '438317.00', '1932', '23115000', '66.5', '11500.00', null, 'Al-´Iraq', 'Republic', 'Saddam Hussein al-Takriti', '1365', 'IQ');
INSERT INTO `ocenter_country` VALUES ('ISL', 'Iceland', 'Europe', 'Nordic Countries', '103000.00', '1944', '279000', '79.4', '8255.00', '7474.00', 'Ísland', 'Republic', 'Ólafur Ragnar Grímsson', '1449', 'IS');
INSERT INTO `ocenter_country` VALUES ('ISR', 'Israel', 'Asia', 'Middle East', '21056.00', '1948', '6217000', '78.6', '97477.00', '98577.00', 'State of Israel', 'Republic', 'Moshe Katzav', '1450', 'IL');
INSERT INTO `ocenter_country` VALUES ('ITA', 'Italy', 'Europe', 'Southern Europe', '301316.00', '1861', '57680000', '79.0', '1161755.00', '1145372.00', 'Italia', 'Republic', 'Carlo Azeglio Ciampi', '1464', 'IT');
INSERT INTO `ocenter_country` VALUES ('JAM', 'Jamaica', 'North America', 'Caribbean', '10990.00', '1962', '2583000', '75.2', '6871.00', '6722.00', 'Jamaica', 'Constitutional Monarchy', 'Elisabeth II', '1530', 'JM');
INSERT INTO `ocenter_country` VALUES ('JOR', 'Jordan', 'Asia', 'Middle East', '88946.00', '1946', '5083000', '77.4', '7526.00', '7051.00', 'Al-Urdunn', 'Constitutional Monarchy', 'Abdullah II', '1786', 'JO');
INSERT INTO `ocenter_country` VALUES ('JPN', 'Japan', 'Asia', 'Eastern Asia', '377829.00', '-660', '126714000', '80.7', '3787042.00', '4192638.00', 'Nihon/Nippon', 'Constitutional Monarchy', 'Akihito', '1532', 'JP');
INSERT INTO `ocenter_country` VALUES ('KAZ', 'Kazakstan', 'Asia', 'Southern and Central Asia', '2724900.00', '1991', '16223000', '63.2', '24375.00', '23383.00', 'Qazaqstan', 'Republic', 'Nursultan Nazarbajev', '1864', 'KZ');
INSERT INTO `ocenter_country` VALUES ('KEN', 'Kenya', 'Africa', 'Eastern Africa', '580367.00', '1963', '30080000', '48.0', '9217.00', '10241.00', 'Kenya', 'Republic', 'Daniel arap Moi', '1881', 'KE');
INSERT INTO `ocenter_country` VALUES ('KGZ', 'Kyrgyzstan', 'Asia', 'Southern and Central Asia', '199900.00', '1991', '4699000', '63.4', '1626.00', '1767.00', 'Kyrgyzstan', 'Republic', 'Askar Akajev', '2253', 'KG');
INSERT INTO `ocenter_country` VALUES ('KHM', 'Cambodia', 'Asia', 'Southeast Asia', '181035.00', '1953', '11168000', '56.5', '5121.00', '5670.00', 'Kâmpuchéa', 'Constitutional Monarchy', 'Norodom Sihanouk', '1800', 'KH');
INSERT INTO `ocenter_country` VALUES ('KIR', 'Kiribati', 'Oceania', 'Micronesia', '726.00', '1979', '83000', '59.8', '40.70', null, 'Kiribati', 'Republic', 'Teburoro Tito', '2256', 'KI');
INSERT INTO `ocenter_country` VALUES ('KNA', 'Saint Kitts and Nevis', 'North America', 'Caribbean', '261.00', '1983', '38000', '70.7', '299.00', null, 'Saint Kitts and Nevis', 'Constitutional Monarchy', 'Elisabeth II', '3064', 'KN');
INSERT INTO `ocenter_country` VALUES ('KOR', 'South Korea', 'Asia', 'Eastern Asia', '99434.00', '1948', '46844000', '74.4', '320749.00', '442544.00', 'Republic of Korea', 'Republic', 'Kim Dae-jung', '2331', 'KR');
INSERT INTO `ocenter_country` VALUES ('KWT', 'Kuwait', 'Asia', 'Middle East', '17818.00', '1961', '1972000', '76.1', '27037.00', '30373.00', 'Al-Kuwayt', 'Constitutional Monarchy (Emirate)', 'Jabir al-Ahmad al-Jabir al-Sabah', '2429', 'KW');
INSERT INTO `ocenter_country` VALUES ('LAO', 'Laos', 'Asia', 'Southeast Asia', '236800.00', '1953', '5433000', '53.1', '1292.00', '1746.00', 'Lao', 'Republic', 'Khamtay Siphandone', '2432', 'LA');
INSERT INTO `ocenter_country` VALUES ('LBN', 'Lebanon', 'Asia', 'Middle East', '10400.00', '1941', '3282000', '71.3', '17121.00', '15129.00', 'Lubnan', 'Republic', 'Émile Lahoud', '2438', 'LB');
INSERT INTO `ocenter_country` VALUES ('LBR', 'Liberia', 'Africa', 'Western Africa', '111369.00', '1847', '3154000', '51.0', '2012.00', null, 'Liberia', 'Republic', 'Charles Taylor', '2440', 'LR');
INSERT INTO `ocenter_country` VALUES ('LBY', 'Libyan Arab Jamahiriya', 'Africa', 'Northern Africa', '1759540.00', '1951', '5605000', '75.5', '44806.00', '40562.00', 'Libiya', 'Socialistic State', 'Muammar al-Qadhafi', '2441', 'LY');
INSERT INTO `ocenter_country` VALUES ('LCA', 'Saint Lucia', 'North America', 'Caribbean', '622.00', '1979', '154000', '72.3', '571.00', null, 'Saint Lucia', 'Constitutional Monarchy', 'Elisabeth II', '3065', 'LC');
INSERT INTO `ocenter_country` VALUES ('LIE', 'Liechtenstein', 'Europe', 'Western Europe', '160.00', '1806', '32300', '78.8', '1119.00', '1084.00', 'Liechtenstein', 'Constitutional Monarchy', 'Hans-Adam II', '2446', 'LI');
INSERT INTO `ocenter_country` VALUES ('LKA', 'Sri Lanka', 'Asia', 'Southern and Central Asia', '65610.00', '1948', '18827000', '71.8', '15706.00', '15091.00', 'Sri Lanka/Ilankai', 'Republic', 'Chandrika Kumaratunga', '3217', 'LK');
INSERT INTO `ocenter_country` VALUES ('LSO', 'Lesotho', 'Africa', 'Southern Africa', '30355.00', '1966', '2153000', '50.8', '1061.00', '1161.00', 'Lesotho', 'Constitutional Monarchy', 'Letsie III', '2437', 'LS');
INSERT INTO `ocenter_country` VALUES ('LTU', 'Lithuania', 'Europe', 'Baltic Countries', '65301.00', '1991', '3698500', '69.1', '10692.00', '9585.00', 'Lietuva', 'Republic', 'Valdas Adamkus', '2447', 'LT');
INSERT INTO `ocenter_country` VALUES ('LUX', 'Luxembourg', 'Europe', 'Western Europe', '2586.00', '1867', '435700', '77.1', '16321.00', '15519.00', 'Luxembourg/Lëtzebuerg', 'Constitutional Monarchy', 'Henri', '2452', 'LU');
INSERT INTO `ocenter_country` VALUES ('LVA', 'Latvia', 'Europe', 'Baltic Countries', '64589.00', '1991', '2424200', '68.4', '6398.00', '5639.00', 'Latvija', 'Republic', 'Vaira Vike-Freiberga', '2434', 'LV');
INSERT INTO `ocenter_country` VALUES ('MAC', 'Macao', 'Asia', 'Eastern Asia', '18.00', null, '473000', '81.6', '5749.00', '5940.00', 'Macau/Aomen', 'Special Administrative Region of China', 'Jiang Zemin', '2454', 'MO');
INSERT INTO `ocenter_country` VALUES ('MAR', 'Morocco', 'Africa', 'Northern Africa', '446550.00', '1956', '28351000', '69.1', '36124.00', '33514.00', 'Al-Maghrib', 'Constitutional Monarchy', 'Mohammed VI', '2486', 'MA');
INSERT INTO `ocenter_country` VALUES ('MCO', 'Monaco', 'Europe', 'Western Europe', '1.50', '1861', '34000', '78.8', '776.00', null, 'Monaco', 'Constitutional Monarchy', 'Rainier III', '2695', 'MC');
INSERT INTO `ocenter_country` VALUES ('MDA', 'Moldova', 'Europe', 'Eastern Europe', '33851.00', '1991', '4380000', '64.5', '1579.00', '1872.00', 'Moldova', 'Republic', 'Vladimir Voronin', '2690', 'MD');
INSERT INTO `ocenter_country` VALUES ('MDG', 'Madagascar', 'Africa', 'Eastern Africa', '587041.00', '1960', '15942000', '55.0', '3750.00', '3545.00', 'Madagasikara/Madagascar', 'Federal Republic', 'Didier Ratsiraka', '2455', 'MG');
INSERT INTO `ocenter_country` VALUES ('MDV', 'Maldives', 'Asia', 'Southern and Central Asia', '298.00', '1965', '286000', '62.2', '199.00', null, 'Dhivehi Raajje/Maldives', 'Republic', 'Maumoon Abdul Gayoom', '2463', 'MV');
INSERT INTO `ocenter_country` VALUES ('MEX', 'Mexico', 'North America', 'Central America', '1958201.00', '1810', '98881000', '71.5', '414972.00', '401461.00', 'México', 'Federal Republic', 'Vicente Fox Quesada', '2515', 'MX');
INSERT INTO `ocenter_country` VALUES ('MHL', 'Marshall Islands', 'Oceania', 'Micronesia', '181.00', '1990', '64000', '65.5', '97.00', null, 'Marshall Islands/Majol', 'Republic', 'Kessai Note', '2507', 'MH');
INSERT INTO `ocenter_country` VALUES ('MKD', 'Macedonia', 'Europe', 'Southern Europe', '25713.00', '1991', '2024000', '73.8', '1694.00', '1915.00', 'Makedonija', 'Republic', 'Boris Trajkovski', '2460', 'MK');
INSERT INTO `ocenter_country` VALUES ('MLI', 'Mali', 'Africa', 'Western Africa', '1240192.00', '1960', '11234000', '46.7', '2642.00', '2453.00', 'Mali', 'Republic', 'Alpha Oumar Konaré', '2482', 'ML');
INSERT INTO `ocenter_country` VALUES ('MLT', 'Malta', 'Europe', 'Southern Europe', '316.00', '1964', '380200', '77.9', '3512.00', '3338.00', 'Malta', 'Republic', 'Guido de Marco', '2484', 'MT');
INSERT INTO `ocenter_country` VALUES ('MMR', 'Myanmar', 'Asia', 'Southeast Asia', '676578.00', '1948', '45611000', '54.9', '180375.00', '171028.00', 'Myanma Pye', 'Republic', 'kenraali Than Shwe', '2710', 'MM');
INSERT INTO `ocenter_country` VALUES ('MNG', 'Mongolia', 'Asia', 'Eastern Asia', '1566500.00', '1921', '2662000', '67.3', '1043.00', '933.00', 'Mongol Uls', 'Republic', 'Natsagiin Bagabandi', '2696', 'MN');
INSERT INTO `ocenter_country` VALUES ('MNP', 'Northern Mariana Islands', 'Oceania', 'Micronesia', '464.00', null, '78000', '75.5', '0.00', null, 'Northern Mariana Islands', 'Commonwealth of the US', 'George W. Bush', '2913', 'MP');
INSERT INTO `ocenter_country` VALUES ('MOZ', 'Mozambique', 'Africa', 'Eastern Africa', '801590.00', '1975', '19680000', '37.5', '2891.00', '2711.00', 'Moçambique', 'Republic', 'Joaquím A. Chissano', '2698', 'MZ');
INSERT INTO `ocenter_country` VALUES ('MRT', 'Mauritania', 'Africa', 'Western Africa', '1025520.00', '1960', '2670000', '50.8', '998.00', '1081.00', 'Muritaniya/Mauritanie', 'Republic', 'Maaouiya Ould Sid´Ahmad Taya', '2509', 'MR');
INSERT INTO `ocenter_country` VALUES ('MSR', 'Montserrat', 'North America', 'Caribbean', '102.00', null, '11000', '78.0', '109.00', null, 'Montserrat', 'Dependent Territory of the UK', 'Elisabeth II', '2697', 'MS');
INSERT INTO `ocenter_country` VALUES ('MTQ', 'Martinique', 'North America', 'Caribbean', '1102.00', null, '395000', '78.3', '2731.00', '2559.00', 'Martinique', 'Overseas Department of France', 'Jacques Chirac', '2508', 'MQ');
INSERT INTO `ocenter_country` VALUES ('MUS', 'Mauritius', 'Africa', 'Eastern Africa', '2040.00', '1968', '1158000', '71.0', '4251.00', '4186.00', 'Mauritius', 'Republic', 'Cassam Uteem', '2511', 'MU');
INSERT INTO `ocenter_country` VALUES ('MWI', 'Malawi', 'Africa', 'Eastern Africa', '118484.00', '1964', '10925000', '37.6', '1687.00', '2527.00', 'Malawi', 'Republic', 'Bakili Muluzi', '2462', 'MW');
INSERT INTO `ocenter_country` VALUES ('MYS', 'Malaysia', 'Asia', 'Southeast Asia', '329758.00', '1957', '22244000', '70.8', '69213.00', '97884.00', 'Malaysia', 'Constitutional Monarchy, Federation', 'Salahuddin Abdul Aziz Shah Alhaj', '2464', 'MY');
INSERT INTO `ocenter_country` VALUES ('MYT', 'Mayotte', 'Africa', 'Eastern Africa', '373.00', null, '149000', '59.5', '0.00', null, 'Mayotte', 'Territorial Collectivity of France', 'Jacques Chirac', '2514', 'YT');
INSERT INTO `ocenter_country` VALUES ('NAM', 'Namibia', 'Africa', 'Southern Africa', '824292.00', '1990', '1726000', '42.5', '3101.00', '3384.00', 'Namibia', 'Republic', 'Sam Nujoma', '2726', 'NA');
INSERT INTO `ocenter_country` VALUES ('NCL', 'New Caledonia', 'Oceania', 'Melanesia', '18575.00', null, '214000', '72.8', '3563.00', null, 'Nouvelle-Calédonie', 'Nonmetropolitan Territory of France', 'Jacques Chirac', '3493', 'NC');
INSERT INTO `ocenter_country` VALUES ('NER', 'Niger', 'Africa', 'Western Africa', '1267000.00', '1960', '10730000', '41.3', '1706.00', '1580.00', 'Niger', 'Republic', 'Mamadou Tandja', '2738', 'NE');
INSERT INTO `ocenter_country` VALUES ('NFK', 'Norfolk Island', 'Oceania', 'Australia and New Zealand', '36.00', null, '2000', null, '0.00', null, 'Norfolk Island', 'Territory of Australia', 'Elisabeth II', '2806', 'NF');
INSERT INTO `ocenter_country` VALUES ('NGA', 'Nigeria', 'Africa', 'Western Africa', '923768.00', '1960', '111506000', '51.6', '65707.00', '58623.00', 'Nigeria', 'Federal Republic', 'Olusegun Obasanjo', '2754', 'NG');
INSERT INTO `ocenter_country` VALUES ('NIC', 'Nicaragua', 'North America', 'Central America', '130000.00', '1838', '5074000', '68.7', '1988.00', '2023.00', 'Nicaragua', 'Republic', 'Arnoldo Alemán Lacayo', '2734', 'NI');
INSERT INTO `ocenter_country` VALUES ('NIU', 'Niue', 'Oceania', 'Polynesia', '260.00', null, '2000', null, '0.00', null, 'Niue', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', '2805', 'NU');
INSERT INTO `ocenter_country` VALUES ('NLD', 'Netherlands', 'Europe', 'Western Europe', '41526.00', '1581', '15864000', '78.3', '371362.00', '360478.00', 'Nederland', 'Constitutional Monarchy', 'Beatrix', '5', 'NL');
INSERT INTO `ocenter_country` VALUES ('NOR', 'Norway', 'Europe', 'Nordic Countries', '323877.00', '1905', '4478500', '78.7', '145895.00', '153370.00', 'Norge', 'Constitutional Monarchy', 'Harald V', '2807', 'NO');
INSERT INTO `ocenter_country` VALUES ('NPL', 'Nepal', 'Asia', 'Southern and Central Asia', '147181.00', '1769', '23930000', '57.8', '4768.00', '4837.00', 'Nepal', 'Constitutional Monarchy', 'Gyanendra Bir Bikram', '2729', 'NP');
INSERT INTO `ocenter_country` VALUES ('NRU', 'Nauru', 'Oceania', 'Micronesia', '21.00', '1968', '12000', '60.8', '197.00', null, 'Naoero/Nauru', 'Republic', 'Bernard Dowiyogo', '2728', 'NR');
INSERT INTO `ocenter_country` VALUES ('NZL', 'New Zealand', 'Oceania', 'Australia and New Zealand', '270534.00', '1907', '3862000', '77.8', '54669.00', '64960.00', 'New Zealand/Aotearoa', 'Constitutional Monarchy', 'Elisabeth II', '3499', 'NZ');
INSERT INTO `ocenter_country` VALUES ('OMN', 'Oman', 'Asia', 'Middle East', '309500.00', '1951', '2542000', '71.8', '16904.00', '16153.00', '´Uman', 'Monarchy (Sultanate)', 'Qabus ibn Sa´id', '2821', 'OM');
INSERT INTO `ocenter_country` VALUES ('PAK', 'Pakistan', 'Asia', 'Southern and Central Asia', '796095.00', '1947', '156483000', '61.1', '61289.00', '58549.00', 'Pakistan', 'Republic', 'Mohammad Rafiq Tarar', '2831', 'PK');
INSERT INTO `ocenter_country` VALUES ('PAN', 'Panama', 'North America', 'Central America', '75517.00', '1903', '2856000', '75.5', '9131.00', '8700.00', 'Panamá', 'Republic', 'Mireya Elisa Moscoso Rodríguez', '2882', 'PA');
INSERT INTO `ocenter_country` VALUES ('PCN', 'Pitcairn', 'Oceania', 'Polynesia', '49.00', null, '50', null, '0.00', null, 'Pitcairn', 'Dependent Territory of the UK', 'Elisabeth II', '2912', 'PN');
INSERT INTO `ocenter_country` VALUES ('PER', 'Peru', 'South America', 'South America', '1285216.00', '1821', '25662000', '70.0', '64140.00', '65186.00', 'Perú/Piruw', 'Republic', 'Valentin Paniagua Corazao', '2890', 'PE');
INSERT INTO `ocenter_country` VALUES ('PHL', 'Philippines', 'Asia', 'Southeast Asia', '300000.00', '1946', '75967000', '67.5', '65107.00', '82239.00', 'Pilipinas', 'Republic', 'Gloria Macapagal-Arroyo', '766', 'PH');
INSERT INTO `ocenter_country` VALUES ('PLW', 'Palau', 'Oceania', 'Micronesia', '459.00', '1994', '19000', '68.6', '105.00', null, 'Belau/Palau', 'Republic', 'Kuniwo Nakamura', '2881', 'PW');
INSERT INTO `ocenter_country` VALUES ('PNG', 'Papua New Guinea', 'Oceania', 'Melanesia', '462840.00', '1975', '4807000', '63.1', '4988.00', '6328.00', 'Papua New Guinea/Papua Niugini', 'Constitutional Monarchy', 'Elisabeth II', '2884', 'PG');
INSERT INTO `ocenter_country` VALUES ('POL', 'Poland', 'Europe', 'Eastern Europe', '323250.00', '1918', '38653600', '73.2', '151697.00', '135636.00', 'Polska', 'Republic', 'Aleksander Kwasniewski', '2928', 'PL');
INSERT INTO `ocenter_country` VALUES ('PRI', 'Puerto Rico', 'North America', 'Caribbean', '8875.00', null, '3869000', '75.6', '34100.00', '32100.00', 'Puerto Rico', 'Commonwealth of the US', 'George W. Bush', '2919', 'PR');
INSERT INTO `ocenter_country` VALUES ('PRK', 'North Korea', 'Asia', 'Eastern Asia', '120538.00', '1948', '24039000', '70.7', '5332.00', null, 'Choson Minjujuui In´min Konghwaguk (Bukhan)', 'Socialistic Republic', 'Kim Jong-il', '2318', 'KP');
INSERT INTO `ocenter_country` VALUES ('PRT', 'Portugal', 'Europe', 'Southern Europe', '91982.00', '1143', '9997600', '75.8', '105954.00', '102133.00', 'Portugal', 'Republic', 'Jorge Sampãio', '2914', 'PT');
INSERT INTO `ocenter_country` VALUES ('PRY', 'Paraguay', 'South America', 'South America', '406752.00', '1811', '5496000', '73.7', '8444.00', '9555.00', 'Paraguay', 'Republic', 'Luis Ángel González Macchi', '2885', 'PY');
INSERT INTO `ocenter_country` VALUES ('PSE', 'Palestine', 'Asia', 'Middle East', '6257.00', null, '3101000', '71.4', '4173.00', null, 'Filastin', 'Autonomous Area', 'Yasser (Yasir) Arafat', '4074', 'PS');
INSERT INTO `ocenter_country` VALUES ('PYF', 'French Polynesia', 'Oceania', 'Polynesia', '4000.00', null, '235000', '74.8', '818.00', '781.00', 'Polynésie française', 'Nonmetropolitan Territory of France', 'Jacques Chirac', '3016', 'PF');
INSERT INTO `ocenter_country` VALUES ('QAT', 'Qatar', 'Asia', 'Middle East', '11000.00', '1971', '599000', '72.4', '9472.00', '8920.00', 'Qatar', 'Monarchy', 'Hamad ibn Khalifa al-Thani', '2973', 'QA');
INSERT INTO `ocenter_country` VALUES ('REU', 'Réunion', 'Africa', 'Eastern Africa', '2510.00', null, '699000', '72.7', '8287.00', '7988.00', 'Réunion', 'Overseas Department of France', 'Jacques Chirac', '3017', 'RE');
INSERT INTO `ocenter_country` VALUES ('ROM', 'Romania', 'Europe', 'Eastern Europe', '238391.00', '1878', '22455500', '69.9', '38158.00', '34843.00', 'România', 'Republic', 'Ion Iliescu', '3018', 'RO');
INSERT INTO `ocenter_country` VALUES ('RUS', 'Russian Federation', 'Europe', 'Eastern Europe', '17075400.00', '1991', '146934000', '67.2', '276608.00', '442989.00', 'Rossija', 'Federal Republic', 'Vladimir Putin', '3580', 'RU');
INSERT INTO `ocenter_country` VALUES ('RWA', 'Rwanda', 'Africa', 'Eastern Africa', '26338.00', '1962', '7733000', '39.3', '2036.00', '1863.00', 'Rwanda/Urwanda', 'Republic', 'Paul Kagame', '3047', 'RW');
INSERT INTO `ocenter_country` VALUES ('SAU', 'Saudi Arabia', 'Asia', 'Middle East', '2149690.00', '1932', '21607000', '67.8', '137635.00', '146171.00', 'Al-´Arabiya as-Sa´udiya', 'Monarchy', 'Fahd ibn Abdul-Aziz al-Sa´ud', '3173', 'SA');
INSERT INTO `ocenter_country` VALUES ('SDN', 'Sudan', 'Africa', 'Northern Africa', '2505813.00', '1956', '29490000', '56.6', '10162.00', null, 'As-Sudan', 'Islamic Republic', 'Omar Hassan Ahmad al-Bashir', '3225', 'SD');
INSERT INTO `ocenter_country` VALUES ('SEN', 'Senegal', 'Africa', 'Western Africa', '196722.00', '1960', '9481000', '62.2', '4787.00', '4542.00', 'Sénégal/Sounougal', 'Republic', 'Abdoulaye Wade', '3198', 'SN');
INSERT INTO `ocenter_country` VALUES ('SGP', 'Singapore', 'Asia', 'Southeast Asia', '618.00', '1965', '3567000', '80.1', '86503.00', '96318.00', 'Singapore/Singapura/Xinjiapo/Singapur', 'Republic', 'Sellapan Rama Nathan', '3208', 'SG');
INSERT INTO `ocenter_country` VALUES ('SGS', 'South Georgia and the South Sandwich Islands', 'Antarctica', 'Antarctica', '3903.00', null, '0', null, '0.00', null, 'South Georgia and the South Sandwich Islands', 'Dependent Territory of the UK', 'Elisabeth II', null, 'GS');
INSERT INTO `ocenter_country` VALUES ('SHN', 'Saint Helena', 'Africa', 'Western Africa', '314.00', null, '6000', '76.8', '0.00', null, 'Saint Helena', 'Dependent Territory of the UK', 'Elisabeth II', '3063', 'SH');
INSERT INTO `ocenter_country` VALUES ('SJM', 'Svalbard and Jan Mayen', 'Europe', 'Nordic Countries', '62422.00', null, '3200', null, '0.00', null, 'Svalbard og Jan Mayen', 'Dependent Territory of Norway', 'Harald V', '938', 'SJ');
INSERT INTO `ocenter_country` VALUES ('SLB', 'Solomon Islands', 'Oceania', 'Melanesia', '28896.00', '1978', '444000', '71.3', '182.00', '220.00', 'Solomon Islands', 'Constitutional Monarchy', 'Elisabeth II', '3161', 'SB');
INSERT INTO `ocenter_country` VALUES ('SLE', 'Sierra Leone', 'Africa', 'Western Africa', '71740.00', '1961', '4854000', '45.3', '746.00', '858.00', 'Sierra Leone', 'Republic', 'Ahmed Tejan Kabbah', '3207', 'SL');
INSERT INTO `ocenter_country` VALUES ('SLV', 'El Salvador', 'North America', 'Central America', '21041.00', '1841', '6276000', '69.7', '11863.00', '11203.00', 'El Salvador', 'Republic', 'Francisco Guillermo Flores Pérez', '645', 'SV');
INSERT INTO `ocenter_country` VALUES ('SMR', 'San Marino', 'Europe', 'Southern Europe', '61.00', '885', '27000', '81.1', '510.00', null, 'San Marino', 'Republic', null, '3171', 'SM');
INSERT INTO `ocenter_country` VALUES ('SOM', 'Somalia', 'Africa', 'Eastern Africa', '637657.00', '1960', '10097000', '46.2', '935.00', null, 'Soomaaliya', 'Republic', 'Abdiqassim Salad Hassan', '3214', 'SO');
INSERT INTO `ocenter_country` VALUES ('SPM', 'Saint Pierre and Miquelon', 'North America', 'North America', '242.00', null, '7000', '77.6', '0.00', null, 'Saint-Pierre-et-Miquelon', 'Territorial Collectivity of France', 'Jacques Chirac', '3067', 'PM');
INSERT INTO `ocenter_country` VALUES ('STP', 'Sao Tome and Principe', 'Africa', 'Central Africa', '964.00', '1975', '147000', '65.3', '6.00', null, 'São Tomé e Príncipe', 'Republic', 'Miguel Trovoada', '3172', 'ST');
INSERT INTO `ocenter_country` VALUES ('SUR', 'Suriname', 'South America', 'South America', '163265.00', '1975', '417000', '71.4', '870.00', '706.00', 'Suriname', 'Republic', 'Ronald Venetiaan', '3243', 'SR');
INSERT INTO `ocenter_country` VALUES ('SVK', 'Slovakia', 'Europe', 'Eastern Europe', '49012.00', '1993', '5398700', '73.7', '20594.00', '19452.00', 'Slovensko', 'Republic', 'Rudolf Schuster', '3209', 'SK');
INSERT INTO `ocenter_country` VALUES ('SVN', 'Slovenia', 'Europe', 'Southern Europe', '20256.00', '1991', '1987800', '74.9', '19756.00', '18202.00', 'Slovenija', 'Republic', 'Milan Kucan', '3212', 'SI');
INSERT INTO `ocenter_country` VALUES ('SWE', 'Sweden', 'Europe', 'Nordic Countries', '449964.00', '836', '8861400', '79.6', '226492.00', '227757.00', 'Sverige', 'Constitutional Monarchy', 'Carl XVI Gustaf', '3048', 'SE');
INSERT INTO `ocenter_country` VALUES ('SWZ', 'Swaziland', 'Africa', 'Southern Africa', '17364.00', '1968', '1008000', '40.4', '1206.00', '1312.00', 'kaNgwane', 'Monarchy', 'Mswati III', '3244', 'SZ');
INSERT INTO `ocenter_country` VALUES ('SYC', 'Seychelles', 'Africa', 'Eastern Africa', '455.00', '1976', '77000', '70.4', '536.00', '539.00', 'Sesel/Seychelles', 'Republic', 'France-Albert René', '3206', 'SC');
INSERT INTO `ocenter_country` VALUES ('SYR', 'Syria', 'Asia', 'Middle East', '185180.00', '1941', '16125000', '68.5', '65984.00', '64926.00', 'Suriya', 'Republic', 'Bashar al-Assad', '3250', 'SY');
INSERT INTO `ocenter_country` VALUES ('TCA', 'Turks and Caicos Islands', 'North America', 'Caribbean', '430.00', null, '17000', '73.3', '96.00', null, 'The Turks and Caicos Islands', 'Dependent Territory of the UK', 'Elisabeth II', '3423', 'TC');
INSERT INTO `ocenter_country` VALUES ('TCD', 'Chad', 'Africa', 'Central Africa', '1284000.00', '1960', '7651000', '50.5', '1208.00', '1102.00', 'Tchad/Tshad', 'Republic', 'Idriss Déby', '3337', 'TD');
INSERT INTO `ocenter_country` VALUES ('TGO', 'Togo', 'Africa', 'Western Africa', '56785.00', '1960', '4629000', '54.7', '1449.00', '1400.00', 'Togo', 'Republic', 'Gnassingbé Eyadéma', '3332', 'TG');
INSERT INTO `ocenter_country` VALUES ('THA', 'Thailand', 'Asia', 'Southeast Asia', '513115.00', '1350', '61399000', '68.6', '116416.00', '153907.00', 'Prathet Thai', 'Constitutional Monarchy', 'Bhumibol Adulyadej', '3320', 'TH');
INSERT INTO `ocenter_country` VALUES ('TJK', 'Tajikistan', 'Asia', 'Southern and Central Asia', '143100.00', '1991', '6188000', '64.1', '1990.00', '1056.00', 'Toçikiston', 'Republic', 'Emomali Rahmonov', '3261', 'TJ');
INSERT INTO `ocenter_country` VALUES ('TKL', 'Tokelau', 'Oceania', 'Polynesia', '12.00', null, '2000', null, '0.00', null, 'Tokelau', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', '3333', 'TK');
INSERT INTO `ocenter_country` VALUES ('TKM', 'Turkmenistan', 'Asia', 'Southern and Central Asia', '488100.00', '1991', '4459000', '60.9', '4397.00', '2000.00', 'Türkmenostan', 'Republic', 'Saparmurad Nijazov', '3419', 'TM');
INSERT INTO `ocenter_country` VALUES ('TMP', 'East Timor', 'Asia', 'Southeast Asia', '14874.00', null, '885000', '46.0', '0.00', null, 'Timor Timur', 'Administrated by the UN', 'José Alexandre Gusmão', '1522', 'TP');
INSERT INTO `ocenter_country` VALUES ('TON', 'Tonga', 'Oceania', 'Polynesia', '650.00', '1970', '99000', '67.9', '146.00', '170.00', 'Tonga', 'Monarchy', 'Taufa\'ahau Tupou IV', '3334', 'TO');
INSERT INTO `ocenter_country` VALUES ('TTO', 'Trinidad and Tobago', 'North America', 'Caribbean', '5130.00', '1962', '1295000', '68.0', '6232.00', '5867.00', 'Trinidad and Tobago', 'Republic', 'Arthur N. R. Robinson', '3336', 'TT');
INSERT INTO `ocenter_country` VALUES ('TUN', 'Tunisia', 'Africa', 'Northern Africa', '163610.00', '1956', '9586000', '73.7', '20026.00', '18898.00', 'Tunis/Tunisie', 'Republic', 'Zine al-Abidine Ben Ali', '3349', 'TN');
INSERT INTO `ocenter_country` VALUES ('TUR', 'Turkey', 'Asia', 'Middle East', '774815.00', '1923', '66591000', '71.0', '210721.00', '189122.00', 'Türkiye', 'Republic', 'Ahmet Necdet Sezer', '3358', 'TR');
INSERT INTO `ocenter_country` VALUES ('TUV', 'Tuvalu', 'Oceania', 'Polynesia', '26.00', '1978', '12000', '66.3', '6.00', null, 'Tuvalu', 'Constitutional Monarchy', 'Elisabeth II', '3424', 'TV');
INSERT INTO `ocenter_country` VALUES ('TWN', 'Taiwan', 'Asia', 'Eastern Asia', '36188.00', '1945', '22256000', '76.4', '256254.00', '263451.00', 'TPU2ai-wan', 'Republic', 'Chen Shui-bian', '3263', 'TW');
INSERT INTO `ocenter_country` VALUES ('TZA', 'Tanzania', 'Africa', 'Eastern Africa', '883749.00', '1961', '33517000', '52.3', '8005.00', '7388.00', 'Tanzania', 'Republic', 'Benjamin William Mkapa', '3306', 'TZ');
INSERT INTO `ocenter_country` VALUES ('UGA', 'Uganda', 'Africa', 'Eastern Africa', '241038.00', '1962', '21778000', '42.9', '6313.00', '6887.00', 'Uganda', 'Republic', 'Yoweri Museveni', '3425', 'UG');
INSERT INTO `ocenter_country` VALUES ('UKR', 'Ukraine', 'Europe', 'Eastern Europe', '603700.00', '1991', '50456000', '66.0', '42168.00', '49677.00', 'Ukrajina', 'Republic', 'Leonid KutSCIma', '3426', 'UA');
INSERT INTO `ocenter_country` VALUES ('UMI', 'United States Minor Outlying Islands', 'Oceania', 'Micronesia/Caribbean', '16.00', null, '0', null, '0.00', null, 'United States Minor Outlying Islands', 'Dependent Territory of the US', 'George W. Bush', null, 'UM');
INSERT INTO `ocenter_country` VALUES ('URY', 'Uruguay', 'South America', 'South America', '175016.00', '1828', '3337000', '75.2', '20831.00', '19967.00', 'Uruguay', 'Republic', 'Jorge Batlle Ibáñez', '3492', 'UY');
INSERT INTO `ocenter_country` VALUES ('USA', 'United States', 'North America', 'North America', '9363520.00', '1776', '278357000', '77.1', '8510700.00', '8110900.00', 'United States', 'Federal Republic', 'George W. Bush', '3813', 'US');
INSERT INTO `ocenter_country` VALUES ('UZB', 'Uzbekistan', 'Asia', 'Southern and Central Asia', '447400.00', '1991', '24318000', '63.7', '14194.00', '21300.00', 'Uzbekiston', 'Republic', 'Islam Karimov', '3503', 'UZ');
INSERT INTO `ocenter_country` VALUES ('VAT', 'Holy See (Vatican City State)', 'Europe', 'Southern Europe', '0.40', '1929', '1000', null, '9.00', null, 'Santa Sede/Città del Vaticano', 'Independent Church State', 'Johannes Paavali II', '3538', 'VA');
INSERT INTO `ocenter_country` VALUES ('VCT', 'Saint Vincent and the Grenadines', 'North America', 'Caribbean', '388.00', '1979', '114000', '72.3', '285.00', null, 'Saint Vincent and the Grenadines', 'Constitutional Monarchy', 'Elisabeth II', '3066', 'VC');
INSERT INTO `ocenter_country` VALUES ('VEN', 'Venezuela', 'South America', 'South America', '912050.00', '1811', '24170000', '73.1', '95023.00', '88434.00', 'Venezuela', 'Federal Republic', 'Hugo Chávez Frías', '3539', 'VE');
INSERT INTO `ocenter_country` VALUES ('VGB', 'Virgin Islands, British', 'North America', 'Caribbean', '151.00', null, '21000', '75.4', '612.00', '573.00', 'British Virgin Islands', 'Dependent Territory of the UK', 'Elisabeth II', '537', 'VG');
INSERT INTO `ocenter_country` VALUES ('VIR', 'Virgin Islands, U.S.', 'North America', 'Caribbean', '347.00', null, '93000', '78.1', '0.00', null, 'Virgin Islands of the United States', 'US Territory', 'George W. Bush', '4067', 'VI');
INSERT INTO `ocenter_country` VALUES ('VNM', 'Vietnam', 'Asia', 'Southeast Asia', '331689.00', '1945', '79832000', '69.3', '21929.00', '22834.00', 'Viêt Nam', 'Socialistic Republic', 'Trân Duc Luong', '3770', 'VN');
INSERT INTO `ocenter_country` VALUES ('VUT', 'Vanuatu', 'Oceania', 'Melanesia', '12189.00', '1980', '190000', '60.6', '261.00', '246.00', 'Vanuatu', 'Republic', 'John Bani', '3537', 'VU');
INSERT INTO `ocenter_country` VALUES ('WLF', 'Wallis and Futuna', 'Oceania', 'Polynesia', '200.00', null, '15000', null, '0.00', null, 'Wallis-et-Futuna', 'Nonmetropolitan Territory of France', 'Jacques Chirac', '3536', 'WF');
INSERT INTO `ocenter_country` VALUES ('WSM', 'Samoa', 'Oceania', 'Polynesia', '2831.00', '1962', '180000', '69.2', '141.00', '157.00', 'Samoa', 'Parlementary Monarchy', 'Malietoa Tanumafili II', '3169', 'WS');
INSERT INTO `ocenter_country` VALUES ('YEM', 'Yemen', 'Asia', 'Middle East', '527968.00', '1918', '18112000', '59.8', '6041.00', '5729.00', 'Al-Yaman', 'Republic', 'Ali Abdallah Salih', '1780', 'YE');
INSERT INTO `ocenter_country` VALUES ('YUG', 'Yugoslavia', 'Europe', 'Southern Europe', '102173.00', '1918', '10640000', '72.4', '17000.00', null, 'Jugoslavija', 'Federal Republic', 'Vojislav KoSCItunica', '1792', 'YU');
INSERT INTO `ocenter_country` VALUES ('ZAF', 'South Africa', 'Africa', 'Southern Africa', '1221037.00', '1910', '40377000', '51.1', '116729.00', '129092.00', 'South Africa', 'Republic', 'Thabo Mbeki', '716', 'ZA');
INSERT INTO `ocenter_country` VALUES ('ZMB', 'Zambia', 'Africa', 'Eastern Africa', '752618.00', '1964', '9169000', '37.2', '3377.00', '3922.00', 'Zambia', 'Republic', 'Frederick Chiluba', '3162', 'ZM');
INSERT INTO `ocenter_country` VALUES ('ZWE', 'Zimbabwe', 'Africa', 'Eastern Africa', '390757.00', '1980', '11669000', '37.8', '5951.00', '8670.00', 'Zimbabwe', 'Republic', 'Robert G. Mugabe', '4068', 'ZW');
