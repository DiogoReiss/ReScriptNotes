let getItem = (items: array<'a>): unit => 
  if items === [] {
    Js.log([])
  } else {
    exception NotFound(string)
    Js.log(NotFound("Items not found!"))
  }

let result = 
  try {
    getItem([1,2,3])
  } catch {
  | Not_found => Js.log("Items not found!")
  }

// We can make your own exceptions like
exception InputClosed(string)

raise(InputClosed("The stream has closed"))

// Use Js.Exn.Error(payload) to use JavaScript Exceptions
