// A better way to write multiple functions
let log = (content: string) => {
  content
}

let log2 = (content: string) => {
  Js.log(`2 ${content}`)
}

let c: string = "Hello world!"
c
  ->log
  ->log2

let sum3 = (a: int, b: int, c: int) => {
  Js.log(a+b+c)
}

sum3(2,2,2)
2->sum3(2,2)