import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean

structure AERInductionPackage where
  aepSignalEmitted : Prop
  underlyingMesodermCompetent : Prop
  ridgeFormed : Prop
  ridgeMaintainsOutgrowth : Prop

structure AERInductionEvidence (A : AERInductionPackage) where
  aepSignalEmittedClosed : A.aepSignalEmitted
  underlyingMesodermCompetentClosed : A.underlyingMesodermCompetent
  ridgeFormedClosed : A.ridgeFormed
  ridgeMaintainsOutgrowthClosed : A.ridgeMaintainsOutgrowth

def AERInductionClosed (A : AERInductionPackage) : Prop :=
  A.aepSignalEmitted ∧ A.underlyingMesodermCompetent ∧
  A.ridgeFormed ∧ A.ridgeMaintainsOutgrowth

theorem aer_induction_closed_from_evidence
    (A : AERInductionPackage) (E : AERInductionEvidence A) : AERInductionClosed A := by
  exact And.intro E.aepSignalEmittedClosed
    (And.intro E.underlyingMesodermCompetentClosed
      (And.intro E.ridgeFormedClosed E.ridgeMaintainsOutgrowthClosed))

end DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean
end HautevilleHouse