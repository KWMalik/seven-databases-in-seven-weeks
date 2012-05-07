CREATE RULE insert_holidays AS ON INSERT TO holidays DO INSTEAD
	INSERT INTO EVENTS(title, starts) values (NEW.name, NEW.date);