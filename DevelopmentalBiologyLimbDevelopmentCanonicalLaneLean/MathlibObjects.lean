import DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LimbSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LimbAdmittedObject where
  space : LimbSpace
  developmentalStage : Prop
  limbPatterningComplete : Prop
  modelOrganism : Type
  organismTopology : TopologicalSpace modelOrganism
  comparableToHumanLimb : Prop
  conclusion : comparableToHumanLimb

structure LimbEndgameState where
  object : LimbAdmittedObject

def LimbWitnessClosed (O : LimbAdmittedObject) : Prop :=
  O.comparableToHumanLimb

end DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean
end HautevilleHouse
