--1
	create table Child_population
	(
	id int  identity  not null,
	District_Code char(3),
	Name_UA_City char(50),
	Level char(50),
	Person int,
	Male int,
	Female int
	)

CREATE TABLE CHILD_SEX_RATION
	 (
		ID INT IDENTITY NOT NULL,
		DISTRICT_CODE  varchar(3),
		SexRatio INT
	 
	 )

insert into  Child_population values (99,'Srinagar UA','UA',157100,84110,72990)
insert into  Child_population values (21,'Jammu UA','UA',58424,31979,26445)
insert into  Child_population values (99,'Anantnag UA','UA',26001,14013,11988)
insert into  Child_population values (11,'Shimla UA','UA',13784,7291,6493)
insert into  Child_population values (7,'Ludhiana (M Corp.)','City',173021,92492,80529)
insert into  Child_population values (15,'Amritsar UA','UA',115368,63238,52130)
insert into  Child_population values (3,'Jalandhar UA','UA',84886,45459,39427)
insert into  Child_population values (14,'Patiala UA','UA',42458,22865,19593)
insert into  Child_population values (12,'Bathinda (M Corp.)','City',30713,16472,14241)
insert into  Child_population values (18,'S.A.S. Nagar UA','UA',16148,8620,7528)
insert into  Child_population values (4,'Hoshiarpur (M Cl)','City',16836,9178,7658)
insert into  Child_population values (1,'Pathankot UA','UA',14734,8183,6551)
insert into  Child_population values (8,'Moga UA','UA',16447,8850,7597)
insert into  Child_population values (1,'Batala UA','UA',14943,8145,6798)
insert into  Child_population values (9,'Abohar (M Cl)','City',15870,8587,7283)
insert into  Child_population values (19,'Malerkotla (M Cl)','City',16315,8365,7950)
insert into  Child_population values (7,'Khanna (M Cl)','City',13218,7232,5986)
insert into  Child_population values (2,'Phagwara UA','UA',11622,6062,5560)
insert into  Child_population values (10,'Muktsar (M Cl)','City',13639,7448,6191)
insert into  Child_population values (20,'Barnala (M Cl)','City',12984,7096,5888)
insert into  Child_population values (9,'Firozpur (M Cl)','City',11516,6262,5254)
insert into  Child_population values (2,'Kapurthala (M Cl)','City',9706,5162,4544)
insert into  Child_population values (1,'Chandigarh UA','UA',113698,60902,52796)
insert into  Child_population values (5,'Dehradun UA','UA',72859,39047,33812)
insert into  Child_population values (13,'Hardwar UA','UA',36819,19697,17122)
insert into  Child_population values (13,'Roorkee UA','UA',32729,17866,14863)
insert into  Child_population values (11,'Haldwani-cum-Kathgodam UA','UA',27906,14817,13089)
insert into  Child_population values (12,'Rudrapur UA','UA',21443,11249,10194)
insert into  Child_population values (12,'Kashipur (NPP)','City',14381,7792,6589)
insert into  Child_population values (5,'Rishikesh UA','UA',11507,6259,5248)
insert into  Child_population values (20,'Faridabad (M Corp.)','City',176773,95808,80965)
insert into  Child_population values (18,'Gurgaon UA','UA',112094,60766,51328)
insert into  Child_population values (7,'Panipat UA','UA',56581,30579,26002)
insert into  Child_population values (3,'Yamunanagar UA','UA',40950,22450,18500)
insert into  Child_population values (14,'Rohtak (M Cl)','City',40715,22711,18004)
insert into  Child_population values (12,'Hisar UA','UA',34005,18268,15737)
insert into  Child_population values (6,'Karnal UA','UA',33321,18450,14871)
insert into  Child_population values (8,'Sonipat UA','UA',32932,18457,14475)
insert into  Child_population values (1,'Panchkula (M Cl)','City',22111,12024,10087)
insert into  Child_population values (2,'Ambala UA','UA',20687,11257,9430)
insert into  Child_population values (13,'Bhiwani (M Cl)','City',22507,12444,10063)
insert into  Child_population values (2,'Ambala (M Cl)','City',19645,10713,8932)
insert into  Child_population values (11,'Sirsa (M Cl)','City',20161,11161,9000)
insert into  Child_population values (15,'Bahadurgarh (M Cl)','City',20374,11420,8954)
insert into  Child_population values (9,'Jind (M Cl)','City',18825,10280,8545)
insert into  Child_population values (4,'Thanesar (M Cl)','City',15594,8401,7193)
insert into  Child_population values (5,'Kaithal (M Cl)','City',16690,9156,7534)
insert into  Child_population values (17,'Rewari (M Cl)','City',15986,8958,7028)
insert into  Child_population values (21,'Palwal UA','UA',16196,8903,7293)
insert into  Child_population values (99,'Delhi UA','UA',1912253,1023534,888719)
insert into  Child_population values (12,'Jaipur (M Corp.)','City',378788,204320,174468)
insert into  Child_population values (15,'Jodhpur UA','UA',140703,74225,66478)
insert into  Child_population values (29,'Kota (M Corp.)','City',118139,62958,55181)
insert into  Child_population values (3,'Bikaner (M Corp.)','City',82264,43280,38984)
insert into  Child_population values (21,'Ajmer UA','UA',60701,32251,28450)
insert into  Child_population values (32,'Udaipur UA','UA',49966,26724,23242)
insert into  Child_population values (24,'Bhilwara (M Cl)','City',45832,24215,21617)
insert into  Child_population values (6,'Alwar UA','UA',38359,20876,17483)
insert into  Child_population values (7,'Bharatpur UA','UA',31617,17288,14329)
insert into  Child_population values (1,'Ganganagar UA','UA',27850,15311,12539)
insert into  Child_population values (13,'Sikar UA','UA',32967,17686,15281)
insert into  Child_population values (20,'Pali (M Cl)','City',30566,16257,14309)
insert into  Child_population values (22,'Tonk (M Cl)','City',23122,12280,10842)
insert into  Child_population values (21,'Kishangarh (M Cl)','City',21765,11602,10163)
insert into  Child_population values (21,'Beawar UA','UA',18406,9801,8605)
insert into  Child_population values (2,'Total Hanumangarh (M Cl)','City',17947,9709,8238)
insert into  Child_population values (8,'Dhaulpur UA','UA',18361,10075,8286)
insert into  Child_population values (10,'Gangapur City UA','UA',17591,9502,8089)
insert into  Child_population values (10,'Sawai Madhopur (M)','City',15286,8170,7116)
insert into  Child_population values (4,'Churu UA','UA',16368,8532,7836)
insert into  Child_population values (5,'Jhunjhunun (M Cl)','City',16563,8887,7676)
insert into  Child_population values (30,'Baran (M)','City',14845,7842,7003)
insert into  Child_population values (28,'Chittaurgarh (M)','City',14067,7473,6594)
insert into  Child_population values (14,'Makrana UA','UA',19504,10230,9274)
insert into  Child_population values (14,'Nagaur UA','UA',14022,7461,6561)
insert into  Child_population values (9,'Hindaun (M)','City',15451,8345,7106)
insert into  Child_population values (6,'Bhiwadi (M)','City',16884,9080,7804)
insert into  Child_population values (23,'Bundi UA','UA',12320,6558,5762)
insert into  Child_population values (4,'Sujangarh (M)','City',14723,7775,6948)
insert into  Child_population values (27,'Banswara UA','UA',12337,6645,5692)
insert into  Child_population values (33,'Kanpur UA','UA',266336,143523,122813)
insert into  Child_population values (26,'Lucknow UA','UA',289375,152225,137150)
insert into  Child_population values (9,'Ghaziabad UA','UA',308717,167038,141679)
insert into  Child_population values (15,'Agra UA','UA',210036,117986,92050)
insert into  Child_population values (66,'Varanasi UA','UA',157482,83895,73587)
insert into  Child_population values (7,'Meerut UA','UA',176770,95685,81085)
insert into  Child_population values (44,'Allahabad UA','UA',112023,59807,52216)
insert into  Child_population values (19,'Bareilly UA','UA',104560,55307,49253)
insert into  Child_population values (12,'Aligarh UA','UA',118778,63420,55358)
insert into  Child_population values (4,'Moradabad (M Corp.)','City',110376,57999,52377)
insert into  Child_population values (1,'Saharanpur (M Corp.)','City',88501,47024,41477)
insert into  Child_population values (57,'Gorakhpur UA','UA',65078,34478,30600)
insert into  Child_population values (10,'Noida (CT)','CT',83530,44493,39037)
insert into  Child_population values (16,'Firozabad (NPP)','City',82439,43543,38896)
insert into  Child_population values (35,'Jhansi UA','UA',56230,30199,26031)
insert into  Child_population values (2,'Muzaffarnagar UA','UA',64696,35120,29576)
insert into  Child_population values (14,'Mathura UA','UA',56267,30495,25772)
insert into  Child_population values (5,'Rampur UA','UA',41769,21742,20027)
insert into  Child_population values (21,'Shahjahanpur UA','UA',38736,20602,18134)
insert into  Child_population values (28,'Farrukhabad-cum-Fatehgarh UA','UA',33944,18220,15724)
insert into  Child_population values (61,'Maunath Bhanjan (NPP)','City',40651,20820,19831)
insert into  Child_population values (9,'Hapur (NPP)','City',36714,19822,16892)
insert into  Child_population values (46,'Faizabad UA','UA',25436,13341,12095)
insert into  Child_population values (30,'Etawah (NPP)','City',28922,15521,13401)
insert into  Child_population values (68,'Mirzapur-cum-Vindhyachal UA','UA',29619,15729,13890)
insert into  Child_population values (11,'Bulandshahr UA','UA',30886,16966,13920)
insert into  Child_population values (4,'Sambhal (NPP)','City',34279,17702,16577)
insert into  Child_population values (6,'Amroha (NPP)','City',26855,13799,13056)
insert into  Child_population values (24,'Hardoi UA','UA',21719,11528,10191)
insert into  Child_population values (41,'Fatehpur (NPP)','City',22078,11850,10228)
insert into  Child_population values (27,'Rae Bareli (NPP)','City',18866,9886,8980)
insert into  Child_population values (34,'Orai UA','UA',20424,11075,9349)
insert into  Child_population values (23,'Sitapur UA','UA',19721,10492,9229)
insert into  Child_population values (49,'Bahraich (NPP)','City',22828,12046,10782)
insert into  Child_population values (9,'Modinagar UA','UA',21441,11898,9543)
insert into  Child_population values (25,'Unnao (NPP)','City',18604,9949,8655)
insert into  Child_population values (63,'Jaunpur (NPP)','City',18033,9449,8584)
insert into  Child_population values (22,'Lakhimpur UA','UA',18174,9724,8450)
insert into  Child_population values (13,'Hathras UA','UA',20279,11033,9246)
insert into  Child_population values (39,'Banda UA','UA',18317,9670,8647)
insert into  Child_population values (20,'Pilibhit UA','UA',16089,8415,7674)
insert into  Child_population values (18,'Budaun (NPP)','City',19613,10420,9193)
insert into  Child_population values (65,'Mughalsarai UA','UA',19055,10078,8977)
insert into  Child_population values (45,'Barabanki UA','UA',16093,8434,7659)
insert into  Child_population values (11,'Khurja UA','UA',20072,10995,9077)
insert into  Child_population values (52,'Gonda UA','UA',15608,8253,7355)
insert into  Child_population values (17,'Mainpuri UA','UA',16371,8827,7544)
insert into  Child_population values (36,'Lalitpur (NPP)','City',16193,8413,7780)
insert into  Child_population values (70,'Etah UA','UA',15890,8485,7405)
insert into  Child_population values (59,'Deoria (NPP)','City',13821,7243,6578)
insert into  Child_population values (64,'Ghazipur UA','UA',13986,7488,6498)
insert into  Child_population values (48,'Sultanpur UA','UA',12368,6577,5791)
insert into  Child_population values (60,'Azamgarh UA','UA',13287,7136,6151)
insert into  Child_population values (3,'Bijnor UA','UA',14499,7760,6739)
insert into  Child_population values (54,'Basti (NPP)','City',12568,6541,6027)
insert into  Child_population values (4,'Chandausi (NPP)','City',14417,7730,6687)
insert into  Child_population values (47,'Akbarpur (NPP)','City',14037,7247,6790)
insert into  Child_population values (62,'Ballia UA','UA',11522,6145,5377)
insert into  Child_population values (60,'Mubarakpur UA','UA',16147,8168,7979)
insert into  Child_population values (10,'Greater Noida (CT)','CT',15517,8512,7005)
insert into  Child_population values (16,'Shikohabad (NPP)','City',12956,7106,5850)
insert into  Child_population values (2,'Shamli (NPP)','City',13724,7634,6090)
insert into  Child_population values (8,'Baraut (NPP)','City',13536,7387,6149)
insert into  Child_population values (71,'Kasganj (NPP)','City',13043,7139,5904)
insert into  Child_population values (28,'Patna UA','UA',239035,127866,111169)
insert into  Child_population values (34,'Gaya UA','UA',59669,31323,28346)
insert into  Child_population values (22,'Bhagalpur UA','UA',55898,29081,26817)
insert into  Child_population values (14,'Muzaffarpur UA','UA',47784,25300,22484)
insert into  Child_population values (9,'Purnia UA','UA',45730,23519,22211)
insert into  Child_population values (13,'Darbhanga UA','UA',42213,22176,20037)
insert into  Child_population values (27,'Biharsharif (M Corp.)','City',43646,22758,20888)
insert into  Child_population values (29,'Arrah (M Corp.)','City',34419,18356,16063)
insert into  Child_population values (20,'Begusarai (M Corp.)','City',37966,20012,17954)
insert into  Child_population values (10,'Katihar UA','UA',32824,16983,15841)
insert into  Child_population values (24,'Munger (M Corp.)','City',29260,15323,13937)
insert into  Child_population values (17,'Chapra UA','UA',29133,15308,13825)
insert into  Child_population values (1,'Bettiah UA','UA',22067,11653,10414)
insert into  Child_population values (12,'Saharsa (NP)','City',24582,12814,11768)
insert into  Child_population values (32,'Sasaram (NP)','City',19363,10189,9174)
insert into  Child_population values (18,'Hajipur (NP)','City',20090,10694,9396)
insert into  Child_population values (32,'Dehri (NP)','City',18372,9570,8802)
insert into  Child_population values (16,'Siwan (NP)','City',17632,9440,8192)
insert into  Child_population values (2,'Motihari (NP)','City',16325,8891,7434)
insert into  Child_population values (35,'Nawada UA','UA',16475,8453,8022)
insert into  Child_population values (1,'Bagaha (NP)','City',19070,9802,9268)
insert into  Child_population values (30,'Buxar UA','UA',14938,7904,7034)
insert into  Child_population values (8,'Kishanganj (NP)','City',17017,8743,8274)
insert into  Child_population values (4,'Sitamarhi UA','UA',15032,8050,6982)
insert into  Child_population values (24,'Jamalpur (NP)','City',12298,6587,5711)
insert into  Child_population values (37,'Jehanabad (NP)','City',14516,7706,6810)
insert into  Child_population values (33,'Aurangabad (NP)','City',14292,7548,6744)
insert into  Child_population values (5,'Dimapur (MC)','City',14438,7345,7093)
insert into  Child_population values (99,'Imphal UA','UA',43917,22542,21375)
insert into  Child_population values (3,'Aizawl (NT)','City',35147,17667,17480)
insert into  Child_population values (1,'Agartala (M Cl)','City',33635,17341,16294)
insert into  Child_population values (6,'Shillong UA','UA',40494,20941,19553)
insert into  Child_population values (23,'Guwahati UA','UA',87366,43537,43829)
insert into  Child_population values (17,'Silchar UA','UA',21841,11212,10629)
insert into  Child_population values (11,'Dibrugarh UA','UA',13303,6829,6474)
insert into  Child_population values (13,'Jorhat UA','UA',13757,7076,6681)
insert into  Child_population values (6,'Nagaon UA','UA',15117,7555,7562)
insert into  Child_population values (10,'Tinsukia UA','UA',11890,6266,5624)
insert into  Child_population values (7,'Tezpur UA','UA',9497,4849,4648)
insert into  Child_population values (99,'Kolkata UA','UA',1063394,546373,517021)
insert into  Child_population values (9,'Asansol UA','UA',132560,69051,63509)
insert into  Child_population values (99,'Siliguri UA','UA',72252,37355,34897)
insert into  Child_population values (9,'Durgapur UA','UA',51930,26688,25242)
insert into  Child_population values (9,'Barddhaman UA','UA',25069,12900,12169)
insert into  Child_population values (6,'English Bazar UA','UA',44186,24262,19924)
insert into  Child_population values (7,'Baharampur UA','UA',23182,11877,11305)
insert into  Child_population values (11,'Habra UA','UA',23023,11864,11159)
insert into  Child_population values (18,'Kharagpur UA','UA',25130,12923,12207)
insert into  Child_population values (10,'Santipur UA','UA',24006,12303,11703)
insert into  Child_population values (12,'Dankuni UA','UA',22956,11827,11129)
insert into  Child_population values (7,'Dhulian UA','UA',45483,22981,22502)
insert into  Child_population values (10,'Ranaghat UA','UA',18575,9601,8974)
insert into  Child_population values (19,'Haldia (M)','City',21122,10799,10323)
insert into  Child_population values (4,'Raiganj UA','UA',22028,11335,10693)
insert into  Child_population values (10,'Krishnanagar UA','UA',13663,7095,6568)
insert into  Child_population values (10,'Nabadwip UA','UA',13049,6741,6308)
insert into  Child_population values (18,'Medinipur (M)','City',14365,7259,7106)
insert into  Child_population values (2,'Jalpaiguri UA','UA',14522,7441,7081)
insert into  Child_population values (5,'Balurghat UA','UA',10349,5257,5092)
insert into  Child_population values (11,'Basirhat UA','UA',12578,6495,6083)
insert into  Child_population values (13,'Bankura (M)','City',10760,5502,5258)
insert into  Child_population values (10,'Chakdaha UA','UA',9829,4978,4851)
insert into  Child_population values (1,'Darjiling UA','UA',7382,3862,3520)
insert into  Child_population values (2,'Alipurduar UA','UA',10545,5422,5123)
insert into  Child_population values (14,'Puruliya UA','UA',12116,6221,5895)
insert into  Child_population values (7,'Jangipur UA','UA',16299,8334,7965)
insert into  Child_population values (11,'Bongaon (M)','City',8452,4387,4065)
insert into  Child_population values (3,'Koch Bihar UA','UA',7910,4053,3857)
insert into  Child_population values (99,'Jamshedpur UA','UA',153872,81190,72682)
insert into  Child_population values (9,'Dhanbad UA','UA',151010,79216,71794)
insert into  Child_population values (19,'Ranchi UA','UA',128541,67682,60859)
insert into  Child_population values (10,'Bokaro Steel City UA','UA',67672,36058,31614)
insert into  Child_population values (5,'Deoghar (M Corp.)','City',25929,13907,12022)
insert into  Child_population values (10,'Phusro UA','UA',22125,11728,10397)
insert into  Child_population values (15,'Hazaribag UA','UA',17276,9108,8168)
insert into  Child_population values (4,'Giridih UA','UA',20658,10856,9802)
insert into  Child_population values (16,'Ramgarh UA','UA',17086,9082,8004)
insert into  Child_population values (13,'Medini Nagar UA','UA',13752,7199,6553)
insert into  Child_population values (9,'Chirkunda UA','UA',14742,7762,6980)
insert into  Child_population values (17,'Bhubaneswar UA','UA',79706,41875,37831)
insert into  Child_population values (12,'Cuttack UA','UA',53760,28089,25671)
insert into  Child_population values (5,'Raurkela UA','UA',56950,30088,26862)
insert into  Child_population values (19,'Brahmapur Town (M Corp.)','City',29509,15544,13965)
insert into  Child_population values (3,'Sambalpur UA','UA',27510,14560,12950)
insert into  Child_population values (18,'Puri Town (M)','City',17000,8939,8061)
insert into  Child_population values (8,'Baleshwar UA','UA',17911,9165,8746)
insert into  Child_population values (9,'Bhadrak UA','UA',14492,7449,7043)
insert into  Child_population values (7,'Baripada UA','UA',10688,5629,5059)
insert into  Child_population values (11,'Raipur UA','UA',142826,73940,68886)
insert into  Child_population values (10,'Durg-Bhilainagar UA','UA',116977,60601,56376)
insert into  Child_population values (7,'Bilaspur UA','UA',52550,27550,25000)
insert into  Child_population values (5,'Korba UA','UA',45529,23509,22020)
insert into  Child_population values (9,'Rajnandgaon (M Corp.)','City',18677,9610,9067)
insert into  Child_population values (4,'Raigarh UA','UA',18344,9610,8734)
insert into  Child_population values (15,'Jagdalpur (M Corp.)','City',13804,7192,6612)
insert into  Child_population values (2,'Ambikapur UA','UA',14172,7519,6653)
insert into  Child_population values (13,'Dhamtari UA','UA',11283,5780,5503)
insert into  Child_population values (22,'Indore UA','UA',254108,134644,119464)
insert into  Child_population values (27,'Bhopal UA','UA',217415,113516,103899)
insert into  Child_population values (34,'Jabalpur UA','UA',128679,67630,61049)
insert into  Child_population values (4,'Gwalior UA','UA',120347,65968,54379)
insert into  Child_population values (18,'Ujjain (M Corp.)','City',57630,30007,27623)
insert into  Child_population values (10,'Sagar UA','UA',43835,22723,21112)
insert into  Child_population values (20,'Dewas (M Corp.)','City',34435,18117,16318)
insert into  Child_population values (12,'Satna UA','UA',32066,17122,14944)
insert into  Child_population values (17,'Ratlam UA','UA',29397,15295,14102)
insert into  Child_population values (13,'Rewa (M Corp.)','City',24234,13131,11103)
insert into  Child_population values (33,'Murwara (Katni) (M Corp.)','City',25168,13299,11869)
insert into  Child_population values (46,'Singrauli (M Corp.)','City',29569,15438,14131)
insert into  Child_population values (50,'Burhanpur (M Corp.)','City',28107,14628,13479)
insert into  Child_population values (49,'Khandwa (M Corp.)','City',24079,12659,11420)
insert into  Child_population values (2,'Morena (M)','City',26454,14636,11818)
insert into  Child_population values (3,'Bhind (M)','City',24486,13319,11167)
insert into  Child_population values (38,'Chhindwara UA','UA',19227,9885,9342)
insert into  Child_population values (41,'Guna (M)','City',23757,12658,11099)
insert into  Child_population values (6,'Shivpuri (M)','City',22683,12075,10608)
insert into  Child_population values (26,'Vidisha (M)','City',19360,10122,9238)
insert into  Child_population values (8,'Chhattarpur UA','UA',18312,9874,8438)
insert into  Child_population values (11,'Damoh UA','UA',17519,9161,8358)
insert into  Child_population values (16,'Mandsaur (M)','City',15721,8282,7439)
insert into  Child_population values (23,'Khargone UA','UA',16662,8786,7876)
insert into  Child_population values (15,'Neemuch UA','UA',15008,7836,7172)
insert into  Child_population values (21,'Pithampur (M)','City',20438,10872,9566)
insert into  Child_population values (32,'Hoshangabad (M)','City',13012,6964,6048)
insert into  Child_population values (32,'Itarsi UA','UA',11832,6130,5702)
insert into  Child_population values (28,'Sehore UA','UA',12869,6745,6124)
insert into  Child_population values (30,'Betul (M)','City',11005,5772,5233)
insert into  Child_population values (39,'Seoni (M)','City',10413,5467,4946)
insert into  Child_population values (5,'Datia (M)','City',12218,6553,5665)
insert into  Child_population values (18,'Nagda (M)','City',11053,5840,5213)
insert into  Child_population values (99,'Ahmadabad UA','UA',675284,364965,310319)
insert into  Child_population values (25,'Surat UA','UA',545869,300970,244899)
insert into  Child_population values (19,'Vadodara UA','UA',172923,93146,79777)
insert into  Child_population values (9,'Rajkot UA','UA',145399,79486,65913)
insert into  Child_population values (14,'Bhavnagar UA','UA',63358,34463,28895)
insert into  Child_population values (10,'Jamnagar UA','UA',59173,31786,27387)
insert into  Child_population values (12,'Junagadh (M Corp.)','City',27375,14651,12724)
insert into  Child_population values (15,'Anand UA','UA',28745,15363,13382)
insert into  Child_population values (23,'Navsari UA','UA',29683,15924,13759)
insert into  Child_population values (8,'Wadhwan UA','UA',25725,13761,11964)
insert into  Child_population values (1,'Gandhidham (M)','City',31224,16352,14872)
insert into  Child_population values (9,'Morvi UA','UA',29493,15775,13718)
insert into  Child_population values (16,'Nadiad UA','UA',20825,11240,9585)
insert into  Child_population values (21,'Bharuch UA','UA',20544,10758,9786)
insert into  Child_population values (11,'Porbandar UA','UA',20760,11078,9682)
insert into  Child_population values (4,'Mahesana UA','UA',17956,10203,7753)
insert into  Child_population values (1,'Bhuj UA','UA',20715,10854,9861)
insert into  Child_population values (12,'Veraval UA','UA',21024,11031,9993)
insert into  Child_population values (24,'Valsad UA','UA',14190,7426,6764)
insert into  Child_population values (24,'Vapi (M)','City',19899,10618,9281)
insert into  Child_population values (17,'Godhra UA','UA',19489,10193,9296)
insert into  Child_population values (21,'Anklesvar UA','UA',15168,8137,7031)
insert into  Child_population values (2,'Palanpur UA','UA',15698,8538,7160)
insert into  Child_population values (3,'Patan UA','UA',13089,7053,6036)
insert into  Child_population values (14,'Botad (M)','City',16654,8889,7765)
insert into  Child_population values (18,'Dohad UA','UA',17457,9135,8322)
insert into  Child_population values (9,'Jetpur Navagadh (M)','City',12295,6684,5611)
insert into  Child_population values (13,'Amreli UA','UA',11042,6003,5039)
insert into  Child_population values (9,'Gondal (M)','City',11591,6358,5233)
insert into  Child_population values (2,'Deesa (M)','City',14192,7790,6402)
insert into  Child_population values (99,'Greater Mumbai UA','UA',1743997,917855,826142)
insert into  Child_population values (25,'Pune UA','UA',561004,297943,263061)
insert into  Child_population values (9,'Nagpur UA','UA',248678,129522,119156)
insert into  Child_population values (20,'Nashik UA','UA',177966,95924,82042)
insert into  Child_population values (21,'Vasai Virar City (M Corp.)','City',137343,71716,65627)
insert into  Child_population values (19,'Aurangabad UA','UA',154067,82867,71200)
insert into  Child_population values (30,'Solapur (M Corp.)','City',104466,54728,49738)
insert into  Child_population values (21,'Bhiwandi UA','UA',91796,47483,44313)
insert into  Child_population values (7,'Amravati (M Corp.)','City',62497,32713,29784)
insert into  Child_population values (20,'Malegaon UA','UA',90654,46822,43832)
insert into  Child_population values (34,'Kolhapur UA','UA',51157,27912,23245)
insert into  Child_population values (15,'Nanded Waghala (M Corp.)','City',68181,36417,31764)
insert into  Child_population values (35,'Sangali UA','UA',52775,28179,24596)
insert into  Child_population values (3,'Jalgaon (M Corp.)','City',51544,28548,22996)
insert into  Child_population values (5,'Akola (M Corp.)','City',46500,24488,22012)
insert into  Child_population values (28,'Latur (M Cl)','City',45822,24773,21049)
insert into  Child_population values (26,'Ahmadnagar UA','UA',39836,21434,18402)
insert into  Child_population values (2,'Dhule (M Corp.)','City',43677,23246,20431)
insert into  Child_population values (34,'Ichalkaranji UA','UA',37105,19642,17463)
insert into  Child_population values (13,'Chandrapur (M Cl)','City',30353,15921,14432)
insert into  Child_population values (17,'Parbhani (M Cl)','City',40075,21187,18888)
insert into  Child_population values (18,'Jalna (M Cl)','City',37695,19982,17713)
insert into  Child_population values (3,'Bhusawal UA','UA',21272,11499,9773)
insert into  Child_population values (24,'Navi Mumbai Panvel Raigad (CT)','CT',25679,13633,12046)
insert into  Child_population values (24,'Panvel (M Cl)','City',17512,9213,8299)
insert into  Child_population values (31,'Satara UA','UA',14390,7610,6780)
insert into  Child_population values (27,'Bid (M Cl)','City',19580,10626,8954)
insert into  Child_population values (14,'Yavatmal UA','UA',12968,6902,6066)
insert into  Child_population values (9,'Kamptee UA','UA',14846,7625,7221)
insert into  Child_population values (11,'Gondiya (M Cl)','City',12835,6652,6183)
insert into  Child_population values (30,'Barshi (M Cl)','City',13029,7060,5969)
insert into  Child_population values (7,'Achalpur (M Cl)','City',11810,6186,5624)
insert into  Child_population values (29,'Osmanabad (M Cl)','City',13346,7184,6162)
insert into  Child_population values (1,'Nandurbar (M Cl)','City',12621,6868,5753)
insert into  Child_population values (8,'Wardha (M Cl)','City',9754,5139,4615)
insert into  Child_population values (28,'Udgir (M Cl)','City',13075,6933,6142)
insert into  Child_population values (8,'Hinganghat (M Cl)','City',9681,5175,4506)
insert into  Child_population values (99,'Hyderabad UA ','UA',831435,427973,403462)
insert into  Child_population values (13,'GVMC (MC)','City',158924,81119,77805)
insert into  Child_population values (99,'Vijayawada UA ','UA',133396,68180,65216)
insert into  Child_population values (9,'Warangal UA','UA',67732,34812,32920)
insert into  Child_population values (17,'Guntur UA','UA',61560,31396,30164)
insert into  Child_population values (19,'Nellore UA','UA',48393,24802,23591)
insert into  Child_population values (14,'Rajahmundry UA','UA',42968,21709,21259)
insert into  Child_population values (21,'Kurnool UA','UA',50240,25977,24263)
insert into  Child_population values (23,'Tirupati UA','UA',41589,21645,19944)
insert into  Child_population values (14,'Kakinada UA','UA',39464,19972,19492)
insert into  Child_population values (20,'Kadapa UA','UA',36543,19001,17542)
insert into  Child_population values (22,'Anantapur UA','UA',32199,16967,15232)
insert into  Child_population values (2,'Nizamabad (M Corp.)','City',34256,17408,16848)
insert into  Child_population values (3,'Karimnagar UA','UA',28954,14879,14075)
insert into  Child_population values (10,'Khammam UA','UA',24419,12655,11764)
insert into  Child_population values (3,'Ramagundam UA','UA',18643,9789,8854)
insert into  Child_population values (15,'Eluru UA','UA',21318,10670,10648)
insert into  Child_population values (12,'Vizianagaram UA','UA',21665,11089,10576)
insert into  Child_population values (20,'Proddatur UA','UA',21616,11106,10510)
insert into  Child_population values (21,'Nandyal UA','UA',21534,11245,10289)
insert into  Child_population values (7,'Mahbubnagar UA','UA',22299,11538,10761)
insert into  Child_population values (18,'Ongole UA','UA',19126,9903,9223)
insert into  Child_population values (21,'Adoni UA','UA',20517,10455,10062)
insert into  Child_population values (23,'Madanapalle UA','UA',18062,9312,8750)
insert into  Child_population values (23,'Chittoor UA','UA',15758,8288,7470)
insert into  Child_population values (16,'Machilipatnam (M)','City',13778,7076,6702)
insert into  Child_population values (17,'Tenali (M)','City',13040,6630,6410)
insert into  Child_population values (1,'Mancherial UA','UA',13150,6890,6260)
insert into  Child_population values (18,'Chirala UA','UA',14744,7512,7232)
insert into  Child_population values (8,'Nalgonda UA','UA',15487,7922,7565)
insert into  Child_population values (22,'Hindupur (M)','City',16309,8263,8046)
insert into  Child_population values (15,'Bhimavaram UA','UA',12520,6327,6193)
insert into  Child_population values (11,'Srikakulam UA','UA',12741,6599,6142)
insert into  Child_population values (1,'Adilabad UA','UA',15390,7918,7472)
insert into  Child_population values (22,'Guntakal (M)','City',12614,6495,6119)
insert into  Child_population values (22,'Dharmavaram (M)','City',11963,6441,5522)
insert into  Child_population values (10,'Kothagudem UA','UA',10128,5160,4968)
insert into  Child_population values (16,'Gudivada (M)','City',9952,5081,4871)
insert into  Child_population values (17,'Narasaraopet UA','UA',10519,5420,5099)
insert into  Child_population values (4,'Siddipet UA','UA',11396,5867,5529)
insert into  Child_population values (22,'Tadpatri (M)','City',11325,5813,5512)
insert into  Child_population values (8,'Suryapet UA','UA',9511,4895,4616)
insert into  Child_population values (8,'Miryalaguda UA','UA',10572,5432,5140)
insert into  Child_population values (3,'Jagtial UA','UA',10068,5131,4937)
insert into  Child_population values (15,'Tadepalligudem UA','UA',9061,4667,4394)
insert into  Child_population values (17,'Chilakaluripet (M)','City',9525,4916,4609)
insert into  Child_population values (18,'BANGALORE UA','UA',870743,448965,421778)
insert into  Child_population values (23,'Mysore UA','UA',86527,44527,42000)
insert into  Child_population values (8,'Hubli-Dharwad *(M Corp.)','City',99989,51293,48696)
insert into  Child_population values (21,'Mangalore UA','UA',55396,28640,26756)
insert into  Child_population values (1,'Belgaum UA','UA',63519,32909,30610)
insert into  Child_population values (25,'Gulbarga UA','UA',70184,36614,33570)
insert into  Child_population values (13,'Davanagere (M Corp.)','City',44545,22888,21657)
insert into  Child_population values (11,'Bellary (M Corp.)','City',49587,25337,24250)
insert into  Child_population values (3,'Bijapur (CMC)','City',39134,20482,18652)
insert into  Child_population values (14,'Shimoga (CMC)','City',31626,16130,15496)
insert into  Child_population values (17,'Tumkur (CMC)','City',29655,15233,14422)
insert into  Child_population values (5,'Raichur (CMC)','City',27924,14286,13638)
insert into  Child_population values (4,'Bidar UA','UA',25275,13189,12086)
insert into  Child_population values (11,'Hospet (CMC)','City',26478,13508,12970)
insert into  Child_population values (20,'Hassan UA','UA',16283,8388,7895)
insert into  Child_population values (7,'Gadag-Betigeri (CMC)','City',18419,9519,8900)
insert into  Child_population values (27,'Robertson Pet UA','UA',14966,7480,7486)
insert into  Child_population values (15,'Udupi UA','UA',13408,6944,6464)
insert into  Child_population values (14,'Bhadravati (CMC)','City',14000,7087,6913)
insert into  Child_population values (12,'Chitradurga UA','UA',14843,7623,7220)
insert into  Child_population values (27,'Kolar (CMC)','City',15993,8055,7938)
insert into  Child_population values (19,'Mandya (CMC)','City',13269,6826,6443)
insert into  Child_population values (16,'Chikmagalur (CMC)','City',10931,5599,5332)
insert into  Child_population values (6,'Gangawati UA','UA',14251,7281,6970)
insert into  Child_population values (2,'Bagalkot (CMC)','City',12399,6476,5923)
insert into  Child_population values (10,'Ranibennur (CMC)','City',11572,5982,5590)
insert into  Child_population values (1,'Panaji UA','UA',10996,6057,4939)
insert into  Child_population values (2,'Margao UA','UA',10393,5327,5066)
insert into  Child_population values (2,'Mormugao UA','UA',10293,5507,4786)
insert into  Child_population values (8,'Kochi UA','UA',189586,96960,92626)
insert into  Child_population values (4,'Kozhikode UA','UA',208665,106289,102376)
insert into  Child_population values (7,'Thrissur UA','UA',170591,87747,82844)
insert into  Child_population values (5,'Malappuram UA','UA',230527,117782,112745)
insert into  Child_population values (14,'Thiruvananthapuram UA','UA',142242,72164,70078)
insert into  Child_population values (2,'Kannur UA','UA',172924,87985,84939)
insert into  Child_population values (13,'Kollam UA','UA',101361,51856,49505)
insert into  Child_population values (11,'Cherthala UA','UA',39179,20156,19023)
insert into  Child_population values (11,'Kayamkulam UA','UA',35039,18022,17017)
insert into  Child_population values (10,'Kottayam UA','UA',28707,14612,14095)
insert into  Child_population values (6,'Palakkad UA','UA',26773,13707,13066)
insert into  Child_population values (11,'Alappuzha UA','UA',21638,11162,10476)
insert into  Child_population values (6,'Ottappalam UA','UA',25631,13060,12571)
insert into  Child_population values (1,'Kanhangad UA','UA',25483,12980,12503)
insert into  Child_population values (1,'Kasaragod UA','UA',24584,12621,11963)
insert into  Child_population values (10,'Changanassery UA','UA',11118,5700,5418)
insert into  Child_population values (7,'Chalakudy UA','UA',10176,5225,4951)
insert into  Child_population values (8,'Kothamangalam UA','UA',11255,5834,5421)
insert into  Child_population values (99,'Chennai UA','UA',816862,416238,400624)
insert into  Child_population values (31,'Coimbatore UA','UA',193497,98499,94998)
insert into  Child_population values (22,'Madurai UA','UA',132904,68026,64878)
insert into  Child_population values (13,'Tiruchirappalli UA','UA',89176,45321,43855)
insert into  Child_population values (32,'Tiruppur UA','UA',101797,52005,49792)
insert into  Child_population values (7,'Salem UA','UA',82073,42024,40049)
insert into  Child_population values (9,'Erode UA','UA',47029,24002,23027)
insert into  Child_population values (27,'Tirunelveli UA','UA',46335,23677,22658)
insert into  Child_population values (4,'Vellore UA','UA',45049,22889,22160)
insert into  Child_population values (26,'Thoothukkudi UA','UA',42756,21596,21160)
insert into  Child_population values (11,'Dindigul UA','UA',26169,13327,12842)
insert into  Child_population values (19,'Thanjavur UA','UA',24760,12778,11982)
insert into  Child_population values (4,'Ranipet UA','UA',26109,13406,12703)
insert into  Child_population values (24,'Sivakasi UA','UA',23183,11760,11423)
insert into  Child_population values (12,'Karur UA','UA',21175,11002,10173)
insert into  Child_population values (10,'Udhagamandalam UA','UA',18643,9333,9310)
insert into  Child_population values (30,'Hosur UA','UA',27724,14147,13577)
insert into  Child_population values (28,'Nagercoil (M)','City',19034,9599,9435)
insert into  Child_population values (3,'Kancheepuram UA','UA',19835,10022,9813)
insert into  Child_population values (8,'Kumarapalayam UA','UA',16613,8465,8148)
insert into  Child_population values (21,'Karaikkudi UA','UA',16830,8582,8248)
insert into  Child_population values (16,'Neyveli UA','UA',13657,7201,6456)
insert into  Child_population values (16,'Cuddalore (M)','City',15940,8153,7787)
insert into  Child_population values (19,'Kumbakonam UA','UA',14552,7309,7243)
insert into  Child_population values (5,'Tiruvannamalai (M)','City',14530,7413,7117)
insert into  Child_population values (31,'Pollachi UA','UA',11031,5683,5348)
insert into  Child_population values (24,'Rajapalayam (M)','City',10504,5371,5133)
insert into  Child_population values (4,'Gudiyatham UA','UA',11876,6014,5862)
insert into  Child_population values (20,'Pudukkottai (M)','City',10853,5566,5287)
insert into  Child_population values (4,'Vaniyambadi UA','UA',13898,7139,6759)
insert into  Child_population values (4,'Ambur (M)','City',12150,6216,5934)
insert into  Child_population values (17,'Nagapattinam (M)','City',11308,5858,5450)
insert into  Child_population values (2,'Puducherry UA','UA',63879,32359,31520)
insert into  Child_population values (3,'Port Blair (MC)','City',9358,4852,4506)

	MERGE INTO CHILD_SEX_RATION MD
		USING (
		  SELECT    DISTRICT_CODE, 
		  SUM( CONVERT(INT, CONVERT(DECIMAL,FEMALE)/CONVERT(DECIMAL,MALE)*1000))  AS SEXRATIO
			FROM CHILD_POPULATION GROUP BY DISTRICT_CODE
			) RD
		ON MD.DISTRICT_CODE = RD.DISTRICT_CODE
		WHEN NOT MATCHED BY TARGET THEN
		INSERT VALUES (RD.DISTRICT_CODE,RD.SEXRATIO)
		WHEN MATCHED THEN
		UPDATE SET MD.SexRatio = RD.SEXRATIO;
		
			
