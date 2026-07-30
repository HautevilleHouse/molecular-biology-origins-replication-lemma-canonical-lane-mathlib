import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure ReplicationOriginPackage where
  originSequence : Type u
  initiatorBinding : Prop
  unwindingMechanism : Prop
  bidirectionalReplication : Prop
  originRecognition : Prop

structure ReplicationOriginEvidence (P : ReplicationOriginPackage) where
  initiatorBindingClosed : P.initiatorBinding
  unwindingMechanismClosed : P.unwindingMechanism
  bidirectionalReplicationClosed : P.bidirectionalReplication
  originRecognitionClosed : P.originRecognition

def ReplicationOriginClosed (P : ReplicationOriginPackage) : Prop :=
  P.initiatorBinding ∧ P.unwindingMechanism ∧ P.bidirectionalReplication ∧ P.originRecognition

theorem replication_origin_closed_from_evidence
    (P : ReplicationOriginPackage) (E : ReplicationOriginEvidence P) :
    ReplicationOriginClosed P := by
  exact And.intro E.initiatorBindingClosed
    (And.intro E.unwindingMechanismClosed
      (And.intro E.bidirectionalReplicationClosed
        E.originRecognitionClosed))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse