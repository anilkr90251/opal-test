package authz.api

default allow = false

allow {
	input.method == "GET"
}
