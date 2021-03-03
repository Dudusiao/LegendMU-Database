DROP DATABASE database_login;
CREATE DATABASE database_login;
USE database_login;

CREATE TABLE accounts (
    account_id INT NOT NULL,
    vip_status int,
    vip_duration int,
    expanded_warehouse int,
    expanded_warehouse_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    special_character int,
    credits int,
    web_credits int,
    current_character int,
    current_type int,
    current_ip VARCHAR(45),
    current_mac VARCHAR(45),
    current_diskserial VARCHAR(45),
    current_server int,
    blocked int,
    PRIMARY KEY (account_id)
);
CREATE TABLE accounts_status (
    account_id INT NOT NULL,
    server_group INT,
    current_server INT,
    start_server INT,
    dest_server INT,
    dest_world INT,
    dest_x INT,
    dest_y INT,
    warp_time datetime(6),
    warp_auth_1 INT,
    warp_auth_2 INT,
    warp_auth_3 INT,
    warp_auth_4 INT,
    last_ip VARCHAR(45),
    last_mac VARCHAR(45),
    last_online VARCHAR(45),
    online int,
    disk_serial VARCHAR(45),
    type int,
    PRIMARY KEY (account_id)
);
CREATE TABLE accounts_allowed (
    account_id INT NOT NULL,
    vip_status int,
    vip_duration int,
    expanded_warehouse int,
    expanded_warehouse_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    special_character int,
    credits int,
    web_credits int,
    current_character int,
    current_type int,
    current_ip VARCHAR(45),
    current_mac VARCHAR(45),
    current_diskserial VARCHAR(45),
    current_server int,
    PRIMARY KEY (account_id)
);
CREATE TABLE accounts_validation (
    account_id INT NOT NULL,
    vip_status int,
    vip_duration int,
    expanded_warehouse int,
    expanded_warehouse_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    special_character int,
    credits int,
    web_credits int,
    current_character int,
    current_type int,
    current_ip VARCHAR(45),
    current_mac VARCHAR(45),
    current_diskserial VARCHAR(45),
    current_server int,
    PRIMARY KEY (account_id)
);
CREATE TABLE accounts_warning (
    account_id INT NOT NULL,
    vip_status int,
    vip_duration int,
    expanded_warehouse int,
    expanded_warehouse_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    special_character int,
    credits int,
    web_credits int,
    current_character int,
    current_type int,
    current_ip VARCHAR(45),
    current_mac VARCHAR(45),
    current_diskserial VARCHAR(45),
    current_server int,
    PRIMARY KEY (account_id)
);
CREATE TABLE accounts_banned (
    account_id INT NOT NULL,
    vip_status int,
    vip_duration int,
    expanded_warehouse int,
    expanded_warehouse_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    special_character int,
    credits int,
    web_credits int,
    current_character int,
    current_type int,
    current_ip VARCHAR(45),
    current_mac VARCHAR(45),
    current_diskserial VARCHAR(45),
    current_server int,
    PRIMARY KEY (account_id)
);
CREATE TABLE master_pc (
    account_id INT NOT NULL,
    vip_status int,
    vip_duration int,
    expanded_warehouse int,
    expanded_warehouse_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    special_character int,
    credits int,
    web_credits int,
    current_character int,
    current_type int,
    current_ip VARCHAR(45),
    current_mac VARCHAR(45),
    current_diskserial VARCHAR(45),
    current_server int,
    PRIMARY KEY (account_id)
);
CREATE TABLE server_list (
    server_id INT NOT NULL,
    code int,
    name VARCHAR(45),
    port VARCHAR(45),
    ip VARCHAR(45),
    flag VARCHAR(45),
    online int(45),
    default_world int,
    default_x int,
    default_y int,
    type int,
    PRIMARY KEY (server_id)
);
CREATE TABLE item_serial (
    serial_id INT NOT NULL,
    server int,
    serial VARCHAR(45),
    serial_shop VARCHAR(45),
    PRIMARY KEY (serial_id)
);