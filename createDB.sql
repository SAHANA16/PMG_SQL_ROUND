#create marketing schema
create schema Marketing;
use Marketing;

#create marketing_data table
create table marketing_data ( id int not null primary key auto_increment, date datetime, geo varchar(2), impressions float, clicks float );

#create store revenue table
create table store_revenue ( id int not null primary key auto_increment, date datetime, brand_id int, store_location varchar(250), revenue float);

