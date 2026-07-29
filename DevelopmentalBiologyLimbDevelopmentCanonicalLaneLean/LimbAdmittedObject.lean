import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean

structure LimbSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LimbAdmittedObject where
  space : LimbSpace
  limbBudDeveloped : Prop
  digitPatternFormed : Prop
  cellLineageModels : Type
  lineageTopology : TopologicalSpace cellLineageModels
  patterningComplete : Prop
  conclusion : patterningComplete

structure LimbEndgameState where
  object : LimbAdmittedObject

def LimbWitnessClosed (O : LimbAdmittedObject) : Prop :=
  O.patterningComplete

end DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean
end HautevilleHouse
