import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyMedicalAnthropologyCanonicalLaneLean.CompartmentModel
import HautevilleHouse.AnthropologyMedicalAnthropologyCanonicalLaneLean.DiagnosticInference
import HautevilleHouse.AnthropologyMedicalAnthropologyCanonicalLaneLean.SurvivalAnalysis
import HautevilleHouse.AnthropologyMedicalAnthropologyCanonicalLaneLean.EpidemiologicalModel
import HautevilleHouse.AnthropologyMedicalAnthropologyCanonicalLaneLean.CulturalEpidemiology

namespace HautevilleHouse
namespace AnthropologyMedicalAnthropologyCanonicalLaneLean

structure MedicalAnthropologyEvidence where
  compartmentModel : CompartmentModelPackage
  compartmentEvidence : CompartmentModelEvidence compartmentModel
  diagnosticTest : DiagnosticTestPackage
  diagnosticEvidence : DiagnosticInferenceEvidence diagnosticTest
  survivalData : SurvivalDataPackage
  survivalEvidence : SurvivalAnalysisEvidence survivalData
  sirModel : SIRModelPackage
  sirEvidence : SIRModelEvidence sirModel
  culturalFactors : List CulturalFactorPackage
  culturalEvidence : List (CulturalEpidemiologyEvidence (head culturalFactors)) -- simplified, actual would be indexed

def MedicalAnthropologyClosed (E : MedicalAnthropologyEvidence) : Prop :=
  CompartmentModelClosed E.compartmentModel ∧
  DiagnosticInferenceClosed E.diagnosticTest ∧
  SurvivalAnalysisClosed E.survivalData ∧
  SIRModelClosed E.sirModel

theorem medical_anthropology_closed_from_evidence (E : MedicalAnthropologyEvidence) : MedicalAnthropologyClosed E := by
  refine And.intro (compartment_model_closed_from_evidence E.compartmentModel E.compartmentEvidence) ?_
  refine And.intro (diagnostic_inference_closed_from_evidence E.diagnosticTest E.diagnosticEvidence) ?_
  refine And.intro (survival_analysis_closed_from_evidence E.survivalData E.survivalEvidence) ?_
  exact sir_model_closed_from_evidence E.sirModel E.sirEvidence

end AnthropologyMedicalAnthropologyCanonicalLaneLean
end HautevilleHouse