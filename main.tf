
module "label_name_db" {
  source     = "r0ck40k/label/generic"
  version    = "0.1.0"
  context    = var.context
  attributes = ["db", var.name]
}
module "label_name_user" {
  source     = "r0ck40k/label/generic"
  version    = "0.1.0"
  context    = var.context
  attributes = ["user", var.name]
}

resource "random_password" "this" {
  length  = 32
  special = false
}

resource "postgresql_role" "this" {
  name               = module.label_name_user.id
  login              = true
  password           = random_password.this.result
  encrypted_password = true
}

resource "postgresql_database" "this" {
  name              = module.label_name_db.id
  owner             = postgresql_role.this.name
  template          = "template0"
  lc_collate        = "C"
  connection_limit  = -1
  allow_connections = true
}
