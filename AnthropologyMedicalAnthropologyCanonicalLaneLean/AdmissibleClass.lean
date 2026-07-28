import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMedicalAnthropologyCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AnMedWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyMedicalAnthropologyCanonicalLaneLean
end HautevilleHouse