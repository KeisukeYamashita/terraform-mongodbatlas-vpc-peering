# MongoDB Atlas VPC Peering module

This module creates an MongoDB Atlas VPC peering.

## Usage

```hcl
module "mongodbatlas_vpc_peering" {
  source  = "KeisukeYamashita/terraform-mongodbatlas-vpc-peering"
  version = "~> 1.0"

  region     = "US_EAST_1"
  project_id = local.project_id
  cidr_block = "10.8.0.0/21"

  target_cidr_block  = "10.20.0.0/21"
  target_region_name = "ap-northeast-1"
  target_vpc_id      = "vpc-abc123abc123"
  target_account_id  = "abc123abc123"
}
```

## Requirements

| Name | Version |
|------|---------|
| terraform    | >= 0.12.0, < 0.14 |
| mongodbatlas | >= 0.6, < 1.0     |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| region             | Region of the MondoDB            | `string` | `null` | yes  |
| project_id         | ID of the MongoDB Atlas project  | `string` | `null`  | yes |
| cidr_block         | CIDR block of the MongoDB        | `string` | `null`  | yes | 
| target_cidr_block  | ID of the peering target         | `string` | `null`  | yes |
| target_region_name | Name of the target region        | `string` | `null`  | yes |
| target_vpc_id      | ID of the target AWS VPC         | `string` | `null`  | yes |
| target_account_id  | ID of the target AWS account     | `string` | `null`  | yes |

## Outputs

| Name | Description | Type |
|------|-------------|------|
| vpc_peering_id | ID of the VPC peering | `string` |

## Author

* [KeisukeYamashita](https://github.com/KeisukeYamashita)

## License

Apache 2.0 Licensed. See LICENSE for full details.
