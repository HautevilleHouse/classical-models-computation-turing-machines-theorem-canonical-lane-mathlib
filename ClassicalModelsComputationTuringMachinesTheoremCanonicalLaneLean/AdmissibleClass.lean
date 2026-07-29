import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean.TuringMachineModel

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean

structure AdmissibleClass where
  lane : AdmittedTuringObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean
end HautevilleHouse