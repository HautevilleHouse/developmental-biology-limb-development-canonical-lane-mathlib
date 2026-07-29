import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean

structure LimbBudSignalingPackage where
  shhGradient : Prop
  fgfSignaling : Prop
  apicallyEctodermalRidge : Prop
  progressZoneEstablished : Prop
  digitIdentitySpecified : Prop

structure LimbBudSignalingEvidence (L : LimbBudSignalingPackage) where
  shhGradientClosed : L.shhGradient
  fgfSignalingClosed : L.fgfSignaling
  apicallyEctodermalRidgeClosed : L.apicallyEctodermalRidge
  progressZoneEstablishedClosed : L.progressZoneEstablished
  digitIdentitySpecifiedClosed : L.digitIdentitySpecified

def LimbBudSignalingClosed (L : LimbBudSignalingPackage) : Prop :=
  L.shhGradient ∧ L.fgfSignaling ∧ L.apicallyEctodermalRidge ∧
  L.progressZoneEstablished ∧ L.digitIdentitySpecified

theorem limb_bud_signaling_closed_from_evidence (L : LimbBudSignalingPackage)
    (E : LimbBudSignalingEvidence L) : LimbBudSignalingClosed L := by
  exact And.intro E.shhGradientClosed
    (And.intro E.fgfSignalingClosed
      (And.intro E.apicallyEctodermalRidgeClosed
        (And.intro E.progressZoneEstablishedClosed
          E.digitIdentitySpecifiedClosed)))

end DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean
end HautevilleHouse
