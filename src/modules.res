// Modules are like mini files! They can contain type
// definitions, letbindings, nested modules, etc.

// To create a module the module name must start with a
// capital letter

module School = {
  type profession =
    | Teacher
    | Director

  let person1 = Director
  let getProfession = person =>
    switch person {
    | Teacher => "A Teacher!"
    | Director => "A Director!"
    }
}

let anotherPerson: School.profession = School.Teacher
Js.log(School.getProfession(anotherPerson))

// We can "Open" a module too!
// normaly you use open in a local scope not global.

open School

Js.log(getProfession(person1))

// Destructuring modules

module User = {
  let user1 = "Anna"
  let user2 = "Franz"
}

// Destructure by name
let {user1, user2} = module(User)

// Destructure with different alias
let {user1: anna, user2: franz} = module(User)

// Every .res file is a module.
// a module's type is called "signature" and uses .resi file (interface)
