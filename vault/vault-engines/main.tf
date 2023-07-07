resource "vault_mount" "kv1" {
  count    = var.enable_kv1 ? 1 : 0
  path                      = "secrets_v1"
  type                      = "kv"

  options = {
    version = "1"
  }
}

resource "vault_mount" "kv2" {
  count    = var.enable_kv2 ? 1 : 0
  path                      = "secrets_v2"
  type                      = "kv"

  options = {
    version = "2"
  }
}

resource "vault_mount" "totp" {
  count    = var.enable_totp ? 1 : 0
  type     = "totp"
  path     = "totp"
}