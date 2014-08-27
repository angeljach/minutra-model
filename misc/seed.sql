-- TODO: Agregar una columna llamada descripción, para el rol
insert into mnt.roles(name) values('mnt_user');
insert into mnt.roles(name) values('mnt_administrator');


insert into mnt.users(email, password, name, job_title, is_enabled) values('jach@outlook.com', 'admin', 'Administrador', 'El Administrador', TRUE);
insert into mnt.users(email, password, name, job_title, is_enabled) values('angeljach@gmail.com', 'jach', 'Angel', 'Auditor Interno', TRUE);