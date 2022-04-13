locals {
  suffix       = "${var.application}-${var.environment}"
  suffix_alnum = join("", regexall("[a-z0-9]", lower(local.suffix)))
  
  tags = merge({ application = var.application, environment = var.environment }, var.tags)
}
