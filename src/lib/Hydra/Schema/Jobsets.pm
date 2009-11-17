package Hydra::Schema::Jobsets;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("Jobsets");
__PACKAGE__->add_columns(
  "name",
  {
    data_type => "text",
    default_value => undef,
    is_foreign_key => 1,
    is_nullable => 0,
    size => undef,
  },
  "project",
  {
    data_type => "text",
    default_value => undef,
    is_foreign_key => 1,
    is_nullable => 0,
    size => undef,
  },
  "description",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "nixexprinput",
  {
    data_type => "text",
    default_value => undef,
    is_foreign_key => 1,
    is_nullable => 0,
    size => undef,
  },
  "nixexprpath",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 0,
    size => undef,
  },
  "errormsg",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "errortime",
  {
    data_type => "integer",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "lastcheckedtime",
  {
    data_type => "integer",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "enabled",
  { data_type => "integer", default_value => 1, is_nullable => 0, size => undef },
);
__PACKAGE__->set_primary_key("project", "name");
__PACKAGE__->belongs_to("project", "Hydra::Schema::Projects", { name => "project" });
__PACKAGE__->belongs_to(
  "jobsetinput",
  "Hydra::Schema::JobsetInputs",
  { jobset => "name", name => "nixexprinput", project => "project" },
);
__PACKAGE__->has_many(
  "jobsetinputs",
  "Hydra::Schema::JobsetInputs",
  {
    "foreign.jobset"  => "self.name",
    "foreign.project" => "self.project",
  },
);
__PACKAGE__->has_many(
  "jobs",
  "Hydra::Schema::Jobs",
  {
    "foreign.jobset"  => "self.name",
    "foreign.project" => "self.project",
  },
);
__PACKAGE__->has_many(
  "builds",
  "Hydra::Schema::Builds",
  {
    "foreign.jobset"  => "self.name",
    "foreign.project" => "self.project",
  },
);
__PACKAGE__->has_many(
  "jobsetinputhashes",
  "Hydra::Schema::JobsetInputHashes",
  {
    "foreign.jobset"  => "self.name",
    "foreign.project" => "self.project",
  },
);


# Created by DBIx::Class::Schema::Loader v0.04999_09 @ 2009-11-17 14:04:55
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xWsqXneZw90uEw/vcEXc4w


# You can replace this text with custom content, and it will be preserved on regeneration
1;
