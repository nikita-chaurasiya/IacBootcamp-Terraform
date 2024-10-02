resource "aws_key_pair" "nkp" {
  key_name   = "natwest-key-pair-nik"
  public_key = var.publickey
}