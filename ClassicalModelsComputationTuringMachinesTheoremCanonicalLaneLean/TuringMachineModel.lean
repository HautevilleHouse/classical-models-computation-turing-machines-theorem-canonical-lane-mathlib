import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean

structure TuringMachine where
  states : Nat
  symbols : Nat
  transitions : (Nat × Nat) → (Nat × Nat × Bool) -- state, symbol -> newState, newSymbol, moveRight
  initial : Nat
  accept : Nat
  reject : Nat

def DecidableLanguage (M : TuringMachine) (input : List Bool) : Prop :=
  ∃ steps : Nat, run M input steps = accept

structure AdmittedTuringObject where
  tm : TuringMachine
  language : Set (List Bool)
  decisionProcedure : DecisionProcedure
  projectedLanguage : Set (List Bool)
  solver : DecisionProcedure
  decidable : Decides solver projectedLanguage

end ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean
end HautevilleHouse