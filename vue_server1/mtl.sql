-- source 拖入sql文件

SET NAMES UTF8;
DROP DATABASE IF EXISTS mtl;
CREATE DATABASE mtl CHARSET=UTF8;
USE mtl;
CREATE TABLE mtl_login(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(50),
    captcha  VARCHAR(6)
);
USE mtl;
INSERT INTO mtl_login VALUES(null,'13012345678',md5('1234'));
USE mtl;
CREATE TABLE ticket_type_family(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(32)
);

CREATE TABLE ticket_type(
    lid INT PRIMARY KEY AUTO_INCREMENT,
    family_id INT,
    title VARCHAR(128),
    subtitle VARCHAR(128),
    img_url VARCHAR(128),
    address VARCHAR(128),
    price DECIMAL(10,2),
    shelf_time BIGINT, 
    is_onsale BOOLEAN
);

INSERT INTO ticket_type_family VALUES
(NULL,'演唱会'),
(NULL,'话剧歌剧'),
(NULL,'体育赛事'),
(NULL,'音乐会'),
(NULL,'展览休闲'),
(NULL,'舞蹈芭蕾'),
(NULL,'儿童亲子'),
(NULL,'曲艺杂谈');

INSERT INTO ticket_type VALUES
    (NULL,1,'【成都站】“UNINE FAN MEETING TOUR ‘RUN TO U’”全国巡回见面会Ending场','青春同行，感谢有你','XwrsMTkCjj_.jpg','四川省体育馆',774,'2019.07.27 19:30',1),
    (NULL,1,'【成都站】2019 李玟 CoCo Lee YOU&I 世界巡回演唱会','因为有你们，才有今天的我','sydwbN2t2Y_.png','四川省体育馆 ',996,'2019.07.27 19:30',1),
    (NULL,1,'【成都站】蔡琴2019「好新琴」演唱会','在蔡琴歌声面前，跨时代的三代粉，[零代沟！]','GiPNHZ72mM_.jpg','五粮液·成都演艺中心',273,'2019.08.03 19:30',1),
    (NULL,1,'【成都站】真的爱你-2019致敬BEYOND·黄家驹演唱会 瞬间穿越那些光辉岁月','因为有你们，才有今天的我','QyDxJ7JXJs_.jpeg','正火艺术中心6号馆 ',258,'2019.08.03 19:30',1),
    (NULL,1,'【成都站】2019 张韶涵「寓言」世界巡回演唱会','欢迎光临，来到这一场天光盛放的绮丽梦境','QNese5NmcR_.jpg','五粮液·成都演艺中心  ',679,'2019.10.13 19:30',1),
    (NULL,1,'【成都站】2019逐梦之夜群星演唱会','','cDMhsKcxRr_.jpeg','成都双流体育场',296,'2019.08.24-2019.08.25',1),
    (NULL,1,'【成都站】2019七夕“一生中最爱”情歌演唱会——有些歌，我只唱给你听','','cDMhsKcxRr_.jpeg','成都乐空间 ',180,'2019.08.07 19:30',1),
    (NULL,2,'【成都站】孟京辉城市浸没剧《成都偷心》','','Jz2waC4QjN_.jpg','域上和美先锋剧场',379,'2019.07.26-2019.08.16',1),
    (NULL,2,'【成都站】世界经典原版音乐剧《猫》CATS','','GmmKBx6YnZ_.jpg','东郊记忆·演艺中心',666,'2019.08.20-2019.08.25',1),
    (NULL,2,'【成都站】舞剧《永不消逝的电波》','','mwzFQXdT2Y_.jpg','四川省锦城艺术宫 ',663,'2019.08.08-2019.08.10',1),
    (NULL,2,'【成都站】倪大红、孙莉领衔主演《安魂曲》中文版','','5cz2BHKW2W_.jpg','四川省锦城艺术宫 ',748,'2019.08.02-2019.08.03',1),
    (NULL,2,'【成都站】《因为单身的缘故》爆笑感动登场','','6QP5WhZMnw_.jpg','文殊坊初相遇剧场 ',99,'2019.07.27-2019.09.14',1),
    (NULL,2,'【成都站】小剧场话剧《回忆杂货铺》','','KQjfYpZt6K_.jpeg','文殊坊初相遇剧场',80,'2019.07.11-2019.09.15',1),
    (NULL,3,'【成都站】小剧场话剧《夜色》','','dNdnmR6YKX_.jpeg','文殊坊初相遇剧场',80,'2019.07.11-2019.09.15',1)
    ;