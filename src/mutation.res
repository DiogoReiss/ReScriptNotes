// With ReScript we can mutate too!

let myValue = ref(5)
Js.log(myValue.contents)

myValue.contents = 6
// or
myValue := 6
Js.log(myValue.contents)