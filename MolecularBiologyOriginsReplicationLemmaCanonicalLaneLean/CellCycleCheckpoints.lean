import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean.ReplicationOrigins

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure CellCycleCheckpointsPackage {O : DNAReplicationOrigin} {P : ReplicationOriginsPackage O} (R : CellCycleRegulationPackage P) where
  G1Checkpoint : Prop
  G1SCheckpoint : Prop
  G2Checkpoint : Prop
  mitoticCheckpoint : Prop
  dnaDamageCheckpoint : Prop

structure CellCycleCheckpointsEvidence {O : DNAReplicationOrigin} {P : ReplicationOriginsPackage O} {R : CellCycleRegulationPackage P} (C : CellCycleCheckpointsPackage R) where
  G1CheckpointClosed : C.G1Checkpoint
  G1SCheckpointClosed : C.G1SCheckpoint
  G2CheckpointClosed : C.G2Checkpoint
  mitoticCheckpointClosed : C.mitoticCheckpoint
  dnaDamageCheckpointClosed : C.dnaDamageCheckpoint

def CellCycleCheckpointsClosed {O : DNAReplicationOrigin} {P : ReplicationOriginsPackage O} {R : CellCycleRegulationPackage P} (C : CellCycleCheckpointsPackage R) : Prop :=
  C.G1Checkpoint ∧ C.G1SCheckpoint ∧ C.G2Checkpoint ∧ C.mitoticCheckpoint ∧ C.dnaDamageCheckpoint

theorem cell_cycle_checkpoints_closed_from_evidence
    {O : DNAReplicationOrigin} {P : ReplicationOriginsPackage O} {R : CellCycleRegulationPackage P}
    (C : CellCycleCheckpointsPackage R) (E : CellCycleCheckpointsEvidence C) :
    CellCycleCheckpointsClosed C := by
  exact And.intro E.G1CheckpointClosed
    (And.intro E.G1SCheckpointClosed
      (And.intro E.G2CheckpointClosed
        (And.intro E.mitoticCheckpointClosed E.dnaDamageCheckpointClosed)))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse