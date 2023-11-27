USE hippo_staci;


DROP TABLE IF EXISTS album;

CREATE TABLE `albums` (
                          `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                          `artist` varchar(50) NOT NULL,
                          `name` varchar(50) NOT NULL,
                          `release_date` int(11) NOT NULL,
                          `sales` decimal(10,0) NOT NULL,
                          `genre` varchar(26) NOT NULL,
                          PRIMARY KEY (`id`)
)
