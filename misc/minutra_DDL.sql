CREATE SCHEMA mnt
AUTHORIZATION rsk;

CREATE TABLE mnt.app_properties(
   id SERIAL NOT NULL
  ,environment int NOT NULL
  ,prop_key VARCHAR(32) NOT NULL
  ,prop_value VARCHAR(64) NOT NULL
  ,PRIMARY KEY(id)
  ,CONSTRAINT unq_appprop_envkey UNIQUE (environment, prop_key, prop_value)
);

CREATE TABLE mnt.users (
   id SERIAL NOT NULL
  ,email VARCHAR(100) NOT NULL
  ,password VARCHAR(128)
  ,name VARCHAR(100) NOT NULL
  ,job_title VARCHAR(100) NULL
  ,is_enabled BIT NOT NULL
  ,creation_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,modification_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,PRIMARY KEY(id)
);

CREATE TABLE mnt.roles (
   id SERIAL NOT NULL
  ,name VARCHAR(50) NOT NULL
  ,PRIMARY KEY(id)
);

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

CREATE TABLE mnt.movements (
   id SERIAL NOT NULL
  ,id_user INT NOT NULL
  ,detail VARCHAR(300) NOT NULL
  ,creation_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,PRIMARY KEY(id)
  ,FOREIGN KEY (id_user) REFERENCES mnt.users(id) ON DELETE CASCADE
);

CREATE TABLE mnt.summaries(
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

CREATE TABLE mnt.summary_documents(
   id SERIAL NOT NULL
  ,id_summary INT NOT NULL
  ,name VARCHAR(500) NULL
  ,creation_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,modification_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,PRIMARY KEY(id)
  ,FOREIGN KEY (id_summary) REFERENCES mnt.summaries(id) ON DELETE CASCADE
);

CREATE TABLE mnt.summary_members(
   id SERIAL NOT NULL
  ,id_user INT NOT NULL
  ,id_summary INT NOT NULL
  ,creation_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,modification_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,PRIMARY KEY(id)
  ,FOREIGN KEY (id_user) REFERENCES mnt.users(id) ON DELETE CASCADE
  ,FOREIGN KEY (id_summary) REFERENCES mnt.summaries(id) ON DELETE CASCADE
  ,CONSTRAINT unq_mnt_summmemb_summanduser UNIQUE (id_summary, id_user)
);

CREATE TABLE mnt.summary_task_types(
   id SERIAL NOT NULL
  ,name varchar(20) NOT NULL
  ,PRIMARY KEY(id)
  ,CONSTRAINT unq_mnt_summtsktp_name UNIQUE(name)
);

CREATE TABLE mnt.summary_tasks(
   id SERIAL NOT NULL
  ,id_user INT NOT NULL
  ,id_summary INT NOT NULL
  ,id_summary_task_type INT NOT NULL
  ,detail VARCHAR(1000) NOT NULL
  ,due_date TIMESTAMP NULL
  ,is_done BIT NOT NULL
  ,creation_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,modification_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,PRIMARY KEY(id)
  ,FOREIGN KEY (id_user) REFERENCES mnt.users(id) ON DELETE CASCADE
  ,FOREIGN KEY (id_summary) REFERENCES mnt.summaries(id) ON DELETE CASCADE
  ,FOREIGN KEY (id_summary_task_type) REFERENCES mnt.summary_task_types(id) ON DELETE CASCADE
);
