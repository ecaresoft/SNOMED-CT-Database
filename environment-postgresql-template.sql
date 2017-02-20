/* Template for creating the S-CT RF2 data tables - TYPE replaced with d, s and f at runtime*/

/* Section for type : TYPE */

drop table if exists concept_TYPE cascade;
create table concept_TYPE(
id varchar(18) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
definitionstatusid varchar(18) not null);
CREATE INDEX idx_id on concept_TYPE(id);
CREATE INDEX idx_effectivetime on concept_TYPE(effectivetime);
CREATE INDEX idx_active on concept_TYPE(active);
CREATE INDEX idx_moduleid on concept_TYPE(moduleid);
CREATE INDEX idx_definitionstatusid on concept_TYPE(definitionstatusid);


drop table if exists description_TYPE cascade;
create table description_TYPE(
id varchar(18) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
conceptid varchar(18) not null,
languagecode varchar(2) not null,
typeid varchar(18) not null,
term varchar(255) not null,
casesignificanceid varchar(18) not null);
CREATE INDEX idx_id on description_TYPE (id);
CREATE INDEX idx_effectivetime on description_TYPE (effectivetime);
CREATE INDEX idx_active on description_TYPE (active);
CREATE INDEX idx_moduleid on description_TYPE (moduleid);
CREATE INDEX idx_conceptid on description_TYPE (conceptid);
CREATE INDEX idx_languagecode on description_TYPE (languagecode);
CREATE INDEX idx_typeid on description_TYPE (typeid);
CREATE INDEX idx_casesignificanceid on description_TYPE (casesignificanceid);


drop table if exists textdefinition_TYPE cascade;
create table textdefinition_TYPE(
id varchar(18) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
conceptid varchar(18) not null,
languagecode varchar(2) not null,
typeid varchar(18) not null,
term varchar(1024) not null,
casesignificanceid varchar(18) not null
);

drop table if exists relationship_TYPE cascade;
create table relationship_TYPE(
id varchar(18) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
sourceid varchar(18) not null,
destinationid varchar(18) not null,
relationshipgroup varchar(18) not null,
typeid varchar(18) not null,
characteristictypeid varchar(18) not null,
modifierid varchar(18) not null
);

drop table if exists stated_relationship_TYPE cascade;
create table stated_relationship_TYPE(
id varchar(18) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
sourceid varchar(18) not null,
destinationid varchar(18) not null,
relationshipgroup varchar(18) not null,
typeid varchar(18) not null,
characteristictypeid varchar(18) not null,
modifierid varchar(18) not null
);

drop table if exists langrefset_TYPE cascade;
create table langrefset_TYPE(
id varchar(36) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
refsetid varchar(18) not null,
referencedcomponentid varchar(18) not null,
acceptabilityid varchar(18) not null
);

drop table if exists associationrefset_TYPE cascade;
create table associationrefset_TYPE(
id varchar(36) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
refsetid varchar(18) not null,
referencedcomponentid varchar(18) not null,
targetcomponentid varchar(18) not null
);

drop table if exists attributevaluerefset_TYPE cascade;
create table attributevaluerefset_TYPE(
id varchar(36) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
refsetid varchar(18) not null,
referencedcomponentid varchar(18) not null,
valueid varchar(18) not null
);

drop table if exists simplemaprefset_TYPE cascade;
create table simplemaprefset_TYPE(
id varchar(36) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
refsetid varchar(18) not null,
referencedcomponentid varchar(18) not null,
maptarget varchar(32) not null
);

drop table if exists simplerefset_TYPE cascade;
create table simplerefset_TYPE(
id varchar(36) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
refsetid varchar(18) not null,
referencedcomponentid varchar(18) not null
);

drop table if exists complexmaprefset_TYPE cascade;
create table complexmaprefset_TYPE(
id varchar(36) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
refsetid varchar(18) not null,
referencedcomponentid varchar(18) not null,
mapGroup smallint not null,
mapPriority smallint not null,
mapRule varchar(18),
mapAdvice varchar(18),
mapTarget varchar(18),
correlationId varchar(18) not null
);

