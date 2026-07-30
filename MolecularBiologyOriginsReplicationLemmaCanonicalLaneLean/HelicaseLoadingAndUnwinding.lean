import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure HelicaseLoadingAndUnwindingPackage where
  McmDoubleHexamer : Prop
  Cdc45Loading : Prop
  GINSComplexLoading : Prop
  DNAUnwinding : Prop
  ReplicationForkEstablishment : Prop
  McmDoubleHexamerDefined : McmDoubleHexamer
  Cdc45LoadingDefined : Cdc45Loading
  GINSComplexLoadingDefined : GINSComplexLoading
  DNAUnwindingDefined : DNAUnwinding
  ReplicationForkEstablishmentDefined : ReplicationForkEstablishment

structure HelicaseLoadingAndUnwindingEvidence (H : HelicaseLoadingAndUnwindingPackage) where
  McmDoubleHexamerClosed : H.McmDoubleHexamer
  Cdc45LoadingClosed : H.Cdc45Loading
  GINSComplexLoadingClosed : H.GINSComplexLoading
  DNAUnwindingClosed : H.DNAUnwinding
  ReplicationForkEstablishmentClosed : H.ReplicationForkEstablishment

def HelicaseLoadingAndUnwindingClosed (H : HelicaseLoadingAndUnwindingPackage) : Prop :=
  H.McmDoubleHexamer ∧ H.Cdc45Loading ∧ H.GINSComplexLoading ∧ H.DNAUnwinding ∧ H.ReplicationForkEstablishment

theorem helicase_loading_and_unwinding_closed_from_evidence (H : HelicaseLoadingAndUnwindingPackage) (E : HelicaseLoadingAndUnwindingEvidence H) :
    HelicaseLoadingAndUnwindingClosed H := by
  exact And.intro E.McmDoubleHexamerClosed
    (And.intro E.Cdc45LoadingClosed
      (And.intro E.GINSComplexLoadingClosed
        (And.intro E.DNAUnwindingClosed E.ReplicationForkEstablishmentClosed)))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse