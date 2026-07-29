import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean

structure ApoptosisSculptingPackage where
  interdigitalApoptosis : Prop
  bmpSignaling : Prop
  msxGeneActivation : Prop
  caspaseActivation : Prop
  digitSeparation : Prop
  jointCavityFormation : Prop

structure ApoptosisSculptingEvidence (A : ApoptosisSculptingPackage) where
  interdigitalApoptosisClosed : A.interdigitalApoptosis
  bmpSignalingClosed : A.bmpSignaling
  msxGeneActivationClosed : A.msxGeneActivation
  caspaseActivationClosed : A.caspaseActivation
  digitSeparationClosed : A.digitSeparation
  jointCavityFormationClosed : A.jointCavityFormation

def ApoptosisSculptingClosed (A : ApoptosisSculptingPackage) : Prop :=
  A.interdigitalApoptosis ∧ A.bmpSignaling ∧ A.msxGeneActivation ∧
  A.caspaseActivation ∧ A.digitSeparation ∧ A.jointCavityFormation

theorem apoptosis_sculpting_closed_from_evidence (A : ApoptosisSculptingPackage)
    (E : ApoptosisSculptingEvidence A) : ApoptosisSculptingClosed A := by
  exact And.intro E.interdigitalApoptosisClosed
    (And.intro E.bmpSignalingClosed
      (And.intro E.msxGeneActivationClosed
        (And.intro E.caspaseActivationClosed
          (And.intro E.digitSeparationClosed
            E.jointCavityFormationClosed))))

end DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean
end HautevilleHouse