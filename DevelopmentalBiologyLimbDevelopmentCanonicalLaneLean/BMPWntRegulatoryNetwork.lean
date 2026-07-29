import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean

structure BMPWntNetworkPackage where
  bmpSignalingActive : Prop
  wntSignalingActive : Prop
  crossRegulatoryInteractions : Prop
  chondrogenesisInduction : Prop

structure BMPWntNetworkEvidence (B : BMPWntNetworkPackage) where
  bmpSignalingActiveClosed : B.bmpSignalingActive
  wntSignalingActiveClosed : B.wntSignalingActive
  crossRegulatoryInteractionsClosed : B.crossRegulatoryInteractions
  chondrogenesisInductionClosed : B.chondrogenesisInduction

def BMPWntNetworkClosed (B : BMPWntNetworkPackage) : Prop :=
  B.bmpSignalingActive ∧ B.wntSignalingActive ∧
  B.crossRegulatoryInteractions ∧ B.chondrogenesisInduction

theorem bmp_wnt_network_closed_from_evidence
    (B : BMPWntNetworkPackage) (E : BMPWntNetworkEvidence B) : BMPWntNetworkClosed B := by
  exact And.intro E.bmpSignalingActiveClosed
    (And.intro E.wntSignalingActiveClosed
      (And.intro E.crossRegulatoryInteractionsClosed E.chondrogenesisInductionClosed))

end DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean
end HautevilleHouse