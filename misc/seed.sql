-- TODO: Agregar una columna llamada descripción, para el rol
insert into mnt.roles(name) values('mnt_user');
insert into mnt.roles(name) values('mnt_administrator');


insert into mnt.users(user_name, email, password, full_name, job_title, is_enabled) values('admin', 'jach@outlook.com', 'Administrador', 'Administrador', 'El Administrador', TRUE);
insert into mnt.users(user_name, email, password, full_name, job_title, is_enabled) values('jach', 'angeljach@gmail.com', 'Angel', 'Angel', 'Auditor Interno', TRUE);

insert into mnt.user_roles(id_user, id_role) values(1,2);
insert into mnt.user_roles(id_user, id_role) values(2,1);