import HautevilleHouse.AnthropologyMedicalAnthropologyCanonicalLaneLean.AdmissibleClass

/-!
# Compartment Models Package
-/

namespace HautevilleHouse
namespace AnthropologyMedicalAnthropologyCanonicalLaneLean

structure CompartmentModelPackage where
  population : Type u
  compartments : List String
  transitionRates : Type v
  initialConditions : Prop
  differentialEquations : Prop
  parameterIdentifiability : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  initialConditionsClosed : C.initialConditions
  differentialEquationsClosed : C.differentialEquations
  parameterIdentifiabilityClosed : C.parameterIdentifiability

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.initialConditions ∧ C.differentialEquations ∧ C.parameterIdentifiability

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.initialConditionsClosed (And.intro E.differentialEquationsClosed E.parameterIdentifiabilityClosed)

end AnthropologyMedicalAnthropologyCanonicalLaneLean
end HautevilleHouse