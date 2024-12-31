-- database name: "db_restaurant"

CREATE TABLE food( 
    food_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    food_name VARCHAR(255), 
    food_star VARCHAR(255),
    food_vote VARCHAR(255),
    food_price VARCHAR(255),
    food_discount VARCHAR(255),
    food_desc VARCHAR(255),
    food_status VARCHAR(255),
    food_type VARCHAR(255),
    food_category VARCHAR(255),
    food_src VARCHAR(255)
) ENGINE=INNODB;

INSERT INTO food(food_name, food_star, food_vote, food_price, food_discount, food_desc, food_status, food_type, food_category, food_src)
VALUES("chilli paneer","4.5", "999", "180.00", "0.00", "08 pieces per serving", "best seller", "veg", "paneer", "paneer/paneer-1.jpeg"),
("matar paneer","4.5", "999", "150.00", "3.00", "08 pieces per serving", "best seller", "veg", "paneer", "paneer/paneer-2.jpg"),
("shahi paneer","4.5","500","220.00","0.00","08 pieces per serving","best seller","veg","paneer","paneer/paneer-3.jpg"),
("kadhai paneer","4.5","999","190.00","2.00","08 pieces per serving","best seller","veg","paneer","paneer/paneer-4.jpg"),
("plain rice","4.5","600","70.00","0.00","full plate per serving","best seller","veg","rice","rice/rice-1.jpg"),
("jeera rice","4.5","999","90.00","3.00","full plate per serving","best seller","veg","rice","rice/rice-2.webp"),
("plain daal","4.5","999","90.00","0.00","full per serving","best seller","veg","daal","daal/daal-1.jpg"),
("daal fried","4.5","999","110.00","2.00","full bowl per serving","normal","veg","daal","daal/daal-2.jpg"),
("daal tadka","4.5","999","130.00","0.00","full bowl per serving","best seller","veg","daal","daal/daal-3.jpg"),
("matar mushroom","4","400","160.00","2.00","full per serving","best seller","veg","mushroom","mushroom/mushroom-1.jpeg"),
("mushroom curry masala","4","699","170.00","2.00","full per serving","normal","veg","mushroom","mushroom/mushroom-2.jpeg"),
("kadhai mushroom","4.5","999","200.00","0.00","full per serving","normal","veg","mushroom","mushroom/mushroom-3.jpeg"),
("tawa roti","4.5","999","10.00","2.00","01 per serving","normal","veg","roti","roti/roti-1.jpg"),
("butter naan","4.5","999","35.00","0.00","02 per serving","normal","veg","roti","roti/roti-2.jpg"),
("garlic naan","4","999","35.00","2.00","02 per serving","normal","veg","roti","roti/roti-3.jpg"),
("missi roti","4.5","999","15.00","2.00","01 per serving","normal","veg","roti","roti/roti-4.jpg"),
("masala dosa","4","699","100.00","2.00","01 per serving","best seller","veg","south","south/south-1.jpg"),
("plain dosa","4.5","499","80.00","2.00","01 per serving","best seller","veg","south","south/south-2.jpg"),
("idly sambhar","4.5","999","5.00","2.00","01 bowl per serving","best seller","veg","south","south/south-3.jpg"),
("aloo paratha with curd","4.5","699","40.00","2.00","01 per serving","best seller","veg","paratha","paratha/paratha-1.jpg"),
("paneer paratha with curd","3.5","699","60.00","1.00","01 per serving","normal","veg","paratha","paratha/paratha-2.jpg"),
("onion paratha with curd","4.5","999","50.00","0.00","01 per serving","best seller","veg","paratha","paratha/paratha-3.jpg"),
("aloo cheese paratha with curd","4","200","50.00","0.00","01 per serving","normal","veg","paratha","paratha/paratha-4.jpg"),
("mix paratha with curd","4","100","60.00","0.00","01 per serving","new dishes","veg","paratha","paratha/paratha-5.jpg"),
("chola bhatura","3.5","299","80.00","2.00","02 bhatura per serving","best seller","veg","snacks","snacks/snacks-1.jpg"),
("pav bhaji","4.5","999","80.00","0.00","06 pieces per serving","best seller","veg","snacks","snacks/snacks-2.jpg"),
("chole kulche","4.5","999","70.00","1.00","02 kulcha per serving","normal","veg","snacks","snacks/snacks-3.jpg"),
("maggi","4.5","50","25.00","0.00","01 bowl per serving","best seller","veg","snacks","snacks/snacks-4.jpg"),
("cheese maggi","3","599","50.00","1.00","01 bowl per serving","online only","veg","snacks","snacks/snacks-5.jpg"),
("french fries","4","199","70.00","0.00","full plate per serving","best seller","veg","snacks","snacks/snacks-6.jpg"),
("bread pakoda","4","299","20.00","0.00","2 pieces per serving","normal","veg","snacks","snacks/snacks-7.jpg"),
("chola samosa","4.5","999","30.00","0.00","02 samosa per serving","normal","veg","snacks","snacks/snacks-8.jpg"),
("aloo pakoda","4.5","999","50.00","0.00","01 tray per serving","best seller","veg","snacks","snacks/snacks-9.jpg"),
("butter toast","4.5","999","30.00","0.00","02 toast per serving","best seller","veg","snacks","snacks/snacks-10.jpg"),
("veg sandwich","4.5","599","70.00","0.00","02 per serving","best seller","veg","snacks","snacks/snacks-11.jpg"),
("veg grilled sandwich","4","999","85.00","1.00","02 per serving","best seller","veg","snacks","snacks/snacks-12.jpg"),
("sprite","3.5","999","30.00","0.00","01 glass per serving","best seller","veg","drink","drink/drink-5.png"),
("Coca cola","4.5","9999","30.00","0.00","01 glass per serving","best seller","veg","drink","drink/drink-6.png"); 


CREATE TABLE user( 
    user_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    user_name VARCHAR(255), 
    user_email VARCHAR(255),
    user_phone VARCHAR(255),
    user_password VARCHAR(255),
    user_birth VARCHAR(255),
    user_gender VARCHAR(255)
) ENGINE=INNODB;


CREATE TABLE cart (
  user_id INT,
  food_id INT,
  item_qty INT,
  primary key (user_id, food_id)
);


CREATE TABLE booktable( 
    book_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    book_name VARCHAR(255), 
    book_phone VARCHAR(255),
    book_people INT,
    book_tables INT,
    user_id INT,
    book_when VARCHAR(255),
    book_note TEXT
) ENGINE=INNODB;


CREATE TABLE billdetails (
  bill_id INT,
  food_id INT,
  item_qty INT,
  primary key (bill_id, food_id)
);

CREATE TABLE billstatus (
  bill_id INT,
  user_id INT,
  bill_phone VARCHAR(255),
  bill_address TEXT,
  bill_when VARCHAR(255),
  bill_method VARCHAR(255),
  bill_discount INT,
  bill_delivery INT,
  bill_total INT,
  bill_paid VARCHAR(255),
  bill_status INT,
  primary key (bill_id)
);

