output "instance_id" {
  description = "Created EC2 instance ID"
  value       = aws_instance.lab.id
}

output "public_ip" {
  description = "Public IPv4 address"
  value       = aws_instance.lab.public_ip
}

output "ssh_command" {
  description = "Replace the key path with your local private key path"
  value       = "ssh -i <path-to-private-key> ubuntu@${aws_instance.lab.public_ip}"
}
