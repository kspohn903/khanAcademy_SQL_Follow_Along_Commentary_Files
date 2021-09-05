CREATE TABLE ponies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER);
    
INSERT INTO ponies (name, age) VALUES ("Rarity", 27);
INSERT INTO ponies (name, age) VALUES ("Rainbow Dash", 26);
INSERT INTO ponies (name, age) VALUES ("Fluttershy", 27);
INSERT INTO ponies (name, age) VALUES ("Pinkie Pie", 25);
INSERT INTO ponies (name, age) VALUES ("Apple Jack", 27);
INSERT INTO ponies (name, age) VALUES ("Twilight Sparkle", 20);

CREATE table hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pony_id INTEGER,
    name TEXT);
    
INSERT INTO hobbies (pony_id, name) VALUES (1,"drawing");
INSERT INTO hobbies (pony_id, name) VALUES (1,"fashion");
INSERT INTO hobbies (pony_id, name) VALUES (1,"gossip");
INSERT INTO hobbies (pony_id, name) VALUES (1,"sex");
INSERT INTO hobbies (pony_id, name) VALUES (2,"flying");
INSERT INTO hobbies (pony_id, name) VALUES (2,"racing");
INSERT INTO hobbies (pony_id, name) VALUES (2,"cloud busting");
INSERT INTO hobbies (pony_id, name) VALUES (2,"storytelling");
INSERT INTO hobbies (pony_id, name) VALUES (3,"animal caretaking");
INSERT INTO hobbies (pony_id, name) VALUES (3,"zoology");
INSERT INTO hobbies (pony_id, name) VALUES (3,"cryptozoology");
INSERT INTO hobbies (pony_id, name) VALUES (3,"fashion");
INSERT INTO hobbies (pony_id, name) VALUES (4,"ranting about the government");
INSERT INTO hobbies (pony_id, name) VALUES (4,"conspiracy theories");
INSERT INTO hobbies (pony_id, name) VALUES (4, "partying");
INSERT INTO hobbies (pony_id, name) VALUES (4, "party planning");
INSERT INTO hobbies (pony_id, name) VALUES (5, "applebucking");
INSERT INTO hobbies (pony_id, name) VALUES (5, "parenting");
INSERT INTO hobbies (pony_id, name) VALUES (5, "DIY Projects");
INSERT INTO hobbies (pony_id, name) VALUES (5, "eating apples"); /*jappleack ...*/

/*Step 1: Insert Characteristic Hobbies of Twilight Sparkle. */
/* SELECT * FROM hobbies; */
SELECT *, id FROM ponies; 
INSERT INTO hobbies (pony_id, name) VALUES (6, "Scientific Research");
INSERT INTO hobbies (pony_id, name) VALUES (6, "Reading");
INSERT INTO hobbies (pony_id, name) VALUES (6, "Spellcasting");
INSERT INTO hobbies (pony_id, name) VALUES (6, "Scheduling");
INSERT INTO hobbies (pony_id, name) VALUES (6, "Elements of Harmony");
INSERT INTO hobbies (pony_id, name) VALUES (6,"Ruling Equestria");
INSERT INTO hobbies (pony_id, name) VALUES (6,"Teaching");
INSERT INTO hobbies (pony_id, name) VALUES (6,"Writing/Authorship");
INSERT INTO hobbies (pony_id, name) VALUES (6,"Burning Down Barns While Reading");

SELECT * FROM hobbies WHERE pony_id = (SELECT id AS pony_id FROM ponies WHERE name = 'Twilight Sparkle');

