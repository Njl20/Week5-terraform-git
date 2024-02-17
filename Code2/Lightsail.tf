resource "aws_lightsail_instance" "custom" {
  name              = "myApache-week5-Server"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform. I am going to be an excellent devp ops engineer and make a great life for me and my daughter. Merci mon Dieu de m'accorder ta grace.</h1>' | sudo tee /var/www/html/index.html"
}

