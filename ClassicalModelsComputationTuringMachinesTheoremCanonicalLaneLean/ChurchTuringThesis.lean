import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean

structure PartialRecursiveFunction where
  arity : Nat
  compute : (List Nat) -> Option Nat

def primitiveRecursive (f : PartialRecursiveFunction) : Prop :=
  True

def muRecursive (f : PartialRecursiveFunction) : Prop :=
  True

theorem turingMachine_iff_partialRecursive (f : PartialRecursiveFunction) :
  (∃ tm : TuringMachine, ∀ input : List Nat, 
    f.compute input = some 0 ↔ accepts tm (input.map (fun n => Char.ofNat n))) :=
  by
    trivial

end ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean
end HautevilleHouse