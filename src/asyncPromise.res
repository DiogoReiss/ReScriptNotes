// To use promises you have to install
// npm install @ryyppy/rescript-promise --save
// and modify your bsconfig.json
// "bs-dependencies": ["@ryyppy/rescript-promise"]

// But ReScript has built-in support for JavaScript promises
// You usually need 3 functions ->
//Js.Promise.resolve: 'a => Js.Promise.t('a)

//Js.Promise.then_: ('a => Js.Promise.t('b), Js.Promise.t('a)) => Js.Promise.t('b)

//Js.Promise.catch: (Js.Promise.error => Js.Promise.t('a), Js.Promise.t('a)) => Js.Promise.t('a)

// Type signature for creating a promise
//Js.Promise.make: (
//  (
//    ~resolve: (. 'a) => unit,
//    ~reject: (. exn) => unit
//  ) => unit
//) => Js.Promise.t<'a>

/* Usage
let myPromise = Js.Promise.make((~resolve, ~reject) => resolve(. 2))

myPromise->Js.Promise.then_(value => {
  Js.log(value)
  Js.Promise.resolve(value + 2)
}, _)->Js.Promise.then_(value => {
  Js.log(value)
  Js.Promise.resolve(value + 3)
}, _)->Js.Promise.catch(err => {
  Js.log2("Failure!!", err)
  Js.Promise.resolve(-2)
}, _)
*/
