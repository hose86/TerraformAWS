terraform {
  source = "git::git@github.com:hose86/TerraformAWS.git//modules/services/hello-world-app?ref=v0.0.2"
  #source = "../../../..//modules/services/hello-world-app"
}

include {
  path = find_in_parent_folders()
}

dependencies {
  paths = ["../../data-stores/mysql"]
}

inputs = {
db_remote_state_bucket 	= "hose86-stage-terraform-up-and-running-state"
db_remote_state_key 	= "data-stores/mysql/terraform.tfstate"
server_text 		= "Hello, World"
environment 		= "stage"
min_size 		= 2
max_size		= 2
enable_autoscaling      = false
}