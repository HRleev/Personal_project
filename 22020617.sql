use db_spring_mvc;

create table member_table(
                             m_id bigint auto_increment,
                             memberId varchar(30) ,
                             memberPassword varchar(30) not null ,
                             memberName varchar(30)not null unique ,
                             memberEmail varchar(50),
                             memberMobile varchar(30),
                             memberLocation varchar(100),

                             constraint pk_member_table primary key(m_id)
);

create table company_table(
                              c_id bigint auto_increment,
                              companyId varchar(30)  ,
                              companyPassword varchar(30) not null ,
                              companyName varchar(30) not null unique,
                              companyEmail varchar(50) ,
                              companyMobile varchar(30) not null ,
                              companyNumber varchar(30) unique ,
                              companyFileName varchar(500),
                              companyLocation varchar(50) not null ,


                              constraint pk_company_table primary key (c_id)
);

create table menu_table(
                           m_id bigint auto_increment,
                           companyName varchar(30),
                           c_menu varchar(50),
                           c_introduction varchar(500),
                           c_menuFileName varchar(500),
                           c_location varchar(500),
                           bootCount int default 0,
                           constraint pk_menu_table primary key (m_id),
                           constraint fk_menu_table foreign key (companyName) references company_table(companyName) on delete cascade
);


create table boot_table(
                           b_id bigint auto_increment,
                           companyName varchar(30),
                           memberName varchar(30),
                           bootStrength int,
                           bootDate date,

                           constraint pk_boot_table primary key (b_id),
                           constraint fk_boot_table foreign key (companyName)references company_table(companyName) on delete cascade,
                           constraint fk_boot_table1 foreign key (memberName) references member_table(memberName) on delete cascade
);

create table review_table (
                              r_id bigint auto_increment,
                              companyName varchar(30),
                              memberName varchar(30),
                              reviewContents varchar(500),
                              reviewTime datetime default now(),

                              constraint pk_review_table primary key (r_id),
                              constraint fk_review_table foreign key (companyName) references company_table(companyName) on delete cascade,
                              constraint fk_review_table1 foreign key (memberName) references member_table(memberName) on delete cascade
);

select * from member_table;
select * from company_table;
select *from menu_table;
select * from boot_table;
select * from review_table;

select * from menu_table order by bootCount desc;

drop table member_table;
drop table company_table;
drop table menu_table;
drop table boot_table;
drop table review_table;
