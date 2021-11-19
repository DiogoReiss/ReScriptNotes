type rec tail_list<'a, 'list_example> =
  | None
  | Tail({
    hd: 'a,
    tl: 'list_example
  })
type rec list_example<'a> = {
  hd: 'a,
  tl: tail_list<'a, list_example<'a>>,
}
let listExample: list_example<int> = {
  hd: 1,
  tl: Tail({
      hd: 2,
      tl: {
          hd: 3,
          tl: None,
        }
      }
  )
}

let rec mapList = (l: list_example<'a>) => {
  let newList = switch l.tl {
    | Tail({hd, tl}) => Tail({hd, tl})
    | None => None
  }
  switch newList {
    | None => Js.log("End of list")
    | Tail({hd, tl}) => Js.log(mapList({hd, tl: Tail({hd, tl})}))
  }
}
Js.log(mapList(listExample))
Js.log(listExample)
