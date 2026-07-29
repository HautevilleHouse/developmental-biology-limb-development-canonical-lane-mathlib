import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean

def ConstrainedLimbDevelopmentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_limb_development_endgame (A : AdmissibleClass) :
    ConstrainedLimbDevelopmentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean
end HautevilleHouse
