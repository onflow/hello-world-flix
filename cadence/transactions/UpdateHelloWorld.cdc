import "HelloWorld"

#interaction (
  version: "1.1.0",
	title: "Update Greeting",
	description: "Update the greeting on the HelloWorld contract",
	language: "en-US",
)
transaction(greeting: String) {

  prepare(acct: &Account) {
    log(acct.address)
  }

  execute {
    HelloWorld.updateGreeting(newGreeting: greeting)
  }
}
