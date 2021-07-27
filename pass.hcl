mock "tfplan/v2" {
  module {
    source = "mock-tfplanv2-success.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}
