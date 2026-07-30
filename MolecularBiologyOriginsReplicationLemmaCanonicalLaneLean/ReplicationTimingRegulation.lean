import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure CellCycleCheckpoints where
  g1Checkpoint : Prop
  g2Checkpoint : Prop
  intraSCheckpoint : Prop
  dnaDamageResponse : Prop
  g1CheckpointTerm : g1Checkpoint
  g2CheckpointTerm : g2Checkpoint
  intraSCheckpointTerm : intraSCheckpoint
  dnaDamageResponseTerm : dnaDamageResponse

structure OriginFiringProgram where
  earlyOrigins : Prop
  lateOrigins : Prop
  dormantOrigins : Prop
  replicationDomains : Prop
  earlyOriginsTerm : earlyOrigins
  lateOriginsTerm : lateOrigins
  dormantOriginsTerm : dormantOrigins
  replicationDomainsTerm : replicationDomains

structure ReplicationTimingRegulation where
  checkpoints : CellCycleCheckpoints
  firingProgram : OriginFiringProgram
  timingCoordination : Prop
  replicationStressResponse : Prop
  timingCoordinationTerm : timingCoordination
  replicationStressResponseTerm : replicationStressResponse

def ReplicationTimingClosed (T : ReplicationTimingRegulation) : Prop :=
  T.checkpoints.g1Checkpoint ∧ T.checkpoints.g2Checkpoint ∧
  T.checkpoints.intraSCheckpoint ∧ T.checkpoints.dnaDamageResponse ∧
  T.firingProgram.earlyOrigins ∧ T.firingProgram.lateOrigins ∧
  T.firingProgram.dormantOrigins ∧ T.firingProgram.replicationDomains ∧
  T.timingCoordination ∧ T.replicationStressResponse

theorem replication_timing_closed_from_evidence (T : ReplicationTimingRegulation) (E : ReplicationTimingEvidence) : ReplicationTimingClosed T := by
  exact And.intro E.g1CheckpointClosed (And.intro E.g2CheckpointClosed (And.intro E.intraSCheckpointClosed (And.intro E.dnaDamageResponseClosed (And.intro E.earlyOriginsClosed (And.intro E.lateOriginsClosed (And.intro E.dormantOriginsClosed (And.intro E.replicationDomainsClosed (And.intro E.timingCoordinationClosed E.replicationStressResponseClosed))))))))

structure ReplicationTimingEvidence where
  g1CheckpointClosed : Bool
  g2CheckpointClosed : Bool
  intraSCheckpointClosed : Bool
  dnaDamageResponseClosed : Bool
  earlyOriginsClosed : Bool
  lateOriginsClosed : Bool
  dormantOriginsClosed : Bool
  replicationDomainsClosed : Bool
  timingCoordinationClosed : Bool
  replicationStressResponseClosed : Bool

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse