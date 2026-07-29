import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean

structure AERFunctionPackage where
  apicalEctodermalRidgeMaintained : Prop
  fgf8Expression : Prop
  fgf4Expression : Prop
  cellProliferationInduced : Prop
  mesenchymeSurvival : Prop
  shhFeedback : Prop

structure AERFunctionEvidence (A : AERFunctionPackage) where
  apicalEctodermalRidgeMaintainedClosed : A.apicalEctodermalRidgeMaintained
  fgf8ExpressionClosed : A.fgf8Expression
  fgf4ExpressionClosed : A.fgf4Expression
  cellProliferationInducedClosed : A.cellProliferationInduced
  mesenchymeSurvivalClosed : A.mesenchymeSurvival
  shhFeedbackClosed : A.shhFeedback

def AERFunctionClosed (A : AERFunctionPackage) : Prop :=
  A.apicalEctodermalRidgeMaintained ∧ A.fgf8Expression ∧ A.fgf4Expression ∧
  A.cellProliferationInduced ∧ A.mesenchymeSurvival ∧ A.shhFeedback

theorem aer_function_closed_from_evidence (A : AERFunctionPackage)
    (E : AERFunctionEvidence A) : AERFunctionClosed A := by
  exact And.intro E.apicalEctodermalRidgeMaintainedClosed
    (And.intro E.fgf8ExpressionClosed
      (And.intro E.fgf4ExpressionClosed
        (And.intro E.cellProliferationInducedClosed
          (And.intro E.mesenchymeSurvivalClosed
            E.shhFeedbackClosed))))

end DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean
end HautevilleHouse