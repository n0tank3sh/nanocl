-- Your SQL goes here
CREATE TABLE IF NOT EXISTS "volumes" (
  "key" UUID PRIMARY KEY NOT NULL DEFAULT uuid_generate_v4(),
  "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  "updated_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  "name" VARCHAR NOT NULL,
  "source" VARCHAR NOT NULL,
  "destination" VARCHAR NOT NULL,
  "subpath" VARCHAR NOT NULL,
  "read_only" BOOLEAN NOT NULL,
  "nocopy" BOOLEAN NOT NULL,
  "opt" JSONB NOT NULL
);

CREATE INDEX "volumes_key_idx" ON "volumes" ("key"); 
CREATE INDEX "volumes_created_at_idx" ON "volumes" ("created_at"); 
CREATE INDEX "volumes_updated_at_idx" ON "volumes" ("updated_at"); 
CREATE INDEX "volumes_name_idx" ON "volumes" ("name");
CREATE INDEX "volumes_source_idx" ON "volumes" ("source");
CREATE INDEX "volumes_destination_idx" ON "volumes" ("destination");
CREATE INDEX "volumes_subpath_idx" ON "volumes" ("subpath");
CREATE INDEX "volumes_read_only_idx" ON "volumes" ("read_only");
CREATE INDEX "volumes_nocopy_idx" ON "volumes" ("nocopy");
CREATE INDEX "volumes_opt_idx" ON "volumes" ("opt");
