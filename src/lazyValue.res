// We can defer and cache expensive computations subsequently
// with lazy 

let expensiveFilesRead = lazy({
  Js.log("Reading dir")
  Node.Fs.readdirSync("./pages")
})

// Now to use this "expensiveFilesRead" 
// we have to call two times

// First call. The computation happens
// and the data is cached
Js.log(Lazy.force(expensiveFilesRead))

// Second call willl just return the cached data
Js.log(Lazy.force(expensiveFilesRead))

// You can use switch to trigger the computation too
switch expensiveFilesRead {
  | lazy(result) => Js.log(result)
}

// Handling the exceptions 
let result = try {
  Lazy.force(expensiveFilesRead)
} catch {
| Not_found => []
}