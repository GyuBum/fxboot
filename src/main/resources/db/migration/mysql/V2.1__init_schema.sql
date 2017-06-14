create table t_board (board_id bigint not null auto_increment, created_at datetime, created_by varchar(255), updated_at datetime, updated_by varchar(255), content longtext not null, del_yn varchar(1), secret varchar(1), title varchar(100) not null, view_count integer, type varchar(10), primary key (board_id)) ENGINE=InnoDB;
create table t_board_type (type varchar(10) not null, created_at datetime, created_by varchar(255), updated_at datetime, updated_by varchar(255), type_desc varchar(255), name varchar(100), primary key (type)) ENGINE=InnoDB;
create table t_comment (comment_id bigint not null auto_increment, created_at datetime, created_by varchar(255), updated_at datetime, updated_by varchar(255), content longtext not null, del_yn varchar(1), password varchar(100), secret varchar(1), writer varchar(50), board_id bigint, primary key (comment_id)) ENGINE=InnoDB;
create table t_common_code (code varchar(100) not null, group_cd varchar(100) not null, created_at datetime, created_by varchar(255), updated_at datetime, updated_by varchar(255), data1 varchar(100), data2 varchar(100), data3 varchar(100), data4 integer, data5 integer, group_nm varchar(100) not null, name varchar(50) not null, remark varchar(200), sort integer, use_yn varchar(1), primary key (code, group_cd)) ENGINE=InnoDB;
create table t_file (id bigint not null auto_increment, created_at datetime, created_by varchar(255), updated_at datetime, updated_by varchar(255), del_yn varchar(1), file_desc varchar(255), extension varchar(10), file_nm varchar(255), file_size bigint, file_type varchar(30), save_nm varchar(255), save_path varchar(150), sort integer, target_id varchar(100), target_type varchar(50), primary key (id)) ENGINE=InnoDB;
create table t_menu (menu_id bigint not null auto_increment, created_at datetime, created_by varchar(255), updated_at datetime, updated_by varchar(255), d_level integer, menu_grp_cd varchar(100), menu_nm varchar(100), parent_id bigint, prog_url varchar(255), sort integer, target_blank varchar(255), use_yn varchar(255), view_anony varchar(255), primary key (menu_id)) ENGINE=InnoDB;
alter table t_board add constraint FK3kbl1uyru5mq59e0x0e4yxaf5 foreign key (type) references t_board_type (type);
alter table t_comment add constraint FKjrddp9nnlc8u4mehg8q7ssbhm foreign key (board_id) references t_board (board_id);
alter table t_menu add constraint FK4paxqyebl0scq6ur9osr0f56k foreign key (parent_id) references t_menu (menu_id);