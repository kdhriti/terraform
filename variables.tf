// string and default
variable "var_1" {
    type = string
    description= " enter Content"
    default = "This is demo content"
}
 
//bool
 variable "var_bool" {
  type=bool
  default=true
}
//number
 variable "var_num" {
  type=number
  default=54638
}
//list
variable "var_2" {
  type=list(any)
}

//map
variable "var_3" {
  type=map(any)
}

//object
variable "var_4" {
  type= object({
    Emp_name=string
    Emp_id=number
  })
}