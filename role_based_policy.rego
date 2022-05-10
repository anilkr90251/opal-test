package authz.api

import future.keywords.in

default allow = false

allow {
	is_admin
}

allow {
	not "admin" in input.path
	is_public_user
}

is_admin {
	"admin" in input.roles
}

is_public_user {
	"public-user" in input.roles
}
