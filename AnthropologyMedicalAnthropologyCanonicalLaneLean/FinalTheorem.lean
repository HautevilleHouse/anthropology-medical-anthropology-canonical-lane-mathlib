import HautevilleHouse.AnthropologyMedicalAnthropologyCanonicalLaneLean.SurvivalAnalysis
import HautevilleHouse.AnthropologyMedicalAnthropologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AnthropologyMedicalAnthropologyCanonicalLaneLean

def ConstrainedMedicalAnthropologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_medical_anthropology_endgame (A : AdmissibleClass) :
    ConstrainedMedicalAnthropologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthropologyMedicalAnthropologyCanonicalLaneLean
end HautevilleHouse