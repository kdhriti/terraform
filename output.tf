//OUTPUT
 output "content-from-abc" {
   value = local_file.abc.content
 }

 output "content-from-abc2" {
   value = local_file.abc.filename
 }