import HautevilleHouse.AnthropologyMedicalAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMedicalAnthropologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AnMedWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AnthropologyMedicalAnthropologyCanonicalLaneLean
end HautevilleHouse