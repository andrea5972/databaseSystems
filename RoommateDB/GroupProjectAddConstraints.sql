use roommate;

alter table the_user
	add constraint pk_the_user_user_ID primary key (user_ID);
    
alter table city
	add constraint pk_city_city_ID primary key (city_ID);
    
alter table user_attributes
	add constraint pk_user_attributes_user_ID primary key (user_ID), 
    add constraint fk_user_attributes_user_ID foreign key (user_ID) 
		references the_user (user_ID);

alter table user_authentication
	add constraint pk_user_authentication_user_ID primary key (user_ID),
	add constraint fk_user_authentication_user_ID foreign key (user_ID)
		references the_user (user_ID);

alter table has_room
	add constraint pk_has_room_user_ID primary key (user_ID),
	add constraint fk_has_room_user_ID foreign key (user_ID)
		references the_user (user_ID);

alter table place_type
	add constraint pk_place_type_type_ID primary key (type_ID);

alter table needs_room
	add constraint pk_needs_room_user_ID primary key (user_ID),
	add constraint fk_needs_room_user_ID foreign key (user_ID)
		references the_user (user_ID),
    add constraint fk_needs_room_city_ID foreign key (city_ID)
		references city (city_ID);

alter table place
	add constraint pk_place_place_ID primary key (place_ID),
	add constraint fk_place_type_ID foreign key (type_ID)
		references place_type (type_ID),
	add constraint fk_place_city_ID foreign key (city_ID)
		references city (city_ID),
	add constraint fk_place_user_ID foreign key (user_ID)
		references the_user (user_ID);
        
alter table place_attributes
	add constraint pk_place_attributes_place_ID primary key (place_ID),
	add constraint fk_place_attributes_place_ID foreign key (place_ID)
		references place (place_ID);