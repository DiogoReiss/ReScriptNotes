// There's no loop-breaking keyword in ReScript
// But we can break out of a while usin a mutable binding

let break = ref(false)

while !break.contents {
  if Js.Math.random() > 0.3 {
    Js.log("Break the loop")
    break := true
  } else {
    Js.log("Still running")
  }
}