resource "vault_auth_backend" "userpass" {
  count    = var.enable_userpass ? 1 : 0
  path     = "userpass"
  type     = "userpass"
}


resource "vault_auth_backend" "kubernetes" {
  count    = var.enable_kubernetes ? 1 : 0  
  type  = "kubernetes"
  path   = "kubernetes"
}

resource "vault_auth_backend" "github" {
  count    = var.enable_github ? 1 : 0  
  type  = "github"
  path   = "github"
}