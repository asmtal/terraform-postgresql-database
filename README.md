<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_postgresql"></a> [postgresql](#requirement\_postgresql) | >=1.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_postgresql"></a> [postgresql](#provider\_postgresql) | 1.15.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.1.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_label_name_db"></a> [label\_name\_db](#module\_label\_name\_db) | r0ck40k/label/generic | 0.1.0 |
| <a name="module_label_name_user"></a> [label\_name\_user](#module\_label\_name\_user) | r0ck40k/label/generic | 0.1.0 |

## Resources

| Name | Type |
|------|------|
| [postgresql_database.this](https://registry.terraform.io/providers/cyrilgdn/postgresql/latest/docs/resources/database) | resource |
| [postgresql_role.this](https://registry.terraform.io/providers/cyrilgdn/postgresql/latest/docs/resources/role) | resource |
| [random_password.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_context"></a> [context](#input\_context) | Default environmental context | <pre>object({<br>    organization = string<br>    environment  = string<br>    account      = string<br>    product      = string<br>    tags         = map(string)<br>  })</pre> | n/a | yes |
| <a name="input_host"></a> [host](#input\_host) | Postgre Host | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the database to create | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database"></a> [database](#output\_database) | Created name of the database |
| <a name="output_host"></a> [host](#output\_host) | Targeted host for creation |
| <a name="output_password"></a> [password](#output\_password) | Created password for the user |
| <a name="output_username"></a> [username](#output\_username) | Created name of the user |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- markdownlint-disable -->
<!-- prettier-ignore-end -->
