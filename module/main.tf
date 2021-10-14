resource "null_resource" "pythonscript" {
  triggers = {
    always_run = "${timestamp()}"
  }
  provisioner "local-exec" {
    command = "python3 main.py test"
  }
}