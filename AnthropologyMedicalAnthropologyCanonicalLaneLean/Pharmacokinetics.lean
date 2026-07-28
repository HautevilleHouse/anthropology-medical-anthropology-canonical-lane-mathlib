import HautevilleHouse.AnthropologyMedicalAnthropologyCanonicalLaneLean.CompartmentModels

/-!
# Pharmacokinetics Package
-/

namespace HautevilleHouse
namespace AnthropologyMedicalAnthropologyCanonicalLaneLean

structure PharmacokineticsPackage (C : CompartmentModelPackage) where
  absorptionRate : Prop
  distributionVolume : Prop
  eliminationHalfLife : Prop
  doseResponseCurve : Prop
  drugInteractionPotential : Prop

structure PharmacokineticsEvidence {C : CompartmentModelPackage} (P : PharmacokineticsPackage C) where
  absorptionRateClosed : P.absorptionRate
  distributionVolumeClosed : P.distributionVolume
  eliminationHalfLifeClosed : P.eliminationHalfLife
  doseResponseCurveClosed : P.doseResponseCurve
  drugInteractionPotentialClosed : P.drugInteractionPotential

def PharmacokineticsClosed {C : CompartmentModelPackage} (P : PharmacokineticsPackage C) : Prop :=
  P.absorptionRate ∧ P.distributionVolume ∧ P.eliminationHalfLife ∧ P.doseResponseCurve ∧ P.drugInteractionPotential

theorem pharmacokinetics_closed_from_evidence {C : CompartmentModelPackage} (P : PharmacokineticsPackage C) (E : PharmacokineticsEvidence P) :
    PharmacokineticsClosed P := by
  exact And.intro E.absorptionRateClosed
    (And.intro E.distributionVolumeClosed
      (And.intro E.eliminationHalfLifeClosed
        (And.intro E.doseResponseCurveClosed E.drugInteractionPotentialClosed)))

end AnthropologyMedicalAnthropologyCanonicalLaneLean
end HautevilleHouse