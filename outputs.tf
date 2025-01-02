output "ap_south_instance_public_ip" {
  value = aws_instance.ap_south_instance.public_ip
}

output "us_east_instance_public_ip" {
  value = aws_instance.us_east_instance.public_ip
}

