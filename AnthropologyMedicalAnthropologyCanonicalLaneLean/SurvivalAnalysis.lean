import HautevilleHouse.AnthropologyMedicalAnthropologyCanonicalLaneLean.DiagnosticInference

/-!
# Survival Analysis Package
-/

namespace HautevilleHouse
namespace AnthropologyMedicalAnthropologyCanonicalLaneLean

structure SurvivalAnalysisPackage {C : CompartmentModelPackage} {P : PharmacokineticsPackage C} {D : DiagnosticInferencePackage C P} where
  hazardFunction : Prop
  survivalFunction : Prop
  censoringMechanism : Prop
  proportionalHazards : Prop
  kaplanMeierEstimator : Prop
  coxModel : Prop

structure SurvivalAnalysisEvidence {C : CompartmentModelPackage} {P : PharmacokineticsPackage C} {D : DiagnosticInferencePackage C P} (S : SurvivalAnalysisPackage C P D) where
  hazardFunctionClosed : S.hazardFunction
  survivalFunctionClosed : S.survivalFunction
  censoringMechanismClosed : S.censoringMechanism
  proportionalHazardsClosed : S.proportionalHazards
  kaplanMeierEstimatorClosed : S.kaplanMeierEstimator
  coxModelClosed : S.coxModel

def SurvivalAnalysisClosed {C : CompartmentModelPackage} {P : PharmacokineticsPackage C} {D : DiagnosticInferencePackage C P} (S : SurvivalAnalysisPackage C P D) : Prop :=
  S.hazardFunction ∧ S.survivalFunction ∧ S.censoringMechanism ∧ S.proportionalHazards ∧ S.kaplanMeierEstimator ∧ S.coxModel

theorem survival_analysis_closed_from_evidence {C : CompartmentModelPackage} {P : PharmacokineticsPackage C} {D : DiagnosticInferencePackage C P} (S : SurvivalAnalysisPackage C P D) (E : SurvivalAnalysisEvidence S) :
    SurvivalAnalysisClosed S := by
  exact And.intro E.hazardFunctionClosed
    (And.intro E.survivalFunctionClosed
      (And.intro E.censoringMechanismClosed
        (And.intro E.proportionalHazardsClosed
          (And.intro E.kaplanMeierEstimatorClosed E.coxModelClosed))))

end AnthropologyMedicalAnthropologyCanonicalLaneLean
end HautevilleHouse