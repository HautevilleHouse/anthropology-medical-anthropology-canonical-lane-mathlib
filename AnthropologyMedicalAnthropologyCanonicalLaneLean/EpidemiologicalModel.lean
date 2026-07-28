import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMedicalAnthropologyCanonicalLaneLean

structure SIRModelPackage where
  susceptible : ℝ → ℝ
  infected : ℝ → ℝ
  recovered : ℝ → ℝ
  transmissionRate : ℝ
  recoveryRate : ℝ
  initialConditions : Prop
  differentialEquations : Prop
  conservationLaw : Prop

structure SIRModelEvidence (M : SIRModelPackage) where
  initialConditionsClosed : M.initialConditions
  differentialEquationsClosed : M.differentialEquations
  conservationLawClosed : M.conservationLaw
  ratesPositive : M.transmissionRate > 0 ∧ M.recoveryRate > 0

def SIRModelClosed (M : SIRModelPackage) : Prop :=
  M.initialConditions ∧ M.differentialEquations ∧ M.conservationLaw ∧ M.transmissionRate > 0 ∧ M.recoveryRate > 0

theorem sir_model_closed_from_evidence (M : SIRModelPackage) (E : SIRModelEvidence M) : SIRModelClosed M := by
  exact And.intro E.initialConditionsClosed (And.intro E.differentialEquationsClosed (And.intro E.conservationLawClosed E.ratesPositive))

end AnthropologyMedicalAnthropologyCanonicalLaneLean
end HautevilleHouse