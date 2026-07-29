import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean

structure HoxGeneRegulationPackage where
  hoxdClusterExpressed : Prop
  hoxaClusterExpressed : Prop
  collinearExpressionEstablished : Prop
  posteriorAnteriorAxisDefined : Prop
  digitIdentityCorrelated : Prop

structure HoxGeneRegulationEvidence (H : HoxGeneRegulationPackage) where
  hoxdClusterExpressedClosed : H.hoxdClusterExpressed
  hoxaClusterExpressedClosed : H.hoxaClusterExpressed
  collinearExpressionEstablishedClosed : H.collinearExpressionEstablished
  posteriorAnteriorAxisDefinedClosed : H.posteriorAnteriorAxisDefined
  digitIdentityCorrelatedClosed : H.digitIdentityCorrelated

def HoxGeneRegulationClosed (H : HoxGeneRegulationPackage) : Prop :=
  H.hoxdClusterExpressed ∧ H.hoxaClusterExpressed ∧
  H.collinearExpressionEstablished ∧ H.posteriorAnteriorAxisDefined ∧
  H.digitIdentityCorrelated

theorem hox_gene_regulation_closed_from_evidence
    (H : HoxGeneRegulationPackage) (E : HoxGeneRegulationEvidence H) :
    HoxGeneRegulationClosed H := by
  exact And.intro E.hoxdClusterExpressedClosed
    (And.intro E.hoxaClusterExpressedClosed
      (And.intro E.collinearExpressionEstablishedClosed
        (And.intro E.posteriorAnteriorAxisDefinedClosed
          E.digitIdentityCorrelatedClosed)))

end DevelopmentalBiologyLimbDevelopmentCanonicalLaneLean
end HautevilleHouse