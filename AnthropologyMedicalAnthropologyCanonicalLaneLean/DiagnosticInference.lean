import HautevilleHouse.AnthropologyMedicalAnthropologyCanonicalLaneLean.Pharmacokinetics

/-!
# Diagnostic Inference Package
-/

namespace HautevilleHouse
namespace AnthropologyMedicalAnthropologyCanonicalLaneLean

structure DiagnosticInferencePackage {C : CompartmentModelPackage} {P : PharmacokineticsPackage C} where
  prevalence : Prop
  sensitivity : Prop
  specificity : Prop
  positivePredictiveValue : Prop
  negativePredictiveValue : Prop
  testAccuracy : Prop

structure DiagnosticInferenceEvidence {C : CompartmentModelPackage} {P : PharmacokineticsPackage C} (D : DiagnosticInferencePackage C P) where
  prevalenceClosed : D.prevalence
  sensitivityClosed : D.sensitivity
  specificityClosed : D.specificity
  positivePredictiveValueClosed : D.positivePredictiveValue
  negativePredictiveValueClosed : D.negativePredictiveValue
  testAccuracyClosed : D.testAccuracy

def DiagnosticInferenceClosed {C : CompartmentModelPackage} {P : PharmacokineticsPackage C} (D : DiagnosticInferencePackage C P) : Prop :=
  D.prevalence ∧ D.sensitivity ∧ D.specificity ∧ D.positivePredictiveValue ∧ D.negativePredictiveValue ∧ D.testAccuracy

theorem diagnostic_inference_closed_from_evidence {C : CompartmentModelPackage} {P : PharmacokineticsPackage C} (D : DiagnosticInferencePackage C P) (E : DiagnosticInferenceEvidence D) :
    DiagnosticInferenceClosed D := by
  exact And.intro E.prevalenceClosed
    (And.intro E.sensitivityClosed
      (And.intro E.specificityClosed
        (And.intro E.positivePredictiveValueClosed
          (And.intro E.negativePredictiveValueClosed E.testAccuracyClosed))))

end AnthropologyMedicalAnthropologyCanonicalLaneLean
end HautevilleHouse