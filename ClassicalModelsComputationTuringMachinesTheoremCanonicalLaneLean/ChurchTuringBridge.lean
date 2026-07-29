import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean.TuringMachineModel

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.solverDecidesProjectedLanguage

end ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean
end HautevilleHouse