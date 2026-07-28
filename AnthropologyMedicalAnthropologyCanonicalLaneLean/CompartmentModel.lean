import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyMedicalAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMedicalAnthropologyCanonicalLaneLean

structure CompartmentModelPackage where
  compartments : Type
  transitionRates : Type
  initialConditions : Prop
  deterministicEvolution : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  initialConditionsClosed : C.initialConditions
  deterministicEvolutionClosed : C.deterministicEvolution

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.initialConditions ∧ C.deterministicEvolution

theorem compartment_model_closed_from_evidence
    (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.initialConditionsClosed E.deterministicEvolutionClosed

end AnthropologyMedicalAnthropologyCanonicalLaneLean
end HautevilleHouse
