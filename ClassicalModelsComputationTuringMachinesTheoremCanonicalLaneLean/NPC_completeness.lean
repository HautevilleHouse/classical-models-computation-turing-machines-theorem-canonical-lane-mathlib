import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean

structure DecisionProblem where
  instanceType : Type
  isYesInstance : instanceType -> Prop

def polynomialTimeReducible (A B : DecisionProblem) : Prop :=
  ∃ f : A.instanceType -> B.instanceType, 
    (∀ x : A.instanceType, A.isYesInstance x ↔ B.isYesInstance (f x)) ∧
    (∃ tm : TuringMachine, ∀ x : A.instanceType, 
      accepts tm (repr x) → accepts tm (repr (f x)))

def NP (P : DecisionProblem) : Prop :=
  ∃ verifier : TuringMachine, ∀ x : P.instanceType, 
    P.isYesInstance x ↔ 
      ∃ certificate : BitString, 
        length certificate ≤ polynomial (size x) ∧
        accepts verifier (repr x ++ certificate)

def NPComplete (P : DecisionProblem) : Prop :=
  NP P ∧ ∀ Q : DecisionProblem, NP Q → polynomialTimeReducible Q P

end ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean
end HautevilleHouse