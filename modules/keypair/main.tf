resource "tls_private_key" "keypair01" {
    algorithm = "RSA"
    rsa_bits = 4096
}

resource "aws_key_pair" "keypair01" {
    key_name = "${var.env}-keypair"
    public_key = tls_private_key.keypair01.public_key_openssh
}

resource "local_file" "private_key_pem" {
    content = tls_private_key.keypair01.private_key_pem
    filename = "${path.module}/${var.env}-privatekey.pem"
    file_permission = "0600"
  
}