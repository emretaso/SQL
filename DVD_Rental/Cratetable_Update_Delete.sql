-- Homework 8

-- 1.Create a table in your test database with employee name. Column information id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100).
CREATE TABLE employee (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100),
  birthday DATE
);

-- 2.Add 50 pieces of data to the employee table we created using the 'Mockaroo' service.
insert into employee (id, first_name, last_name, email, birthday) values (1, 'Viva', 'Cayle', null, '2008-11-26');
insert into employee (id, first_name, last_name, email, birthday) values (2, 'Drucy', 'Cocozza', 'dcocozza1@netlog.com', '2020-06-19');
insert into employee (id, first_name, last_name, email, birthday) values (3, 'Asa', 'Krug', 'akrug2@tuttocitta.it', '2008-01-09');
insert into employee (id, first_name, last_name, email, birthday) values (4, 'Bradney', 'Bertouloume', 'bbertouloume3@xinhuanet.com', '2007-08-12');
insert into employee (id, first_name, last_name, email, birthday) values (5, 'Janis', 'Dunsford', 'jdunsford4@sogou.com', null);
insert into employee (id, first_name, last_name, email, birthday) values (6, 'Andrei', 'Bergstram', 'abergstram5@noaa.gov', null);
insert into employee (id, first_name, last_name, email, birthday) values (7, 'Melitta', 'Lawman', 'mlawman6@so-net.ne.jp', '2014-09-01');
insert into employee (id, first_name, last_name, email, birthday) values (8, 'Nikaniki', 'Lamperti', 'nlamperti7@e-recht24.de', '2002-03-28');
insert into employee (id, first_name, last_name, email, birthday) values (9, 'Leslie', 'Nowlan', 'lnowlan8@psu.edu', '2002-03-14');
insert into employee (id, first_name, last_name, email, birthday) values (10, 'Westbrook', 'Bristowe', 'wbristowe9@g.co', '2019-06-13');
insert into employee (id, first_name, last_name, email, birthday) values (11, 'Wynny', 'Pritchard', 'wpritcharda@google.pl', '2017-01-23');
insert into employee (id, first_name, last_name, email, birthday) values (12, 'Leoline', 'Fonquernie', null, '2002-06-03');
insert into employee (id, first_name, last_name, email, birthday) values (13, 'Lucio', 'Scolts', 'lscoltsc@nps.gov', '2007-04-16');
insert into employee (id, first_name, last_name, email, birthday) values (14, 'Adan', 'Gatchel', 'agatcheld@yahoo.co.jp', '2012-03-03');
insert into employee (id, first_name, last_name, email, birthday) values (15, 'Berkeley', 'Basill', 'bbasille@ed.gov', '2008-10-10');
insert into employee (id, first_name, last_name, email, birthday) values (16, 'Merrile', 'Hartington', 'mhartingtonf@upenn.edu', '2005-03-24');
insert into employee (id, first_name, last_name, email, birthday) values (17, 'Kelsi', 'Haughey', 'khaugheyg@edublogs.org', '2021-11-16');
insert into employee (id, first_name, last_name, email, birthday) values (18, 'Nathalia', 'Darbey', 'ndarbeyh@cnn.com', '2001-04-04');
insert into employee (id, first_name, last_name, email, birthday) values (19, 'Parrnell', 'Bennion', 'pbennioni@nifty.com', null);
insert into employee (id, first_name, last_name, email, birthday) values (20, 'Fanny', 'Copper', 'fcopperj@purevolume.com', '2007-12-10');
insert into employee (id, first_name, last_name, email, birthday) values (21, 'Mirabelle', 'Atkin', 'matkink@pcworld.com', '1999-01-23');
insert into employee (id, first_name, last_name, email, birthday) values (22, 'Miner', 'Paslow', 'mpaslowl@samsung.com', '2000-09-21');
insert into employee (id, first_name, last_name, email, birthday) values (23, 'Meagan', 'Syvret', 'msyvretm@europa.eu', null);
insert into employee (id, first_name, last_name, email, birthday) values (24, 'Carlie', 'Telfer', 'ctelfern@hp.com', '2016-03-31');
insert into employee (id, first_name, last_name, email, birthday) values (25, 'Davy', 'Phinnessy', 'dphinnessyo@nba.com', '2018-10-28');
insert into employee (id, first_name, last_name, email, birthday) values (26, 'Xenia', 'Dyneley', 'xdyneleyp@moonfruit.com', '2016-06-29');
insert into employee (id, first_name, last_name, email, birthday) values (27, 'Krista', 'Yedall', 'kyedallq@oaic.gov.au', '2020-11-21');
insert into employee (id, first_name, last_name, email, birthday) values (28, 'Boyd', 'Muzzall', 'bmuzzallr@marriott.com', '2004-08-30');
insert into employee (id, first_name, last_name, email, birthday) values (29, 'Daryl', 'McClinton', 'dmcclintons@smh.com.au', '2004-08-12');
insert into employee (id, first_name, last_name, email, birthday) values (30, 'Kelli', 'Cerie', 'kceriet@cbc.ca', '2015-09-16');
insert into employee (id, first_name, last_name, email, birthday) values (31, 'Shadow', 'Ioselevich', null, null);
insert into employee (id, first_name, last_name, email, birthday) values (32, 'Nata', 'Sjollema', 'nsjollemav@state.tx.us', '2017-05-26');
insert into employee (id, first_name, last_name, email, birthday) values (33, 'Donnajean', 'Frail', 'dfrailw@weibo.com', '2014-05-17');
insert into employee (id, first_name, last_name, email, birthday) values (34, 'Blake', 'Beacock', 'bbeacockx@cafepress.com', '2011-05-09');
insert into employee (id, first_name, last_name, email, birthday) values (35, 'Barth', 'Ceaser', 'bceasery@g.co', '2014-06-27');
insert into employee (id, first_name, last_name, email, birthday) values (36, 'Ritchie', 'MacGaughey', 'rmacgaugheyz@irs.gov', '2008-10-07');
insert into employee (id, first_name, last_name, email, birthday) values (37, 'Madelene', 'Chatto', 'mchatto10@irs.gov', '2011-02-24');
insert into employee (id, first_name, last_name, email, birthday) values (38, 'Ferdy', 'Gipp', 'fgipp11@aboutads.info', '2017-09-01');
insert into employee (id, first_name, last_name, email, birthday) values (39, 'Adrea', 'Malkinson', 'amalkinson12@a8.net', '2014-08-12');
insert into employee (id, first_name, last_name, email, birthday) values (40, 'Ralina', 'Husk', 'rhusk13@t.co', '2011-10-19');
insert into employee (id, first_name, last_name, email, birthday) values (41, 'Rik', 'Vasilchenko', 'rvasilchenko14@bloomberg.com', '2006-03-30');
insert into employee (id, first_name, last_name, email, birthday) values (42, 'Mayer', 'Chalfain', 'mchalfain15@digg.com', null);
insert into employee (id, first_name, last_name, email, birthday) values (43, 'Aguste', 'Lockitt', 'alockitt16@about.com', '2018-04-14');
insert into employee (id, first_name, last_name, email, birthday) values (44, 'Darci', 'Lazonby', 'dlazonby17@behance.net', '2013-12-15');
insert into employee (id, first_name, last_name, email, birthday) values (45, 'Dyane', 'Beacon', 'dbeacon18@hc360.com', '2007-11-17');
insert into employee (id, first_name, last_name, email, birthday) values (46, 'Lainey', 'Berry', null, '2013-06-27');
insert into employee (id, first_name, last_name, email, birthday) values (47, 'Wiatt', 'Marchent', 'wmarchent1a@oracle.com', '2015-08-13');
insert into employee (id, first_name, last_name, email, birthday) values (48, 'Finlay', 'Meriott', 'fmeriott1b@sciencedaily.com', '2009-08-10');
insert into employee (id, first_name, last_name, email, birthday) values (49, 'Gizela', 'Scherer', 'gscherer1c@accuweather.com', '2010-05-19');
insert into employee (id, first_name, last_name, email, birthday) values (50, 'Melina', 'Bridal', 'mbridal1d@slideshare.net', '2010-06-22');

-- 3.Use Update operation
UPDATE employee
SET first_name = 'Emre',
	email = '123@sql.com'
WHERE id = 4;

-- 4. Use Deleteo operation
delete from employee
WHERE last_name like 'P%';

