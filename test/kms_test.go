package test

import (
	"testing"
	"github.com/gruntwork-io/terratest/modules/terraform"
	
)

func TestKMS(t *testing.T) {
	t.Parallel()

	// Construct the terraform options with default retryable errors to handle the most common retryable errors in
	// terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "../examples/kp-key",

		Vars: map[string]interface{}{
			"ibm_region" 				: "us-south",
			"key_name" 					: "test-key",
			"location" 					: "us-south",
			"service_name" 				: "test-instance",
			"allowed_network_policy" 	: "public",
			"standard_key_type" 		: false,
			"force_delete" 				: false,
			"network_access_allowed" 	: "public",
		},

		VarFiles: []string{"../../terraform.tfvars"}, // api key and resource group reside in this file

		NoColor: true, 
	})
	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)
}