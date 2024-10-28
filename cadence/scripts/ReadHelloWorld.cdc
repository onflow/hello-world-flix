#interaction(
    version: "1.1.0",
    title: "Get Greeting",
    description: "Call HelloWorld contract to get greeting",
    language: "en-US",    
)

import "HelloWorld"
access(all) fun main(): String {
  return HelloWorld.greeting
}
