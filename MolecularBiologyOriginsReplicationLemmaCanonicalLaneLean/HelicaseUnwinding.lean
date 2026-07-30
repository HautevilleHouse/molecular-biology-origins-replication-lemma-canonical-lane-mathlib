import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean.ReplicationOriginStructures

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure HelicaseUnwindingPackage {R : ReplicationOriginPackage} (O : ReplicationOriginEvidence R) where
  helicaseLoading : Prop
  atpHydrolysis : Prop
  unwindingRate : Prop
  singleStrandBinding : Prop

structure HelicaseUnwindingEvidence {R : ReplicationOriginPackage} {O : ReplicationOriginEvidence R} (H : HelicaseUnwindingPackage O) where
  helicaseLoadingClosed : H.helicaseLoading
  atpHydrolysisClosed : H.atpHydrolysis
  unwindingRateClosed : H.unwindingRate
  singleStrandBindingClosed : H.singleStrandBinding

def HelicaseUnwindingClosed {R : ReplicationOriginPackage} {O : ReplicationOriginEvidence R} (H : HelicaseUnwindingPackage O) : Prop :=
  H.helicaseLoading ∧ H.atpHydrolysis ∧ H.unwindingRate ∧ H.singleStrandBinding

theorem helicase_unwinding_closed_from_evidence {R : ReplicationOriginPackage} {O : ReplicationOriginEvidence R} (H : HelicaseUnwindingPackage O) (E : HelicaseUnwindingEvidence H) :
    HelicaseUnwindingClosed H := by
  exact And.intro E.helicaseLoadingClosed (And.intro E.atpHydrolysisClosed (And.intro E.unwindingRateClosed E.singleStrandBindingClosed))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse