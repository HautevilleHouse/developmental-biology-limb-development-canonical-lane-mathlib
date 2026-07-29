import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean

structure PreCartilageMesenchymePackage where
  gradientMorphogenPresent : Prop
  cellCellContactSignaling : Prop
  mesenchymalCondensation : Prop
  precartilageNodeFormed : Prop

structure PreCartilageMesenchymeEvidence (P : PreCartilageMesenchymePackage) where
  gradientMorphogenPresentClosed : P.gradientMorphogenPresent
  cellCellContactSignalingClosed : P.cellCellContactSignaling
  mesenchymalCondensationClosed : P.mesenchymalCondensation
  precartilageNodeFormedClosed : P.precartilageNodeFormed

def PreCartilageMesenchymeClosed (P : PreCartilageMesenchymePackage) : Prop :=
  P.gradientMorphogenPresent ∧ P.cellCellContactSignaling ∧
  P.mesenchymalCondensation ∧ P.precartilageNodeFormed

theorem preCartilage_mesenchyme_closed_from_evidence
    (P : PreCartilageMesenchymePackage) (E : PreCartilageMesenchymeEvidence P) :
    PreCartilageMesenchymeClosed P := by
  exact And.intro E.gradientMorphogenPresentClosed
    (And.intro E.cellCellContactSignalingClosed
      (And.intro E.mesenchymalCondensationClosed E.precartilageNodeFormedClosed))

end DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean
end HautevilleHouse