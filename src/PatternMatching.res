// First of all we gonna talk about Destructuring
let coordinates = (10, 20, 30)
let (x, _, _) = coordinates
Js.log(x) // 10

type t = {name: string, age: int}
let student: t = {name: "Diogo", age:18}
let {name} = student
Js.log(name) // "Diogo"

type result = 
  | Success(string)

let myResult = Success("You did it!")
let Success(message) = myResult
Js.log(message) // "You did it!"

// Switch Based on shape of data

type payLoad = 
  | BadResult(int)
  | GoodResult(string)
  | NoResult

let data = GoodResult("Product Shipepd!")

switch data {
  | GoodResult(message) => 
    Js.log("Success! " ++ message)
  | BadResult(errorCode) => 
    Js.log("something's wrong. The error code is: " ++ Js.Int.toString(errorCode))
  | NoResult => 
    Js.log("Bah.")
}