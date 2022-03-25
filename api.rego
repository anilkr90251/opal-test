package authz.api

default allow = false

allow {
	input.role == "ADMIN"
}
