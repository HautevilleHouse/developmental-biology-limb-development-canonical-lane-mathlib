import DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def limbProjection : Projection LimbEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem limb_projection_idempotent (x : LimbEndgameState) :
    limbProjection.toFun (limbProjection.toFun x) = limbProjection.toFun x := by
  exact limbProjection.idempotent x

end DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean
end HautevilleHouse
