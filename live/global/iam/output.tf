output "all_users" {
  value		= aws_iam_user.example
  description	= "The ARNs for All users"
}

output "all_arns" {
  value		= values(aws_iam_user.example)[*].arn
  description	= "The ARNs for All users"
}

output "upper_names" {
  value		= [ for name in var.user_names : upper(name)]
}

output "short_upper_names" {
  value		= [ for name in var.user_names : upper(name) if length(name) < 5]
}

output "bios" {
  value		= [for name, role in var.hero_thousand_faces : "${name} is the ${role}"]
}

output "upper_roles" {
  value		= {for name, role in var.hero_thousand_faces : upper(name) => upper(role)}
}

output "for_directive" {
  value = <<EOF
%{~ for name in var.names }
  ${name}
%{~ endfor }
EOF
}

output "if_else_directive" {
  value = "Hello, %{ if var.name != ""}${var.name}%{ else }(unnamed)%{ endif }"
}
