import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure ReplicationInitiationPackage where
  preReplicationComplex : Type u
  helicaseLoading : Prop
  primerSynthesis : Prop
  polymeraseHandoff : Prop
  replicationStart : Prop

structure ReplicationInitiationEvidence (P : ReplicationInitiationPackage) where
  helicaseLoadingClosed : P.helicaseLoading
  primerSynthesisClosed : P.primerSynthesis
  polymeraseHandoffClosed : P.polymeraseHandoff
  replicationStartClosed : P.replicationStart

def ReplicationInitiationClosed (P : ReplicationInitiationPackage) : Prop :=
  P.helicaseLoading ∧ P.primerSynthesis ∧ P.polymeraseHandoff ∧ P.replicationStart

theorem replication_initiation_closed_from_evidence
    (P : ReplicationInitiationPackage) (E : ReplicationInitiationEvidence P) :
    ReplicationInitiationClosed P := by
  exact And.intro E.helicaseLoadingClosed
    (And.intro E.primerSynthesisClosed
      (And.intro E.polymeraseHandoffClosed
        E.replicationStartClosed))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse