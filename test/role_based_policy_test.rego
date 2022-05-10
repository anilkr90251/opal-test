package authz.api.test

import data.authz.api.allow

test_admin_is_allowed_admin_path {
	allow with input as {
		"roles": ["admin"],
		"path": ["api", "v1", "admin", "users"],
	}
}

test_public_user_not_allowed_to_admin_path {
	not allow with input as {
		"roles": ["public-user"],
		"path": ["api", "v1", "admin"],
	}
}

test_public_user_allowed_to_public_path {
	allow with input as {
		"roles": ["public-user"],
		"path": ["api", "v1", "user"],
	}
}

test_admin_allow_to_any_path {
	allow with input as {
		"roles": ["admin"],
		"path": ["api", "v1", "user"],
	}
}
