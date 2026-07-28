import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMedicalAnthropologyCanonicalLaneLean

structure CulturalFactorPackage where
  factorName : String
  effectOnTransmission : ℝ
  adherenceRate : ℝ
  qualitativeEvidence : Prop

structure CulturalEpidemiologyEvidence (C : CulturalFactorPackage) where
  qualitativeEvidenceClosed : C.qualitativeEvidence
  effectNonnegative : C.effectOnTransmission ≥ 0
  adherenceInRange : C.adherenceRate ≥ 0 ∧ C.adherenceRate ≤ 1

def CulturalFactorClosed (C : CulturalFactorPackage) : Prop :=
  C.qualitativeEvidence ∧ C.effectOnTransmission ≥ 0 ∧ C.adherenceRate ≥ 0 ∧ C.adherenceRate ≤ 1

theorem cultural_factor_closed_from_evidence (C : CulturalFactorPackage) (E : CulturalEpidemiologyEvidence C) : CulturalFactorClosed C := by
  exact And.intro E.qualitativeEvidenceClosed (And.intro E.effectNonnegative E.adherenceInRange)

end AnthropologyMedicalAnthropologyCanonicalLaneLean
end HautevilleHouse