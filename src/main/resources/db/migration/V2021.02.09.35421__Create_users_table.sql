CREATE TABLE `users` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(125) CHARACTER SET `utf8mb4` COLLATE `utf8mb4_unicode_ci` NOT NULL,
  `password` CHAR(60) CHARACTER SET `ascii` COLLATE `ascii_bin` NOT NULL, -- bcrypt $2 string
  `fullname` VARCHAR(125) CHARACTER SET `utf8mb4` COLLATE `utf8mb4_unicode_ci` NOT NULL,
  `role` VARCHAR(125) CHARACTER SET `ascii` COLLATE `ascii_bin` NOT NULL DEFAULT 'USER',

  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE = InnoDB DEFAULT CHARSET = `utf8mb4` ROW_FORMAT = COMPACT;
