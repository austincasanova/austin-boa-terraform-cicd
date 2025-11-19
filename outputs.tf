output "my-vm-public-ip" {
  value = aws_instance.example.public_ip

}

resource "local_file" "my-output-file" {
  content  = aws_instance.example.public_ip
  filename = "${path.module}/myip.txt"
}