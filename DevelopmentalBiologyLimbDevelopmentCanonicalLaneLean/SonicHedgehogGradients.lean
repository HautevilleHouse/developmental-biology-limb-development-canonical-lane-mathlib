import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean

structure ShhGradientPackage where
  shhSourceEstablished : Prop
  gradientFormed : Prop
  fibroblastGrowthFactorRegulation : Prop
  downstreamTargetActivation : Prop

structure ShhGradientEvidence (S : ShhGradientPackage) where
  shhSourceEstablishedClosed : S.shhSourceEstablished
  gradientFormedClosed : S.gradientFormed
  fibroblastGrowthFactorRegulationClosed : S.fibroblastGrowthFactorRegulation
  downstreamTargetActivationClosed : S.downstreamTargetActivation

def ShhGradientClosed (S : ShhGradientPackage) : Prop :=
  S.shhSourceEstablished ∧ S.gradientFormed ∧
  S.fibroblastGrowthFactorRegulation ∧ S.downstreamTargetActivation

theorem shh_gradient_closed_from_evidence
    (S : ShhGradientPackage) (E : ShhGradientEvidence S) : ShhGradientClosed S := by
  exact And.intro E.shhSourceEstablishedClosed
    (And.intro E.gradientFormedClosed
      (And.intro E.fibroblastGrowthFactorRegulationClosed E.downstreamTargetActivationClosed))

end DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean
end HautevilleHouse