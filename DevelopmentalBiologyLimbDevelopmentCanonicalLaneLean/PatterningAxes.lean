import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean

structure PatterningAxesPackage where
  proximalDistalAxis : Prop
  anteriorPosteriorAxis : Prop
  dorsalVentralAxis : Prop
  hoxGeneCoding : Prop
  tbxGenePattern : Prop
  digitsFormed : Prop

structure PatterningAxesEvidence (P : PatterningAxesPackage) where
  proximalDistalAxisClosed : P.proximalDistalAxis
  anteriorPosteriorAxisClosed : P.anteriorPosteriorAxis
  dorsalVentralAxisClosed : P.dorsalVentralAxis
  hoxGeneCodingClosed : P.hoxGeneCoding
  tbxGenePatternClosed : P.tbxGenePattern
  digitsFormedClosed : P.digitsFormed

def PatterningAxesClosed (P : PatterningAxesPackage) : Prop :=
  P.proximalDistalAxis ∧ P.anteriorPosteriorAxis ∧ P.dorsalVentralAxis ∧
  P.hoxGeneCoding ∧ P.tbxGenePattern ∧ P.digitsFormed

theorem patterning_axes_closed_from_evidence (P : PatterningAxesPackage)
    (E : PatterningAxesEvidence P) : PatterningAxesClosed P := by
  exact And.intro E.proximalDistalAxisClosed
    (And.intro E.anteriorPosteriorAxisClosed
      (And.intro E.dorsalVentralAxisClosed
        (And.intro E.hoxGeneCodingClosed
          (And.intro E.tbxGenePatternClosed
            E.digitsFormedClosed))))

end DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean
end HautevilleHouse