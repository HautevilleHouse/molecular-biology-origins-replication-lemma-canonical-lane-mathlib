import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure DNAReplicationOrigin where
  originSequence : Type
  replicationStartSite : Prop
  initiatorBindingAffinity : Prop
  originActivationSignal : Prop
  replicationBubbleFormation : Prop
  originSequenceTerm : originSequence
  replicationStartSiteTerm : replicationStartSite
  initiatorBindingAffinityTerm : initiatorBindingAffinity
  originActivationSignalTerm : originActivationSignal
  replicationBubbleFormationTerm : replicationBubbleFormation

structure ReplicationOriginsPackage (O : DNAReplicationOrigin) where
  originRecognitionComplex : Prop
  helicaseLoading : Prop
  licensingCheckpoint : Prop
  bidirectionalReplicationFork : Prop
  originEfficiency : Prop

structure ReplicationOriginsEvidence {O : DNAReplicationOrigin} (P : ReplicationOriginsPackage O) where
  originRecognitionComplexClosed : P.originRecognitionComplex
  helicaseLoadingClosed : P.helicaseLoading
  licensingCheckpointClosed : P.licensingCheckpoint
  bidirectionalReplicationForkClosed : P.bidirectionalReplicationFork
  originEfficiencyClosed : P.originEfficiency

def ReplicationOriginsClosed {O : DNAReplicationOrigin} (P : ReplicationOriginsPackage O) : Prop :=
  P.originRecognitionComplex ∧ P.helicaseLoading ∧ P.licensingCheckpoint ∧
  P.bidirectionalReplicationFork ∧ P.originEfficiency

theorem replication_origins_closed_from_evidence
    {O : DNAReplicationOrigin} (P : ReplicationOriginsPackage O) (E : ReplicationOriginsEvidence P) :
    ReplicationOriginsClosed P := by
  exact And.intro E.originRecognitionComplexClosed
    (And.intro E.helicaseLoadingClosed
      (And.intro E.licensingCheckpointClosed
        (And.intro E.bidirectionalReplicationForkClosed E.originEfficiencyClosed)))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse