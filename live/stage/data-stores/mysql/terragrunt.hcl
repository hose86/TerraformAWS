terraform {
  #source = "../../../..//modules/data-stores/mysql"
  source = "git::git@github.com:hose86/TerraformAWS.git//modules/data-stores/mysql?ref=v0.0.2"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  db_name     = "example_database_stage"
  db_username = "admin"
  #Установите пароль с помощью переменной среды TF_VAR_db_password
}