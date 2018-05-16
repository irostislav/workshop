-- begin WORKSHOP_CLIENT
create table WORKSHOP_CLIENT (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    PHONE_NUMBER varchar(50) not null,
    EMAIL varchar(20) not null,
    --
    primary key (ID)
)^
-- end WORKSHOP_CLIENT
-- begin WORKSHOP_MECHANIC
create table WORKSHOP_MECHANIC (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    USER_ID uuid not null,
    HOURLY_RATE decimal(19, 2) not null,
    --
    primary key (ID)
)^
-- end WORKSHOP_MECHANIC
-- begin WORKSHOP_SPARE_PART
create table WORKSHOP_SPARE_PART (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TITLE varchar(255) not null,
    DESCRIPTION text,
    PRICE decimal(19, 2) not null,
    --
    primary key (ID)
)^
-- end WORKSHOP_SPARE_PART
-- begin WORKSHOP_ORDER
create table WORKSHOP_ORDER (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    CLIENT_ID uuid not null,
    MECHANIC_ID uuid not null,
    DESCRIPTION text,
    HOURS_SPENT integer,
    AMOUNT decimal(19, 2),
    STATUS integer,
    --
    primary key (ID)
)^
-- end WORKSHOP_ORDER
-- begin WORKSHOP_ORDER_SPARE_PART_LINK
create table WORKSHOP_ORDER_SPARE_PART_LINK (
    ORDER_ID uuid,
    SPARE_PART_ID uuid,
    primary key (ORDER_ID, SPARE_PART_ID)
)^
-- end WORKSHOP_ORDER_SPARE_PART_LINK
