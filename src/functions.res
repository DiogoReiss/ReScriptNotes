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

type rec option<'a> =
  | None
  | Option('a)

type rec sumType<'a> = (int, option<'a>) => unit

let sumOptional: sumType<int> = (x, y) => {
  switch y {
    | None => Js.log(x)
    | Option(y) =>  Js.log(x + y)
  }
}

sumOptional(3, None)
sumOptional(5, Option(10))