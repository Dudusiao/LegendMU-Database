DROP DATABASE database_game;

CREATE DATABASE database_game;

USE database_game;

CREATE TABLE account_data (
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

CREATE TABLE character_info (
    guid INT NOT NULL,
	slot int,
	authority int,
	race int,
	name VARCHAR(45),
	level int,
	level_master int,
	experience int,
	experience_master int,
	points int,
	points_master int,
	strength int,
	agility int,
	vitality int,
	energy int,
	leadership int,
	world int,
	world_x int,
	world_y int,
	direction int,
	money int,
	life int,
	mana int,
	shield int,
	stamina int,
	add_fruit_points int,
	dec_fruit_points int,
	expanded_inventory int,
	mute_time datetime(6),
	admin_flags int,
	pk_level int,
	pk_count int,
	pk_points int,
	first_time datetime(6),
	santa_claus_gift int,
	personal_store_name VARCHAR(45),
	goblin_points int,
	kick_time datetime(6),
	account_id int,
	post_count int,
	post_day int,
	post_month int,
	ruud_money int,
	level_majestic int,
	experience_majestic int,
	points_majestic int,
	create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	hunting_log_visible int,
	personal_store_open int,
	PRIMARY KEY (guid),
    FOREIGN KEY (account_id) REFERENCES account_data(account_id)
);

CREATE TABLE account_warehouse (
    id INT NOT NULL,
    account_id int,
    money int,
    password VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (account_id) REFERENCES account_data(account_id)
);

CREATE TABLE account_buff (
    id INT NOT NULL,
    account_id int,
    buff int,
	effect_1 int,
	value_1 int,
	effect_2 int,
	value_2 int,
	effect_3 int,
	value_3 int,
	duration int,
	flags int,
	PRIMARY KEY (id),
	FOREIGN KEY (account_id) REFERENCES account_data(account_id)
);
CREATE TABLE character_skill (
    id INT NOT NULL,
    char_id int,
    type int,
    skill int,
    skill_level int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_gameoption (
    id INT NOT NULL,
    char_id int,
    game_option int,
    chat_window int,
	q_key int,
	w_key int,
	e_key int,
	r_key int,
	qwer_level int,
	skill_bind_0 int,
	skill_bind_1 int,
	skill_bind_2 int,
	skill_bind_3 int,
	skill_bind_4 int,
	skill_bind_5 int,
	skill_bind_6 int,
	skill_bind_7 int,
	skill_bind_8 int,
	skill_bind_9 int,
	extra_data int,
	change_skin int,
	additional_options int,
	button_bind_1 int,
	button_bind_2 int,
	button_bind_3 int,
	button_bind_4 int,
	button_bind_5 int,
	PRIMARY KEY (id),
	FOREIGN KEY (char_id) REFERENCES character_info(guid)
);
CREATE TABLE character_quest_evo (
    id INT NOT NULL,
    char_id int,
    state int,
    kill_count_1 int,
    kill_count_2 int,
    kill_count_3 int,
    kill_count_4 int,
    kill_count_5 int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);
CREATE TABLE character_friend (
    id INT NOT NULL,
    char_id int,
    friend_name VARCHAR(45),
    server_code int,
    online int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);
CREATE TABLE character_mail (
    id INT NOT NULL,
    char_id int,
    subject VARCHAR(45),
    message VARCHAR(45),
    direction VARCHAR(45),
    action int,
    photo int,
    window_guid int,
    date datetime(6),
    opened int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE guild_list (
    guild_id INT NOT NULL,
    guid int,
    name VARCHAR(45),
    emblem varbinary(32),
    notice VARCHAR(45),
    alliance int,
    hostil int,
    score int,
    PRIMARY KEY (guild_id)
);

CREATE TABLE guild_members (
    id INT NOT NULL,
    char_id int,
    guild_id int,
    ranking int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid),
    FOREIGN KEY (guild_id) REFERENCES guild_list(guild_id)
);

CREATE TABLE character_gens (
    id INT NOT NULL,
    char_id int,
    family int,
    level int,
    contribution int,
    reward_date datetime(6),
    join_date datetime(6),
    left_date datetime(6),
    ranking int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_gens_kill (
   	id INT NOT NULL,
    char_id int,
    killed_id int,
    count int,
    date datetime(6),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_helper (
    id INT NOT NULL,
    char_id int,
    option_flag_1 int,
	option_flag_2 int,
	item_pick_flag int,
	hunting_range int,
	item_pick_range int,
	distance int,
	attack_skill_1 int,
	attack_sec_skill_1 int,
	attack_sec_skill_2 int,
	attack_sec_delay_1 int,
	attack_sec_delay_2 int,
	buff_skill_1 int,
	buff_skill_2 int,
	buff_skill_3 int,
	time_space_casting int,
	percent_autopot int,
	percent_autoheal int,
	percent_partyheal int,
	percent_drainlife int,
	item_list int,
	buff_item_1 int,
	buff_item_2 int,
	buff_item_3 int,
	PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_buff (
    id INT NOT NULL,
    char_id int,
    character_buff int,
    effect_1 int,
    value_1 int,
    effect_2 int,
    value_2 int,
    effect_3 int,
    value_3 int,
    duration int,
    flags int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_restriction (
    id INT NOT NULL,
    char_id int,
    restriction int,
    time datetime(6),
    admin_name VARCHAR(45),
    reason VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_statistics (
    statistic_id INT NOT NULL,
    char_id int,
    count int,
    PRIMARY KEY (statistic_id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_item_delay (
    id INT NOT NULL,
    char_id int,
    item int,
    date datetime(6),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_chat_block (
    id INT NOT NULL,
    char_id int,
    blocked int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE party (
    id INT NOT NULL,
    guid INT,
    server int,
    PRIMARY KEY (id)
);

CREATE TABLE party_member (
    id INT NOT NULL,
    char_id int,
    server int,
    party int,
    member int,
    position int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE account_cash_shop_item (
    id INT NOT NULL,
    account_id int,
    product int,
    `option` int,
    serial VARCHAR(45),
    serial_cash_shop VARCHAR(45),
    `server` int,
    gift int,
    date datetime(6),
    PRIMARY KEY (id),
    FOREIGN KEY (account_id) REFERENCES account_data(account_id)
);

CREATE TABLE item_data (
    id INT NOT NULL,
	box int,
	slot int,
	entry int,
	`server` int,
	serial int,
	serial_cash_shop int,
	`level` int,
	durability int,
	durability_state int,
	skill int,
	luck int,
	`option` int,
	excellent int,
	ancient int,
	option_380 int,
	harmony int,
	socket_1 int,
	socket_2 int,
	socket_3 int,
	socket_4 int,
	socket_5 int,
	socket_bonus int,
	locked int,
	data_1 int,
	data_2 int,
	data_3 int,
	personal_store_price int,
	personal_store_job int,
	personal_store_jos int,
	expire_date datetime(6),
	flags int,
	PRIMARY KEY (id)
);

CREATE TABLE castle_siege_data (
    id INT NOT NULL,
    `owner` int,
    `status` int,
    tax_hunt int,
    tax_chaos int,
    tax_store int,
    hunt_allowed int,
    money int,
    PRIMARY KEY (id)
);

CREATE TABLE castle_siege_npc (
    npc_id INT NOT NULL,
    npc int,
    id int,
    defense_level int,
    regen_level int,
    life_level int,
    life int,
    PRIMARY KEY (npc_id)
);

CREATE TABLE castle_siege_guild (
    id INT NOT NULL,
    guild int,
    side int,
    score int,
    PRIMARY KEY (id)
);

CREATE TABLE castle_siege_registered_guild (
    register_id INT NOT NULL,
    guild int,
    marks int,
    PRIMARY KEY (register_id),
    FOREIGN KEY (guild) REFERENCES guild_list(guild_id)
);

CREATE TABLE server_signal (
    id INT NOT NULL,
    `server` int,
    `signal` int,
    data_1 int,
    data_2 int,
    data_3 int,
    PRIMARY KEY (id)
);

CREATE TABLE crywolf_data (
    id INT NOT NULL,
    state int,
    PRIMARY KEY (id)
);

CREATE TABLE character_kick (
    id INT NOT NULL,
    char_id int,
    character_name VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE item_pentagram_data (
    id INT NOT NULL,
	type int,
	`index` int,
	attribute int,
	tem_type int,
	item_index int,
	item_level int,
	option_index_rank_1 int,
	option_level_rank_1 int,
	option_index_rank_2 int,
	option_level_rank_2 int,
	option_index_rank_3 int,
	option_level_rank_3 int,
	option_index_rank_4 int,
	option_level_rank_4 int,
	option_index_rank_5 int,
	option_level_rank_5 int,
	serial_server VARCHAR(45),
	serial VARCHAR(45),
	flags int,
	data_1 int,
	data_2 int,
	data_3 int,
	PRIMARY KEY (id)
);

CREATE TABLE guild_matching (
    id INT NOT NULL,
    guild_id int,
    text VARCHAR(45),
    interest_type int,
    level_range int,
    class_type int,
    board_number int,
    `level` int,
    level_master int,
    race int,
    family int,
    PRIMARY KEY (id)
);

CREATE TABLE arka_war_data (
    id INT NOT NULL,
    guild int,
    attribute int,
    PRIMARY KEY (id)
);

CREATE TABLE serial_check (
    id INT NOT NULL,
    `server` int,
    serial int,
    type int,
    account_id int,
    ip VARCHAR(45),
    mac VARCHAR(45),
    disk_serial VARCHAR(45),
    PRIMARY KEY (id)
);

CREATE TABLE character_score (
    id INT NOT NULL,
    char_id int,
    type int,
    `level` int,
    score int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE event_ranking (
    event_id INT NOT NULL,
    event_ground int,
    char_id int,
    score int,
    PRIMARY KEY (event_id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE item_recovery (
  id INT NOT NULL,
  char_id int,
  item int,
	`level` int,
	durability int,
	skill int,
	luck int,
	`option` int,
	excellent int,
	ancient int,
	option_380 int,
	harmony int,
	socket_1 int,
	socket_2 int,
	socket_3 int,
	socket_4 int,
	socket_5 int,
	socket_bonus int,
	data_1 int,
	data_2 int,
	data_3 int,
	serial_server int,
	serial int,
	serial_cash_shop int,
	flags int,
	PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_hunting_record (
    id INT NOT NULL,
    char_id int,
    world int,
    year int,
    month int,
    day int,
    level int,
    duration int,
    damage int,
    elemental_damage int,
    healing int,
    killed_count int,
    earned_experience int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE monster_respawn (
    id INT NOT NULL,
    `server` int,
    guid int,
    date int,
    PRIMARY KEY (id)
);

CREATE TABLE character_labyrinth (
    id INT NOT NULL,
    char_id int,
    stage int,
    level int,
    status int,
    killed_monsters int,
    earned_experience int,
    completed_missions int,
    date datetime(6),
    goblin_state int,
    day_first datetime(6),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_labyrinth_zone (
    id INT NOT NULL,
    char_id int,
    idx int,
    subidx int,
    mission_id_1 int,
    mission_id_2 int,
    mission_id_3 int,
    mission_id_4 int,
    mission_id_5 int,
    mission_count_1 int,
    mission_count_2 int,
    mission_count_3 int,
    mission_count_4 int,
    mission_count_5 int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_labyrinth_level (
    id INT NOT NULL,
    char_id int,
    level int,
    amount int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE event_ranking_labyrinth (
    id INT NOT NULL,
    char_id int,
    level int,
    stage int,
    `index` VARCHAR(45),
    killed_monsters int,
    earned_experience int,
    completed_missions int,
    score VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_event_count (
    id INT NOT NULL,
    char_id int,
    event_id int,
    count VARCHAR(45),
    day datetime(6),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);
/** COMMON DATABASE **/
CREATE TABLE character_mini_bomb (
    id INT NOT NULL,
    char_id int,
    state VARCHAR(45),
    score VARCHAR(45),
    total_score VARCHAR(45),
    cdate datetime(6),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_mini_bomb_grid (
    id INT NOT NULL,
    char_id int,
    cell VARCHAR(45),
    `value` VARCHAR(45),
    `status` VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE event_mini_bomb_ranking (
    id INT NOT NULL,
    char_id int,
    state VARCHAR(45),
    score VARCHAR(45),
    bombs_founded int,
    bombs_failed int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_mu_roomy (
    id INT NOT NULL,
    char_id int,
    playing int,
    type VARCHAR(45),
    score VARCHAR(45),
    card_count VARCHAR(45),
    special_card_count int,
    date datetime(6),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_mu_roomy_deck (
    id INT NOT NULL,
		char_id int,
    type VARCHAR(45),
    slot VARCHAR(45),
    color VARCHAR(45),
    number VARCHAR(45),
    state VARCHAR(45),
    play_slot int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE event_mu_roomy_ranking (
    id INT NOT NULL,
    char_id int,
    type VARCHAR(45),
    score VARCHAR(45),
    remain_card int,
    remain_special_card int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_warp_favorite_list (
    id INT NOT NULL,
    char_id int,
    slot VARCHAR(45),
    `data` datetime(6),
    warp_id VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_quest_guided (
    id INT NOT NULL,
    char_id int,
    quest VARCHAR(45),
    count VARCHAR(45),
    state VARCHAR(45),
    date datetime(6),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_jewel_bingo (
    id INT NOT NULL,
    char_id int,
    state VARCHAR(45),
    box VARCHAR(45),
    count VARCHAR(45),
    score1 VARCHAR(45),
    score2 VARCHAR(45),
    score3 VARCHAR(45),
    date datetime(6),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_jewel_bingo_grid (
    id INT NOT NULL,
    char_id int,
    type VARCHAR(45),
    slot VARCHAR(45),
    `value` VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE event_jewel_bingo_ranking (
    id INT NOT NULL,
    char_id int,
    type VARCHAR(45),
    score1 VARCHAR(45),
    score2 VARCHAR(45),
    score3 VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE event_scramble_ranking (
    id INT NOT NULL,
    char_id int,
    word VARCHAR(45),
    shuffle_word VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE event_race_ranking (
    id INT NOT NULL,
    char_id int,
    race VARCHAR(45),
    `start` VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE guild_score (
    id INT NOT NULL,
    guild_id int,
    score int,
    PRIMARY KEY (id),
    FOREIGN KEY (guild_id) REFERENCES guild_list(guild_id)
);

CREATE TABLE event_castle_siege_ranking (
    id INT NOT NULL,
    guild_id int,
    guild_name VARCHAR(45),
    character_count VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (guild_id) REFERENCES guild_list(guild_id)
);

CREATE TABLE event_castle_siege_time (
    id INT NOT NULL,
    char_id int,
    char_name VARCHAR(45),
    char_rank int,
    player_data int,
    guild_id int,
    guild_name VARCHAR(45),
    type VARCHAR(45),
    time datetime(6),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid),
    FOREIGN KEY (guild_id) REFERENCES guild_list(guild_id)
);

CREATE TABLE event_castle_siege_kill (
    id INT NOT NULL,
    char_id int,
    char_name VARCHAR(45),
    char_rank int,
    state VARCHAR(45),
    player_data_01 int,
    guild_id_01 int,
    guild_name_01 int,
    killer_id int,
    killer_name int,
    killer_rank int,
    player_data_02 int,
    guild_id_02 int,
    guild_name_02 int,
    world int,
    world_x int,
    world_y int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE event_arka_war_kill (
    id INT NOT NULL,
    char_id int,
    char_name VARCHAR(45),
    char_rank int,
    player_data_01 int,
    guild_id_01 int,
    guild_name_01 int,
    killer_id int,
    killer_name int,
    killer_rank int,
    player_data_02 int,
    guild_id_02 int,
    guild_name_02 int,
    world int,
    world_x int,
    world_y int,
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE event_arka_war_ranking (
    id INT NOT NULL,
    guild_id_01 int,
    guild_name_01 VARCHAR(45),
    guild_id_02 int,
    guild_name_02 VARCHAR(45),
    character_count VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (guild_id_01) REFERENCES guild_list(guild_id),
    FOREIGN KEY (guild_id_02) REFERENCES guild_list(guild_id)
);

CREATE TABLE character_deleted (
    id INT NOT NULL,
    account_id int,
    char_id int,
    name VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (account_id) REFERENCES account_data(account_id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_date (
    id INT NOT NULL,
    char_id int,
    date VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_majestic_tree (
    idm INT NOT NULL,
    char_id int,
    type VARCHAR(45),
    section VARCHAR(45),
    id int,
    level VARCHAR(45),
    PRIMARY KEY (idm),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_majestic_stats (
    stats_id INT NOT NULL,
    char_id int,
    id int,
    level VARCHAR(45),
    PRIMARY KEY (stats_id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_numeric_baseball (
    id INT NOT NULL,
    char_id int,
    state VARCHAR(45),
    score VARCHAR(45),
    number_1 VARCHAR(45),
    number_2 VARCHAR(45),
    number_3 VARCHAR(45),
    numbers VARCHAR(45),
    strikes VARCHAR(45),
    balls VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE event_numeric_baseball_ranking (
    id INT NOT NULL,
    char_id int,
    score VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE event_labyrinth_schedule (
    id INT NOT NULL,
    server VARCHAR(45),
    state VARCHAR(45),
    start_date datetime(6),
    PRIMARY KEY (id)
);

CREATE TABLE event_labyrinth_league (
    id INT NOT NULL,
    category VARCHAR(45),
    char_id int,
    char_name VARCHAR(45),
    char_class VARCHAR(45),
    score VARCHAR(45),
    league_score VARCHAR(45),
    time datetime(6),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE event_dungeon_instance (
    dg_id INT NOT NULL,
    char_id int,
    id VARCHAR(45),
    time datetime(6),
    PRIMARY KEY (dg_id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_quest_mu (
    id INT NOT NULL,
    char_id int,
    quest_id int,
    state VARCHAR(45),
    objective VARCHAR(45),
    date datetime(6),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);

CREATE TABLE character_monster_soul (
    soul_id INT NOT NULL,
    char_id int,
    type VARCHAR(45),
    id int,
    amount VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (char_id) REFERENCES character_info(guid)
);
