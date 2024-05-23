variable "bucketname" {
  description = "ime na kofata"
  type        = map(any)
  default = {
    name1 = "kofata1"
    name2 = "kofata2"
  }
}