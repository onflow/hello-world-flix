
access(all) contract HelloWorld {
 access(all)  var greeting: String

  access(all) fun updateGreeting(newGreeting: String) {
    self.greeting = newGreeting
  }

  init() {
    self.greeting = "Hello, World!"
  }
}
