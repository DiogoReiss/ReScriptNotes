// We can be able to add constructors to a variant type
// even after its inital type declaration

type t = .. // Definition of a extensible variant type

type t += Other // Adding a new constructor

// Adding more constructors
type t +=
  | Point(float, float)
  | Line(float, float, float, float)
