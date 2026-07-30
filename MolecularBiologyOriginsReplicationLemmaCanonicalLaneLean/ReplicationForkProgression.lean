import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean.HelicaseUnwinding
import MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean.PrimasePolymeraseAssembly

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure ReplicationForkProgressionPackage {R : ReplicationOriginPackage} {O : ReplicationOriginEvidence R} (H : HelicaseUnwindingPackage O) (P : PrimasePolymeraseAssemblyPackage O) where
  leadingStrandSynthesis : Prop
  laggingStrandSynthesis : Prop
  okazakiFragmentProcessing : Prop
  proofreadingRepair : Prop

structure ReplicationForkProgressionEvidence {R : ReplicationOriginPackage} {O : ReplicationOriginEvidence R} {H : HelicaseUnwindingPackage O} {P : PrimasePolymeraseAssemblyPackage O} (F : ReplicationForkProgressionPackage H P) where
  leadingStrandSynthesisClosed : F.leadingStrandSynthesis
  laggingStrandSynthesisClosed : F.laggingStrandSynthesis
  okazakiFragmentProcessingClosed : F.okazakiFragmentProcessing
  proofreadingRepairClosed : F.proofreadingRepair

def ReplicationForkProgressionClosed {R : ReplicationOriginPackage} {O : ReplicationOriginEvidence R} {H : HelicaseUnwindingPackage O} {P : PrimasePolymeraseAssemblyPackage O} (F : ReplicationForkProgressionPackage H P) : Prop :=
  F.leadingStrandSynthesis ∧ F.laggingStrandSynthesis ∧ F.okazakiFragmentProcessing ∧ F.proofreadingRepair

theorem replication_fork_progression_closed_from_evidence {R : ReplicationOriginPackage} {O : ReplicationOriginEvidence R} {H : HelicaseUnwindingPackage O} {P : PrimasePolymeraseAssemblyPackage O} (F : ReplicationForkProgressionPackage H P) (E : ReplicationForkProgressionEvidence F) :
    ReplicationForkProgressionClosed F := by
  exact And.intro E.leadingStrandSynthesisClosed (And.intro E.laggingStrandSynthesisClosed (And.intro E.okazakiFragmentProcessingClosed E.proofreadingRepairClosed))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse