import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyMedicalAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMedicalAnthropologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AnthropologyMedicalAnthropologyCanonicalLaneLean
end HautevilleHouse
