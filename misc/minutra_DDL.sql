CREATE SCHEMA mnt
AUTHORIZATION rsk;

/* POSTGRESQL - HELP
   http://www.postgresql.org/docs/9.1/static/sql-altertable.html

*/

CREATE TABLE mnt.app_properties(
   id SERIAL NOT NULL
  ,environment int NOT NULL
  ,prop_key VARCHAR(32) NOT NULL
  ,prop_value VARCHAR(64) NOT NULL
  ,PRIMARY KEY(id)
  ,CONSTRAINT unq_appprop_envkey UNIQUE (environment, prop_key, prop_value)
);
ALTER TABLE mnt.app_properties OWNER TO rsk;

CREATE TABLE mnt.users (
   id SERIAL NOT NULL
  ,user_name VARCHAR(30) NOT NULL
  ,email VARCHAR(100) NOT NULL
  ,password VARCHAR(128)
  ,full_name VARCHAR(100) NOT NULL
  ,job_title VARCHAR(100) NULL
  ,is_enabled BOOLEAN NOT NULL
  ,creation_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,modification_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,PRIMARY KEY(id)
);
ALTER TABLE mnt.users OWNER TO rsk;

CREATE TABLE mnt.roles (
   id SERIAL NOT NULL
  ,name VARCHAR(50) NOT NULL
  ,PRIMARY KEY(id)
);
ALTER TABLE mnt.roles OWNER TO rsk;

CREATE TABLE mnt.user_roles (
   id SERIAL NOT NULL
  ,id_user INT NOT NULL
  ,id_role INT NOT NULL
  ,creation_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,modification_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,PRIMARY KEY(id)
  ,FOREIGN KEY (id_user) REFERENCES mnt.users(id) ON DELETE CASCADE
  ,FOREIGN KEY (id_role) REFERENCES mnt.roles(id) ON DELETE CASCADE
  ,CONSTRAINT unq_user_roles UNIQUE(id_user, id_role)
);
ALTER TABLE mnt.user_roles OWNER TO rsk;

CREATE TABLE mnt.movements (
   id SERIAL NOT NULL
  ,id_user INT NOT NULL
  ,detail VARCHAR(300) NOT NULL
  ,creation_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,PRIMARY KEY(id)
  ,FOREIGN KEY (id_user) REFERENCES mnt.users(id) ON DELETE CASCADE
);
ALTER TABLE mnt.movements OWNER TO rsk;

CREATE TABLE mnt.minutes(
   id SERIAL NOT NULL
  ,id_user INT NOT NULL
  ,title VARCHAR(500) NOT NULL
  ,location VARCHAR(500)
  ,from_date TIMESTAMP NOT NULL
  ,to_date TIMESTAMP NOT NULL
  ,agenda VARCHAR(10000) NULL
  ,detail TEXT NULL
  ,creation_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,modification_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,PRIMARY KEY(id)
  ,FOREIGN KEY (id_user) REFERENCES mnt.users(id) ON DELETE CASCADE
);
ALTER TABLE mnt.minutes OWNER TO rsk;

CREATE TABLE mnt.minute_documents(
   id SERIAL NOT NULL
  ,id_minute INT NOT NULL
  ,name VARCHAR(500) NULL
  ,creation_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,modification_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,PRIMARY KEY(id)
  ,FOREIGN KEY (id_minute) REFERENCES mnt.minutes(id) ON DELETE CASCADE
);
ALTER TABLE mnt.minute_documents OWNER TO rsk;

CREATE TABLE mnt.minute_members(
   id SERIAL NOT NULL
  ,id_user INT NOT NULL
  ,id_minute INT NOT NULL
  ,creation_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,PRIMARY KEY(id)
  ,FOREIGN KEY (id_user) REFERENCES mnt.users(id) ON DELETE CASCADE
  ,FOREIGN KEY (id_minute) REFERENCES mnt.minutes(id) ON DELETE CASCADE
  ,CONSTRAINT unq_mnt_minmemb_minanduser UNIQUE (id_minute, id_user)
);
ALTER TABLE mnt.minute_members OWNER TO rsk;

CREATE TABLE mnt.minute_tasks(
   id SERIAL NOT NULL
  ,id_user INT NOT NULL
  ,id_minute INT NOT NULL
  ,detail VARCHAR(1000) NOT NULL
  ,due_date TIMESTAMP NULL
  ,is_done BOOLEAN NOT NULL
  ,creation_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,modification_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,PRIMARY KEY(id)
  ,FOREIGN KEY (id_user) REFERENCES mnt.users(id) ON DELETE CASCADE
  ,FOREIGN KEY (id_minute) REFERENCES mnt.minutes(id) ON DELETE CASCADE
);
ALTER TABLE mnt.minute_tasks OWNER TO rsk;

CREATE TABLE mnt.minute_task_comments(
   id SERIAL NOT NULL
  ,id_minute_task INT NOT NULL
  ,id_user INT NOT NULL
  ,detail VARCHAR(1000) NOT NULL
  ,creation_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,PRIMARY KEY(id)
  ,FOREIGN KEY (id_minute_task) REFERENCES mnt.minute_tasks(id) ON DELETE CASCADE
  ,FOREIGN KEY (id_user) REFERENCES mnt.users(id) ON DELETE CASCADE
);
ALTER TABLE mnt.minute_task_comments OWNER TO rsk;
