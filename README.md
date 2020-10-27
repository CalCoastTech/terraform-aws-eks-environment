# Terraform Module
Provides a module for terraform.

# Reference
<!--- BEGIN_TF_DOCS --->
## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| eks\_module\_cluster\_name | Name of the EKS cluster. Also used as a prefix in names of related resources. | `string` | `"my-cluster"` | no |
| eks\_module\_cluster\_version | Kubernetes version to use for the EKS cluster. | `string` | `"1.18"` | no |
| eks\_module\_worker\_groups | A list of maps defining worker group configurations to be defined using AWS Launch Configurations. See workers\_group\_defaults for valid keys. | `any` | <pre>[<br>  {<br>    "asg_max_size": 5,<br>    "asg_min_size": 1,<br>    "instance_type": "t3.medium"<br>  }<br>]</pre> | no |
| vpc\_module\_cidr | The CIDR block for the VPC. | `string` | `"10.0.0.0/16"` | no |

## Outputs

No output.

<!--- END_TF_DOCS --->
