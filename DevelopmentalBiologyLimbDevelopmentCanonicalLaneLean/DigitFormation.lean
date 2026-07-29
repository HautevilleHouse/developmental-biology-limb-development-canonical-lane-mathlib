import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean

structure DigitFormationPackage where
  interdigitalApoptosisProgrammed : Prop
  osteoblastCondensation : Prop
  phalanxSegmentation : Prop
  articularJointFormation : Prop

structure DigitFormationEvidence (D : DigitFormationPackage) where
  interdigitalApoptosisProgrammedClosed : D.interdigitalApoptosisProgrammed
  osteoblastCondensationClosed : D.osteoblastCondensation
  phalanxSegmentationClosed : D.phalanxSegmentation
  articularJointFormationClosed : D.articularJointFormation

def DigitFormationClosed (D : DigitFormationPackage) : Prop :=
  D.interdigitalApoptosisProgrammed ∧ D.osteoblastCondensation ∧
  D.phalanxSegmentation ∧ D.articularJointFormation

theorem digit_formation_closed_from_evidence
    (D : DigitFormationPackage) (E : DigitFormationEvidence D) : DigitFormationClosed D := by
  exact And.intro E.interdigitalApoptosisProgrammedClosed
    (And.intro E.osteoblastCondensationClosed
      (And.intro E.phalanxSegmentationClosed E.articularJointFormationClosed))

end DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean
end HautevilleHouse