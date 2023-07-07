output public_ip {
  value       = aws_instance.instance.public_ip 
  description = "description"
}

output private_ip {
  value = aws_instance.instance.private_ip
}