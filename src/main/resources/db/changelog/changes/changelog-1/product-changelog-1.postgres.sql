create table deployment_data(
	id bigint SERIAL, 
	application_Type varchar(255),
	as_of_date long,
	component_id varchar(255),
	component_name varchar(255),
	component_version varchar(20),
	deployed boolean,
	environment_name varchar(20),
	environment_url varchar(255),
	resource_name varchar(255)
);
