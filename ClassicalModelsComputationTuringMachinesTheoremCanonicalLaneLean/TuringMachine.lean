import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean

structure TuringMachine where
  states : Nat
  alphabet : List Char
  transitionFunction : Nat -> Char -> Nat × Char × Bool
  startState : Nat
  acceptStates : List Nat
  rejectStates : List Nat

structure Tape where
  contents : List Char
  headPosition : Nat

def step (tm : TuringMachine) (tape : Tape) : Tape := 
  let symbol := 
    if tape.headPosition < tape.contents.length then
      tape.contents.get! tape.headPosition
    else
      '_'
  let (newState, writeSymbol, moveRight) := tm.transitionFunction tm.startState symbol
  let newContents := 
    List.updateNth tape.contents tape.headPosition writeSymbol
  let newHead := if moveRight then tape.headPosition + 1 else tape.headPosition - 1
  { contents := newContents, headPosition := newHead }

def accepts (tm : TuringMachine) (input : List Char) : Prop :=
  ∃ steps : Nat, 
    let initTape : Tape := { contents := input, headPosition := 0 }
    let finalTape := Nat.rec initTape (fun _ t => step tm t) steps
    tm.startState ∈ tm.acceptStates

end ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean
end HautevilleHouse