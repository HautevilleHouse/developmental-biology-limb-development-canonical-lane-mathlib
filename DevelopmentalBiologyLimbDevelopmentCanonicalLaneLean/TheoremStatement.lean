import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean

structure LimbAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  limbFormation : Prop
  patternFormation : Prop
  conclusion : limbFormation ∧ patternFormation

def LimbWitnessClosed (O : LimbAdmittedObject) : Prop :=
  O.limbFormation ∧ O.patternFormation

end DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean
end HautevilleHouse