--2
		
		  select min(len(District_Code)) as District_Code_min, max(len(District_Code)) as District_Code_max,
	  min(len(Name_UA_City)) as Name_UA_City_min, max(len(Name_UA_City)) as Name_UA_City_max,
	  min(len(Level)) as Level_min, max(len(Level)) as Level_max,
		min(len(Person)) as Person_min, max(len(Person)) as Person_max,
		 min(len(Male)) as Male_min, max(len(Male)) as Male_max,
		  min(len(Female)) as Female_min, max(len(Female)) as Female_max

	 from CHILD_POPULATION
	 
	 
	 --or
	 
	 
	 DECLARE @sql VARCHAR(MAX)
	DECLARE @q CHAR(1)
	DECLARE @ColumnName sysname
	 -- single quote
	DECLARE @qq CHAR(2)
	DECLARE @stmtNum VARCHAR(MAX)
	DECLARE @TableName sysname
	 
	DECLARE @Schema sysname
	 
	DECLARE @Results TABLE
		(
			[Schema] sysname ,
			[Table Name] sysname ,
		   [Column Name] sysname ,
		  [Min Len/Val] VARCHAR(50) ,
		  [Max Len/Val] VARCHAR(50) 
		  
		)
	SET @q = ''''
	SET @qq = @q + @q

	SET @stmtNum =  ' len(min([@@replace])) AS [Min @@replace], ' + 'len(max([@@replace])) AS [Max @@replace] '

	DECLARE TableCursor CURSOR
	FOR
		SELECT 
				 c.TABLE_SCHEMA ,
				
				c.TABLE_NAME ,
				  
				c.COLUMN_NAME 
				
		FROM    INFORMATION_SCHEMA.COLUMNS c
				INNER JOIN INFORMATION_SCHEMA.TABLES t ON t.TABLE_SCHEMA = c.TABLE_SCHEMA
														  AND t.TABLE_NAME = c.TABLE_NAME
		WHERE   c.TABLE_SCHEMA IN ( 'dbo' )  --------------------------------
				AND c.TABLE_NAME LIKE 'CHILD_POPULATION%'  -- <<< Schema, table and view names to analyze go here
				AND t.TABLE_TYPE NOT IN ( 'VIEW' ) --------------------------------
		ORDER BY c.TABLE_NAME ,
				c.ORDINAL_POSITION

	OPEN TableCursor

	FETCH NEXT
	FROM TableCursor
	INTO   @Schema,   @TableName, @ColumnName 

	WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @sql =  @stmtNum

	SET @sql = REPLACE(@sql, '@@replace' , @ColumnName)

	PRINT @sql

			IF @sql <> ''
				BEGIN
					 
					SET @Schema = @q + @Schema + @q
					 
					SET @TableName = @q + @TableName + @q
					 SET @ColumnName = @q + REPLACE(@ColumnName, @q, @qq) + @q
					SET @sql = 'SELECT '   + @Schema + ', ' + @TableName + ', ' + @ColumnName +  ', ' + @sql + ' FROM [' + REPLACE(@Schema, '''', '') + '].['
						+ REPLACE(@TableName, '''', '') + ']'

					PRINT @sql

					INSERT  INTO @Results EXECUTE ( @sql )
				END

			FETCH NEXT
	  FROM TableCursor
	  INTO @Schema,  @TableName,  @ColumnName 
		END

		CLOSE TableCursor

	DEALLOCATE TableCursor



	SELECT  [Schema] ,[Table Name] , [Column Name] , [Min Len/Val] MINLENGTH  , [Max Len/Val] MAXLENGTH 
			 
	FROM    @Results ORDER BY [Table Name] ,[Column Name]
	 
	 
	 --3
	 
	 --effective date approach to find the diffrence between table
	 
	 
	DECLARE @CurrentDateTime datetime
	DECLARE @MinDateTime datetime
	DECLARE @MaxDateTime datetime
	SELECT
	@CurrentDateTime = cast(getdate() as date),
	@MinDateTime = cast('1900-01-01' as date),
	@MaxDateTime = cast('9999-12-31' as date)
	
	 SELECT 
	CustomerID,
	CompanyName,
	ContactName,
	ContactTitle,
	Address,
	City,
	Region,
	PostalCode,
	Country,
	Phone,
	Fax,
	version,
	startDate,
	endDate,
	Flag
FROM
	( MERGE [Customer_SCD2]  CM
		USING  SRC_Customer CS
	ON (CM.CustomerID = CS.CustomerID )
	WHEN NOT MATCHED THEN
		INSERT VALUES (
	CS.CustomerID,
	CS.CompanyName,
	CS.ContactName,
	CS.ContactTitle,
	CS.Address,
	CS.City,
	CS.Region,
	CS.PostalCode,
	CS.Country,
	CS.Phone,
	CS.Fax,
	 1,
	@MinDatetime,
	 @MaxDateTime, 1)
	 
	WHEN MATCHED AND
	([EndDate] = @MaxDateTime OR ([EndDate] IS NULL AND @MaxDateTime IS NULL))
	AND
	 CM.Flag = 1 AND (CM.PostalCode <> CS.PostalCode ) THEN
		 UPDATE SET CM.Flag =0, CM.Enddate = @CurrentDateTime
 
	OUTPUT $Action Action_Out, 
			CS.CustomerID,
	CS.CompanyName,
	CS.ContactName,
	CS.ContactTitle,
	CS.Address,
	CS.City,
	CS.Region,
	CS.PostalCode,
	CS.Country,
	CS.Phone,
	CS.Fax,
	INSERTED.VERSION+1 AS VERSION,
	@CurrentDateTime as startDate, 
			@MaxDateTime EndDate, 
			1 Flag) 
			
AS MERGE_OUT
WHERE MERGE_OUT.Action_Out = 'UPDATE';
	 
	 
	 
	 --4
	 
CREATE TABLE [dbo].[TBL_district_code](
[State_Code] int,
[District_Code] [varchar](3) NULL,
[Name_UA_City] [varchar](50) NULL,
[Level] [varchar](50) NULL

)  


create table C_Child_population
(
id int  identity  not null,
District_Code char(2),
Name_UA_City varchar(30),
Level varchar(4),
Person int,
Male int,
Female int
)

INSERT INTO [TBL_district_code] VALUES(01,99,'Srinagar UA','UA')
INSERT INTO [TBL_district_code] VALUES(01,21,'Jammu UA','UA')
INSERT INTO [TBL_district_code] VALUES(01,99,'Anantnag UA','UA')
INSERT INTO [TBL_district_code] VALUES(02,11,'Shimla UA','UA')
INSERT INTO [TBL_district_code] VALUES(03,7,'Ludhiana (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(03,15,'Amritsar UA','UA')
INSERT INTO [TBL_district_code] VALUES(03,3,'Jalandhar UA','UA')
INSERT INTO [TBL_district_code] VALUES(03,14,'Patiala UA','UA')
INSERT INTO [TBL_district_code] VALUES(03,12,'Bathinda (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(03,18,'S.A.S. Nagar UA','UA')
INSERT INTO [TBL_district_code] VALUES(03,4,'Hoshiarpur (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(03,1,'Pathankot UA','UA')
INSERT INTO [TBL_district_code] VALUES(03,8,'Moga UA','UA')
INSERT INTO [TBL_district_code] VALUES(03,1,'Batala UA','UA')
INSERT INTO [TBL_district_code] VALUES(03,9,'Abohar (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(03,19,'Malerkotla (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(03,7,'Khanna (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(03,2,'Phagwara UA','UA')
INSERT INTO [TBL_district_code] VALUES(03,10,'Muktsar (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(03,20,'Barnala (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(03,9,'Firozpur (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(03,2,'Kapurthala (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(04,01,'Chandigarh UA','UA')
INSERT INTO [TBL_district_code] VALUES(05,05,'Dehradun UA','UA')
INSERT INTO [TBL_district_code] VALUES(05,13,'Hardwar UA','UA')
INSERT INTO [TBL_district_code] VALUES(05,13,'Roorkee UA','UA')
INSERT INTO [TBL_district_code] VALUES(05,11,'Haldwani-cum-Kathgodam UA','UA')
INSERT INTO [TBL_district_code] VALUES(05,12,'Rudrapur UA','UA')
INSERT INTO [TBL_district_code] VALUES(05,12,'Kashipur (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(05,05,'Rishikesh UA','UA')
INSERT INTO [TBL_district_code] VALUES(06,20,'Faridabad (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(06,18,'Gurgaon UA','UA')
INSERT INTO [TBL_district_code] VALUES(06,07,'Panipat UA','UA')
INSERT INTO [TBL_district_code] VALUES(06,03,'Yamunanagar UA','UA')
INSERT INTO [TBL_district_code] VALUES(06,14,'Rohtak (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(06,12,'Hisar UA','UA')
INSERT INTO [TBL_district_code] VALUES(06,06,'Karnal UA','UA')
INSERT INTO [TBL_district_code] VALUES(06,08,'Sonipat UA','UA')
INSERT INTO [TBL_district_code] VALUES(06,01,'Panchkula (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(06,02,'Ambala UA','UA')
INSERT INTO [TBL_district_code] VALUES(06,13,'Bhiwani (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(06,02,'Ambala (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(06,11,'Sirsa (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(06,15,'Bahadurgarh (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(06,09,'Jind (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(06,04,'Thanesar (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(06,05,'Kaithal (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(06,17,'Rewari (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(06,21,'Palwal UA','UA')
INSERT INTO [TBL_district_code] VALUES(07,99,'Delhi UA','UA')
INSERT INTO [TBL_district_code] VALUES(08,12,'Jaipur (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(08,15,'Jodhpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(08,29,'Kota (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(08,03,'Bikaner (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(08,21,'Ajmer UA','UA')
INSERT INTO [TBL_district_code] VALUES(08,32,'Udaipur UA','UA')
INSERT INTO [TBL_district_code] VALUES(08,24,'Bhilwara (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(08,06,'Alwar UA','UA')
INSERT INTO [TBL_district_code] VALUES(08,07,'Bharatpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(08,01,'Ganganagar UA','UA')
INSERT INTO [TBL_district_code] VALUES(08,13,'Sikar UA','UA')
INSERT INTO [TBL_district_code] VALUES(08,20,'Pali (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(08,22,'Tonk (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(08,21,'Kishangarh (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(08,21,'Beawar UA','UA')
INSERT INTO [TBL_district_code] VALUES(08,02,'Total Hanumangarh (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(08,08,'Dhaulpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(08,10,'Gangapur City UA','UA')
INSERT INTO [TBL_district_code] VALUES(08,10,'Sawai Madhopur (M)','City')
INSERT INTO [TBL_district_code] VALUES(08,04,'Churu UA','UA')
INSERT INTO [TBL_district_code] VALUES(08,05,'Jhunjhunun (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(08,30,'Baran (M)','City')
INSERT INTO [TBL_district_code] VALUES(08,28,'Chittaurgarh (M)','City')
INSERT INTO [TBL_district_code] VALUES(08,14,'Makrana UA','UA')
INSERT INTO [TBL_district_code] VALUES(08,14,'Nagaur UA','UA')
INSERT INTO [TBL_district_code] VALUES(08,09,'Hindaun (M)','City')
INSERT INTO [TBL_district_code] VALUES(08,06,'Bhiwadi (M)','City')
INSERT INTO [TBL_district_code] VALUES(08,23,'Bundi UA','UA')
INSERT INTO [TBL_district_code] VALUES(08,04,'Sujangarh (M)','City')
INSERT INTO [TBL_district_code] VALUES(08,27,'Banswara UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,33,'Kanpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,26,'Lucknow UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,09,'Ghaziabad UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,15,'Agra UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,66,'Varanasi UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,07,'Meerut UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,44,'Allahabad UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,19,'Bareilly UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,12,'Aligarh UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,04,'Moradabad (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(09,01,'Saharanpur (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(09,57,'Gorakhpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,10,'Noida (CT)','CT')
INSERT INTO [TBL_district_code] VALUES(09,16,'Firozabad (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,35,'Jhansi UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,02,'Muzaffarnagar UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,14,'Mathura UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,05,'Rampur UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,21,'Shahjahanpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,28,'Farrukhabad-cum-Fatehgarh UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,61,'Maunath Bhanjan (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,09,'Hapur (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,46,'Faizabad UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,30,'Etawah (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,68,'Mirzapur-cum-Vindhyachal UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,11,'Bulandshahr UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,04,'Sambhal (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,06,'Amroha (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,24,'Hardoi UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,41,'Fatehpur (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,27,'Rae Bareli (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,34,'Orai UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,23,'Sitapur UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,49,'Bahraich (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,09,'Modinagar UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,25,'Unnao (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,63,'Jaunpur (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,22,'Lakhimpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,13,'Hathras UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,39,'Banda UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,20,'Pilibhit UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,18,'Budaun (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,65,'Mughalsarai UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,45,'Barabanki UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,11,'Khurja UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,52,'Gonda UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,17,'Mainpuri UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,36,'Lalitpur (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,70,'Etah UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,59,'Deoria (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,64,'Ghazipur UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,48,'Sultanpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,60,'Azamgarh UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,03,'Bijnor UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,54,'Basti (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,04,'Chandausi (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,47,'Akbarpur (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,62,'Ballia UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,60,'Mubarakpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(09,10,'Greater Noida (CT)','CT')
INSERT INTO [TBL_district_code] VALUES(09,16,'Shikohabad (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,02,'Shamli (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,08,'Baraut (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(09,71,'Kasganj (NPP)','City')
INSERT INTO [TBL_district_code] VALUES(10,28,'Patna UA','UA')
INSERT INTO [TBL_district_code] VALUES(10,34,'Gaya UA','UA')
INSERT INTO [TBL_district_code] VALUES(10,22,'Bhagalpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(10,14,'Muzaffarpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(10,09,'Purnia UA','UA')
INSERT INTO [TBL_district_code] VALUES(10,13,'Darbhanga UA','UA')
INSERT INTO [TBL_district_code] VALUES(10,27,'Biharsharif (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(10,29,'Arrah (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(10,20,'Begusarai (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(10,10,'Katihar UA','UA')
INSERT INTO [TBL_district_code] VALUES(10,24,'Munger (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(10,17,'Chapra UA','UA')
INSERT INTO [TBL_district_code] VALUES(10,01,'Bettiah UA','UA')
INSERT INTO [TBL_district_code] VALUES(10,12,'Saharsa (NP)','City')
INSERT INTO [TBL_district_code] VALUES(10,32,'Sasaram (NP)','City')
INSERT INTO [TBL_district_code] VALUES(10,18,'Hajipur (NP)','City')
INSERT INTO [TBL_district_code] VALUES(10,32,'Dehri (NP)','City')
INSERT INTO [TBL_district_code] VALUES(10,16,'Siwan (NP)','City')
INSERT INTO [TBL_district_code] VALUES(10,02,'Motihari (NP)','City')
INSERT INTO [TBL_district_code] VALUES(10,35,'Nawada UA','UA')
INSERT INTO [TBL_district_code] VALUES(10,01,'Bagaha (NP)','City')
INSERT INTO [TBL_district_code] VALUES(10,30,'Buxar UA','UA')
INSERT INTO [TBL_district_code] VALUES(10,08,'Kishanganj (NP)','City')
INSERT INTO [TBL_district_code] VALUES(10,04,'Sitamarhi UA','UA')
INSERT INTO [TBL_district_code] VALUES(10,24,'Jamalpur (NP)','City')
INSERT INTO [TBL_district_code] VALUES(10,37,'Jehanabad (NP)','City')
INSERT INTO [TBL_district_code] VALUES(10,33,'Aurangabad (NP)','City')
INSERT INTO [TBL_district_code] VALUES(13,05,'Dimapur (MC)','City')
INSERT INTO [TBL_district_code] VALUES(14,99,'Imphal UA','UA')
INSERT INTO [TBL_district_code] VALUES(15,03,'Aizawl (NT)','City')
INSERT INTO [TBL_district_code] VALUES(16,01,'Agartala (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(17,06,'Shillong UA','UA')
INSERT INTO [TBL_district_code] VALUES(18,23,'Guwahati UA','UA')
INSERT INTO [TBL_district_code] VALUES(18,17,'Silchar UA','UA')
INSERT INTO [TBL_district_code] VALUES(18,11,'Dibrugarh UA','UA')
INSERT INTO [TBL_district_code] VALUES(18,13,'Jorhat UA','UA')
INSERT INTO [TBL_district_code] VALUES(18,06,'Nagaon UA','UA')
INSERT INTO [TBL_district_code] VALUES(18,10,'Tinsukia UA','UA')
INSERT INTO [TBL_district_code] VALUES(18,07,'Tezpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,99,'Kolkata UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,09,'Asansol UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,99,'Siliguri UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,09,'Durgapur UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,09,'Barddhaman UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,06,'English Bazar UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,07,'Baharampur UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,11,'Habra UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,18,'Kharagpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,10,'Santipur UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,12,'Dankuni UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,07,'Dhulian UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,10,'Ranaghat UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,19,'Haldia (M)','City')
INSERT INTO [TBL_district_code] VALUES(19,04,'Raiganj UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,10,'Krishnanagar UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,10,'Nabadwip UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,18,'Medinipur (M)','City')
INSERT INTO [TBL_district_code] VALUES(19,02,'Jalpaiguri UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,05,'Balurghat UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,11,'Basirhat UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,13,'Bankura (M)','City')
INSERT INTO [TBL_district_code] VALUES(19,10,'Chakdaha UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,01,'Darjiling UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,02,'Alipurduar UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,14,'Puruliya UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,07,'Jangipur UA','UA')
INSERT INTO [TBL_district_code] VALUES(19,11,'Bongaon (M)','City')
INSERT INTO [TBL_district_code] VALUES(19,03,'Koch Bihar UA','UA')
INSERT INTO [TBL_district_code] VALUES(20,99,'Jamshedpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(20,09,'Dhanbad UA','UA')
INSERT INTO [TBL_district_code] VALUES(20,19,'Ranchi UA','UA')
INSERT INTO [TBL_district_code] VALUES(20,10,'Bokaro Steel City UA','UA')
INSERT INTO [TBL_district_code] VALUES(20,05,'Deoghar (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(20,10,'Phusro UA','UA')
INSERT INTO [TBL_district_code] VALUES(20,15,'Hazaribag UA','UA')
INSERT INTO [TBL_district_code] VALUES(20,04,'Giridih UA','UA')
INSERT INTO [TBL_district_code] VALUES(20,16,'Ramgarh UA','UA')
INSERT INTO [TBL_district_code] VALUES(20,13,'Medini Nagar UA','UA')
INSERT INTO [TBL_district_code] VALUES(20,09,'Chirkunda UA','UA')
INSERT INTO [TBL_district_code] VALUES(21,17,'Bhubaneswar UA','UA')
INSERT INTO [TBL_district_code] VALUES(21,12,'Cuttack UA','UA')
INSERT INTO [TBL_district_code] VALUES(21,05,'Raurkela UA','UA')
INSERT INTO [TBL_district_code] VALUES(21,19,'Brahmapur Town (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(21,03,'Sambalpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(21,18,'Puri Town (M)','City')
INSERT INTO [TBL_district_code] VALUES(21,08,'Baleshwar UA','UA')
INSERT INTO [TBL_district_code] VALUES(21,09,'Bhadrak UA','UA')
INSERT INTO [TBL_district_code] VALUES(21,07,'Baripada UA','UA')
INSERT INTO [TBL_district_code] VALUES(22,11,'Raipur UA','UA')
INSERT INTO [TBL_district_code] VALUES(22,10,'Durg-Bhilainagar UA','UA')
INSERT INTO [TBL_district_code] VALUES(22,07,'Bilaspur UA','UA')
INSERT INTO [TBL_district_code] VALUES(22,05,'Korba UA','UA')
INSERT INTO [TBL_district_code] VALUES(22,09,'Rajnandgaon (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(22,04,'Raigarh UA','UA')
INSERT INTO [TBL_district_code] VALUES(22,15,'Jagdalpur (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(22,02,'Ambikapur UA','UA')
INSERT INTO [TBL_district_code] VALUES(22,13,'Dhamtari UA','UA')
INSERT INTO [TBL_district_code] VALUES(23,22,'Indore UA','UA')
INSERT INTO [TBL_district_code] VALUES(23,27,'Bhopal UA','UA')
INSERT INTO [TBL_district_code] VALUES(23,34,'Jabalpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(23,04,'Gwalior UA','UA')
INSERT INTO [TBL_district_code] VALUES(23,18,'Ujjain (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(23,10,'Sagar UA','UA')
INSERT INTO [TBL_district_code] VALUES(23,20,'Dewas (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(23,12,'Satna UA','UA')
INSERT INTO [TBL_district_code] VALUES(23,17,'Ratlam UA','UA')
INSERT INTO [TBL_district_code] VALUES(23,13,'Rewa (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(23,33,'Murwara (Katni) (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(23,46,'Singrauli (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(23,50,'Burhanpur (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(23,49,'Khandwa (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(23,02,'Morena (M)','City')
INSERT INTO [TBL_district_code] VALUES(23,03,'Bhind (M)','City')
INSERT INTO [TBL_district_code] VALUES(23,38,'Chhindwara UA','UA')
INSERT INTO [TBL_district_code] VALUES(23,41,'Guna (M)','City')
INSERT INTO [TBL_district_code] VALUES(23,06,'Shivpuri (M)','City')
INSERT INTO [TBL_district_code] VALUES(23,26,'Vidisha (M)','City')
INSERT INTO [TBL_district_code] VALUES(23,08,'Chhattarpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(23,11,'Damoh UA','UA')
INSERT INTO [TBL_district_code] VALUES(23,16,'Mandsaur (M)','City')
INSERT INTO [TBL_district_code] VALUES(23,23,'Khargone UA','UA')
INSERT INTO [TBL_district_code] VALUES(23,15,'Neemuch UA','UA')
INSERT INTO [TBL_district_code] VALUES(23,21,'Pithampur (M)','City')
INSERT INTO [TBL_district_code] VALUES(23,32,'Hoshangabad (M)','City')
INSERT INTO [TBL_district_code] VALUES(23,32,'Itarsi UA','UA')
INSERT INTO [TBL_district_code] VALUES(23,28,'Sehore UA','UA')
INSERT INTO [TBL_district_code] VALUES(23,30,'Betul (M)','City')
INSERT INTO [TBL_district_code] VALUES(23,39,'Seoni (M)','City')
INSERT INTO [TBL_district_code] VALUES(23,05,'Datia (M)','City')
INSERT INTO [TBL_district_code] VALUES(23,18,'Nagda (M)','City')
INSERT INTO [TBL_district_code] VALUES(24,99,'Ahmadabad UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,25,'Surat UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,19,'Vadodara UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,09,'Rajkot UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,14,'Bhavnagar UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,10,'Jamnagar UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,12,'Junagadh (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(24,15,'Anand UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,23,'Navsari UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,08,'Wadhwan UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,01,'Gandhidham (M)','City')
INSERT INTO [TBL_district_code] VALUES(24,09,'Morvi UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,16,'Nadiad UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,21,'Bharuch UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,11,'Porbandar UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,04,'Mahesana UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,01,'Bhuj UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,12,'Veraval UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,24,'Valsad UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,24,'Vapi (M)','City')
INSERT INTO [TBL_district_code] VALUES(24,17,'Godhra UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,21,'Anklesvar UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,02,'Palanpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,03,'Patan UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,14,'Botad (M)','City')
INSERT INTO [TBL_district_code] VALUES(24,18,'Dohad UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,09,'Jetpur Navagadh (M)','City')
INSERT INTO [TBL_district_code] VALUES(24,13,'Amreli UA','UA')
INSERT INTO [TBL_district_code] VALUES(24,09,'Gondal (M)','City')
INSERT INTO [TBL_district_code] VALUES(24,02,'Deesa (M)','City')
INSERT INTO [TBL_district_code] VALUES(27,99,'Greater Mumbai UA','UA')
INSERT INTO [TBL_district_code] VALUES(27,25,'Pune UA','UA')
INSERT INTO [TBL_district_code] VALUES(27,09,'Nagpur UA','UA')
INSERT INTO [TBL_district_code] VALUES(27,20,'Nashik UA','UA')
INSERT INTO [TBL_district_code] VALUES(27,21,'Vasai Virar City (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(27,19,'Aurangabad UA','UA')
INSERT INTO [TBL_district_code] VALUES(27,30,'Solapur (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(27,21,'Bhiwandi UA','UA')
INSERT INTO [TBL_district_code] VALUES(27,07,'Amravati (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(27,20,'Malegaon UA','UA')
INSERT INTO [TBL_district_code] VALUES(27,34,'Kolhapur UA','UA')
INSERT INTO [TBL_district_code] VALUES(27,15,'Nanded Waghala (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(27,35,'Sangali UA','UA')
INSERT INTO [TBL_district_code] VALUES(27,03,'Jalgaon (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(27,05,'Akola (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(27,28,'Latur (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(27,26,'Ahmadnagar UA','UA')
INSERT INTO [TBL_district_code] VALUES(27,02,'Dhule (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(27,34,'Ichalkaranji UA','UA')
INSERT INTO [TBL_district_code] VALUES(27,13,'Chandrapur (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(27,17,'Parbhani (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(27,18,'Jalna (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(27,03,'Bhusawal UA','UA')
INSERT INTO [TBL_district_code] VALUES(27,24,'Navi Mumbai Panvel Raigad (CT)','CT')
INSERT INTO [TBL_district_code] VALUES(27,24,'Panvel (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(27,31,'Satara UA','UA')
INSERT INTO [TBL_district_code] VALUES(27,27,'Bid (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(27,14,'Yavatmal UA','UA')
INSERT INTO [TBL_district_code] VALUES(27,09,'Kamptee UA','UA')
INSERT INTO [TBL_district_code] VALUES(27,11,'Gondiya (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(27,30,'Barshi (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(27,07,'Achalpur (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(27,29,'Osmanabad (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(27,01,'Nandurbar (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(27,08,'Wardha (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(27,28,'Udgir (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(27,08,'Hinganghat (M Cl)','City')
INSERT INTO [TBL_district_code] VALUES(28,99,'Hyderabad UA ','UA')
INSERT INTO [TBL_district_code] VALUES(28,13,'GVMC (MC)','City')
INSERT INTO [TBL_district_code] VALUES(28,99,'Vijayawada UA ','UA')
INSERT INTO [TBL_district_code] VALUES(28,09,'Warangal UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,17,'Guntur UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,19,'Nellore UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,14,'Rajahmundry UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,21,'Kurnool UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,23,'Tirupati UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,14,'Kakinada UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,20,'Kadapa UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,22,'Anantapur UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,02,'Nizamabad (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(28,03,'Karimnagar UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,10,'Khammam UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,03,'Ramagundam UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,15,'Eluru UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,12,'Vizianagaram UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,20,'Proddatur UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,21,'Nandyal UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,07,'Mahbubnagar UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,18,'Ongole UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,21,'Adoni UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,23,'Madanapalle UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,23,'Chittoor UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,16,'Machilipatnam (M)','City')
INSERT INTO [TBL_district_code] VALUES(28,17,'Tenali (M)','City')
INSERT INTO [TBL_district_code] VALUES(28,01,'Mancherial UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,18,'Chirala UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,08,'Nalgonda UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,22,'Hindupur (M)','City')
INSERT INTO [TBL_district_code] VALUES(28,15,'Bhimavaram UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,11,'Srikakulam UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,01,'Adilabad UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,22,'Guntakal (M)','City')
INSERT INTO [TBL_district_code] VALUES(28,22,'Dharmavaram (M)','City')
INSERT INTO [TBL_district_code] VALUES(28,10,'Kothagudem UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,16,'Gudivada (M)','City')
INSERT INTO [TBL_district_code] VALUES(28,17,'Narasaraopet UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,04,'Siddipet UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,22,'Tadpatri (M)','City')
INSERT INTO [TBL_district_code] VALUES(28,08,'Suryapet UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,08,'Miryalaguda UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,03,'Jagtial UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,15,'Tadepalligudem UA','UA')
INSERT INTO [TBL_district_code] VALUES(28,17,'Chilakaluripet (M)','City')
INSERT INTO [TBL_district_code] VALUES(29,18,'BANGALORE UA','UA')
INSERT INTO [TBL_district_code] VALUES(29,23,'Mysore UA','UA')
INSERT INTO [TBL_district_code] VALUES(29,08,'Hubli-Dharwad *(M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(29,21,'Mangalore UA','UA')
INSERT INTO [TBL_district_code] VALUES(29,01,'Belgaum UA','UA')
INSERT INTO [TBL_district_code] VALUES(29,25,'Gulbarga UA','UA')
INSERT INTO [TBL_district_code] VALUES(29,13,'Davanagere (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(29,11,'Bellary (M Corp.)','City')
INSERT INTO [TBL_district_code] VALUES(29,03,'Bijapur (CMC)','City')
INSERT INTO [TBL_district_code] VALUES(29,14,'Shimoga (CMC)','City')
INSERT INTO [TBL_district_code] VALUES(29,17,'Tumkur (CMC)','City')
INSERT INTO [TBL_district_code] VALUES(29,05,'Raichur (CMC)','City')
INSERT INTO [TBL_district_code] VALUES(29,04,'Bidar UA','UA')
INSERT INTO [TBL_district_code] VALUES(29,11,'Hospet (CMC)','City')
INSERT INTO [TBL_district_code] VALUES(29,20,'Hassan UA','UA')
INSERT INTO [TBL_district_code] VALUES(29,07,'Gadag-Betigeri (CMC)','City')
INSERT INTO [TBL_district_code] VALUES(29,27,'Robertson Pet UA','UA')
INSERT INTO [TBL_district_code] VALUES(29,15,'Udupi UA','UA')
INSERT INTO [TBL_district_code] VALUES(29,14,'Bhadravati (CMC)','City')
INSERT INTO [TBL_district_code] VALUES(29,12,'Chitradurga UA','UA')
INSERT INTO [TBL_district_code] VALUES(29,27,'Kolar (CMC)','City')
INSERT INTO [TBL_district_code] VALUES(29,19,'Mandya (CMC)','City')
INSERT INTO [TBL_district_code] VALUES(29,16,'Chikmagalur (CMC)','City')
INSERT INTO [TBL_district_code] VALUES(29,06,'Gangawati UA','UA')
INSERT INTO [TBL_district_code] VALUES(29,02,'Bagalkot (CMC)','City')
INSERT INTO [TBL_district_code] VALUES(29,10,'Ranibennur (CMC)','City')
INSERT INTO [TBL_district_code] VALUES(30,01,'Panaji UA','UA')
INSERT INTO [TBL_district_code] VALUES(30,02,'Margao UA','UA')
INSERT INTO [TBL_district_code] VALUES(30,02,'Mormugao UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,08,'Kochi UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,04,'Kozhikode UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,07,'Thrissur UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,05,'Malappuram UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,14,'Thiruvananthapuram UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,02,'Kannur UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,13,'Kollam UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,11,'Cherthala UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,11,'Kayamkulam UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,10,'Kottayam UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,06,'Palakkad UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,11,'Alappuzha UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,06,'Ottappalam UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,01,'Kanhangad UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,01,'Kasaragod UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,10,'Changanassery UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,07,'Chalakudy UA','UA')
INSERT INTO [TBL_district_code] VALUES(32,08,'Kothamangalam UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,99,'Chennai UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,31,'Coimbatore UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,22,'Madurai UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,13,'Tiruchirappalli UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,32,'Tiruppur UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,07,'Salem UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,09,'Erode UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,27,'Tirunelveli UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,04,'Vellore UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,26,'Thoothukkudi UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,11,'Dindigul UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,19,'Thanjavur UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,04,'Ranipet UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,24,'Sivakasi UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,12,'Karur UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,10,'Udhagamandalam UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,30,'Hosur UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,28,'Nagercoil (M)','City')
INSERT INTO [TBL_district_code] VALUES(33,03,'Kancheepuram UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,08,'Kumarapalayam UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,21,'Karaikkudi UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,16,'Neyveli UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,16,'Cuddalore (M)','City')
INSERT INTO [TBL_district_code] VALUES(33,19,'Kumbakonam UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,05,'Tiruvannamalai (M)','City')
INSERT INTO [TBL_district_code] VALUES(33,31,'Pollachi UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,24,'Rajapalayam (M)','City')
INSERT INTO [TBL_district_code] VALUES(33,04,'Gudiyatham UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,20,'Pudukkottai (M)','City')
INSERT INTO [TBL_district_code] VALUES(33,04,'Vaniyambadi UA','UA')
INSERT INTO [TBL_district_code] VALUES(33,04,'Ambur (M)','City')
INSERT INTO [TBL_district_code] VALUES(33,17,'Nagapattinam (M)','City')
INSERT INTO [TBL_district_code] VALUES(34,02,'Puducherry UA','UA')
INSERT INTO [TBL_district_code] VALUES(35,03,'Port Blair (MC)','City')


MERGE INTO C_CHILD_POPULATION MD
		USING (
		  SELECT    LTRIM(RTRIM(District_Code)) AS District_Code ,LTRIM(RTRIM(Name_UA_City)) AS Name_UA_City,LTRIM(RTRIM(Level)) AS Level,LTRIM(RTRIM(Person)) AS Person,LTRIM(RTRIM(Male)) AS Male,LTRIM(RTRIM(Female)) AS Female
			FROM CHILD_POPULATION      WHERE   LTRIM(RTRIM(District_Code))  IN(  
			SELECT LTRIM(RTRIM(District_Code)) FROM    [TBL_district_code] )
			 
			) RD
		ON MD.DISTRICT_CODE = RD.DISTRICT_CODE
		WHEN NOT MATCHED BY TARGET THEN
		INSERT VALUES (RD.DISTRICT_CODE,RD.Name_UA_City,RD.Level,RD.Person,RD.Male,RD.Female);

--5

 create table ERR_LOG
 (
 ERROR_CD INT,
 SRC_KEY VARCHAR(50)

 )
 
create table ERR_lOOKUP
 (
 ERROR_CODE INT,
 ERROR_DESC VARCHAR(50)

 )

 INSERT INTO ERR_lOOKUP VALUES (1001,'Missing district code in lookup table')
 
 
select * into #temp1 from( 
(select * from Child_population
except 
select * from c_Child_population))

insert into ERR_LOG
select  DISTINCT 1001 ,tp.District_Code FROM  #temp1 tp 


--6

create table Audit_Dim(
U_ID int identity(1,1),
SRC_SYS varchar(50),
UPDATE_DT Datetime
)
create table Tgt_child_population(
Skey int ,
District_Code int,
Name varchar(100),
Levels varchar(50),
Person money,
Males money,
Females money,
Eff_Date Date
)
drop table Tgt_child_population



create proc ETL2(@i int =null)
as
Begin
--declare @High_Value int
--Set @High_Value=(select max(Skey) from Source_Customer)

Insert into Tgt_child_population
select S.* from Child_population as S
left join Tgt_child_population as T
On S.Skey=T.Skey
where T.Skey is null

UPDATE	Tgt_child_population  
SET 
           Name=S.Name
		   
From Tgt_child_population T
INNER JOIN Child_population S ON S.Skey=T.Skey
Where S.Name!=T.Name
end
update Audit_Dim set UPDATE_DT=(select max(Eff_Date) from Child_population  ) where SRC_SYS='Child_population'
Go
exec ETL2
insert into Audit_Dim values('Child_population','1900-01-01')
select * from Child_population
select * from Audit_Dim	 
	 
--7	 
	 
		 BEGIN TRAN
	-- Pull distinct records in the temporary table 
	SELECT DISTINCT * INTO #Employee 
	FROM Employee 
	--Truncate the target table 
	TRUNCATE TABLE Employee 
	--Insert the distinct records from temporary table 
	--back to target table 
	INSERT INTO Employee SELECT * FROM #Employee 
	--Drop the temporary table 
	IF OBJECT_ID('tempdb..#Employee') IS NOT NULL 
	  DROP TABLE #Employee 
	COMMIT TRAN
	GO 

	SELECT * FROM Employee 
	GO 

---8

insert into Child_Population 
Values(100,'London','City',null,null,null,getdate())

select * from Child_population
