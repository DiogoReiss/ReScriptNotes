let print = (content) => {
  Js.log(content)
}

print("Hello world!")

// Labeled Arguments

let sum = (~x: int, ~y: int) => {
  Js.log(x + y)
}

sum(~y=10, ~x=2)

// Optional Labeled Arguments



let sumOptional = (~x, ~y=?, ()) : int => {
  switch y {
  | None => x
  | Some(y_) => x + y_
  }
}
sumOptional(~x=3)
sumOptional(~y=2, ~x=5)
