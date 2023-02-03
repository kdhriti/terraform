resource "local_file" "foo" {
  content  = "this is file one."
  filename = "fool"
}
resource "local_file" "abc" {
  content  = "this is file two."
  filename = "abc"
}
resource "local_file" "random" {
  content  = local.content_fr_random
  filename = "${random_id.random_file.hex}"
}
 locals {
   content_fr_random = " This is my content for random file"
 }
resource "random_id" "random_file"{
  byte_length=8
} 

resource "local_file" "forvars1" {
  filename = var.var_1
  content = var.var_1
}
resource "local_file" "forvarsbool" {
  filename = var.var_bool
  content = var.var_bool
}
resource "local_file" "forvarsnum" {
  filename = var.var_num
  content = var.var_num
}
resource "local_file" "forvars2" {
  filename = var.var_2[2]
  content = "content in file"
}
resource "local_file" "forvars3" {
  filename = var.var_3["filename"]
  content = var.var_3["content"]
}

resource "local_file" "forvars4" {
  filename = var.var_4["Emp_name"]
  content = var.var_4["Emp_id"]
}
