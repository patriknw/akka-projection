
#create-table-postgres-uppercase
CREATE TABLE IF NOT EXISTS "AKKA_PROJECTION_OFFSET_STORE" (
  "PROJECTION_NAME" VARCHAR(255) NOT NULL,
  "PROJECTION_KEY" VARCHAR(255) NOT NULL,
  "CURRENT_OFFSET" VARCHAR(255) NOT NULL,
  "MANIFEST" VARCHAR(4) NOT NULL,
  "MERGEABLE" BOOLEAN NOT NULL,
  "LAST_UPDATED" BIGINT NOT NULL,
  PRIMARY KEY("PROJECTION_NAME", "PROJECTION_KEY")
);

CREATE INDEX IF NOT EXISTS "PROJECTION_NAME_INDEX" ON "AKKA_PROJECTION_OFFSET_STORE" ("PROJECTION_NAME");

CREATE TABLE IF NOT EXISTS "AKKA_PROJECTION_MANAGEMENT" (
  "PROJECTION_NAME" VARCHAR(255) NOT NULL,
  "PROJECTION_KEY" VARCHAR(255) NOT NULL,
  "PAUSED" BOOLEAN NOT NULL,
  "LAST_UPDATED" BIGINT NOT NULL,
  PRIMARY KEY("PROJECTION_NAME", "PROJECTION_KEY")
);
#create-table-postgres-uppercase
