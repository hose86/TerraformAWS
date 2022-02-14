remote_state {
  backend  = "s3"
  config = {
    bucket		= "hose86-stage-terraform-up-and-running-state"
    key 		= "${path_relative_to_include()}/terraform.tfstate"
    region		= "us-east-2"
    encrypt		= true
    dynamodb_table	= "hose86-stage-terraform-up-and-running-locks"
  }
}