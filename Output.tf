output "pri-ip-1" {

     value = aws_instance.test-1.private_ip

}

output "pub_ip-1" {

      value = aws_instance.test-1.public_ip
}

output "pri-ip-2" {

     value = aws_instance.test-2.private_ip

}

output "pub_ip-2" {

      value = aws_instance.test-2.public_ip
}

