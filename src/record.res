//Difference between Record and JS Object
//- Are immutable by default
//- Have fixed fields (not extensible)
//So a record needs a mandatory type declaration.

type recordType = {
  name: string,
  lname: string,
  age: int,
}

let record: recordType = {
  name: "Diogo",
  lname: "Reis",
  age: 18,
}

let meNextYear: recordType = {
  ...record,
  age: record.age + 1,
}
