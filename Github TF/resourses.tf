resource "github_repository" "my_first_repo" {
    name        = "first-tf-repo"
    description = "My awesome codebase"
    visibility = "public"
    auto_init = true
}