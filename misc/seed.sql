-- TODO: Agregar una columna llamada descripción, para el rol
insert into mnt.roles(name) values('mnt_user');
insert into mnt.roles(name) values('mnt_administrator');


insert into mnt.users(email, password, name, job_title, is_enabled) values('jach@outlook.com', 'admin', 'Administrador', 'El Administrador', TRUE);
insert into mnt.users(email, password, name, job_title, is_enabled) values('angeljach@gmail.com', 'jach', 'Angel', 'Auditor Interno', TRUE);

insert into mnt.user_roles(id_user, id_role) values(1,2);
insert into mnt.user_roles(id_user, id_role) values(2,1);