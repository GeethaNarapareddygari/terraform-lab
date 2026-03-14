resource "local_file" "dev" {
  content  = "Development environment"
  filename = "${path.module}/dev.txt"
}

resource "local_file" "prod" {
  content  = "Production environment"
  filename = "${path.module}/prod.txt"
}