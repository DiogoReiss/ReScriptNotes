type rec tail_list<'a, 'b> =
  | None
  | Tail({tail: 'b})
type rec list_example<'a> = {
  hd: 'a,
  tl: tail_list<'a, list_example<'a>>,
}
let listExample: list_example<int> = {
  hd: 1,
  tl: Tail({
    tail: {
      hd: 2,
      tl: Tail({
        tail: {
          hd: 3,
          tl: None,
        },
      }),
    },
  }),
}

let rec mapList = (l: list_example<'a>) => {
  let list_tail = l.tl
  let condition = list_tail !== None
  Js.log(list_tail)
}
Js.log(listExample)
