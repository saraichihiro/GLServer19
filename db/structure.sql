CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE IF NOT EXISTS "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "password_digest" varchar, "remember_digest" varchar, "admin" boolean DEFAULT 'f', "description" text);
CREATE TABLE sqlite_sequence(name,seq);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE TABLE IF NOT EXISTS "projects" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "start" date, "end" date, "length" integer, "description" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE IF NOT EXISTS "sprints" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "no" integer, "description" text, "project_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "start" date, "end" date);
CREATE INDEX "index_sprints_on_project_id" ON "sprints" ("project_id");
CREATE UNIQUE INDEX "index_sprints_on_no" ON "sprints" ("no");
CREATE TABLE IF NOT EXISTS "scrum_members" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "role" integer, "description" text, "project_id" integer, "user_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_scrum_members_on_project_id" ON "scrum_members" ("project_id");
CREATE INDEX "index_scrum_members_on_user_id" ON "scrum_members" ("user_id");
INSERT INTO schema_migrations (version) VALUES ('20150920074544');

INSERT INTO schema_migrations (version) VALUES ('20150920091119');

INSERT INTO schema_migrations (version) VALUES ('20150920093807');

INSERT INTO schema_migrations (version) VALUES ('20150921063312');

INSERT INTO schema_migrations (version) VALUES ('20150921141641');

INSERT INTO schema_migrations (version) VALUES ('20170706073736');

INSERT INTO schema_migrations (version) VALUES ('20171208084517');

INSERT INTO schema_migrations (version) VALUES ('20171208085936');

INSERT INTO schema_migrations (version) VALUES ('20171208090825');

INSERT INTO schema_migrations (version) VALUES ('20171208091831');

INSERT INTO schema_migrations (version) VALUES ('20171214103130');

