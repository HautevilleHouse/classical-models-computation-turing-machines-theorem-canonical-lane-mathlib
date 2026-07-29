import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean

def ConstrainedTuringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_turing_endgame (A : AdmissibleClass) :
    ConstrainedTuringClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean
end HautevilleHouse