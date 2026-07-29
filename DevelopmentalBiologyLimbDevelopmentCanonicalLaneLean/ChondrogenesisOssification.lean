import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean

structure ChondrogenesisOssificationPackage where
  mesenchymalCondensation : Prop
  sox9Expression : Prop
  collagenTypeII : Prop
  chondrocyteHypertrophy : Prop
  runx2Expression : Prop
  boneFormation : Prop
  growthPlateOrganization : Prop

structure ChondrogenesisOssificationEvidence (C : ChondrogenesisOssificationPackage) where
  mesenchymalCondensationClosed : C.mesenchymalCondensation
  sox9ExpressionClosed : C.sox9Expression
  collagenTypeIIClosed : C.collagenTypeII
  chondrocyteHypertrophyClosed : C.chondrocyteHypertrophy
  runx2ExpressionClosed : C.runx2Expression
  boneFormationClosed : C.boneFormation
  growthPlateOrganizationClosed : C.growthPlateOrganization

def ChondrogenesisOssificationClosed (C : ChondrogenesisOssificationPackage) : Prop :=
  C.mesenchymalCondensation ∧ C.sox9Expression ∧ C.collagenTypeII ∧
  C.chondrocyteHypertrophy ∧ C.runx2Expression ∧ C.boneFormation ∧
  C.growthPlateOrganization

theorem chondrogenesis_ossification_closed_from_evidence
    (C : ChondrogenesisOssificationPackage)
    (E : ChondrogenesisOssificationEvidence C) : ChondrogenesisOssificationClosed C := by
  exact And.intro E.mesenchymalCondensationClosed
    (And.intro E.sox9ExpressionClosed
      (And.intro E.collagenTypeIIClosed
        (And.intro E.chondrocyteHypertrophyClosed
          (And.intro E.runx2ExpressionClosed
            (And.intro E.boneFormationClosed
              E.growthPlateOrganizationClosed)))))

end DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean
end HautevilleHouse