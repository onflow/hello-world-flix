
pub contract HelloWorld {
  pub var greeting: String

  pub fun updateGreeting(newGreeting: String) {
    self.greeting = newGreeting
  }

  init() {
    self.greeting = "Hello, World!"
  }
}
