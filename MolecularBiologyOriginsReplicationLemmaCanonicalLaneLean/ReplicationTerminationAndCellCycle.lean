import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean.ReplicationForkProgression

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure ReplicationTerminationAndCellCyclePackage {R : ReplicationOriginPackage} {O : ReplicationOriginEvidence R} {H : HelicaseUnwindingPackage O} {P : PrimasePolymeraseAssemblyPackage O} {F : ReplicationForkProgressionPackage H P} (X : ReplicationForkProgressionEvidence F) where
  forkTermination : Prop
  sisterChromatidCohesion : Prop
  cellCycleCheckpoint : Prop
  chromatinReassembly : Prop

structure ReplicationTerminationAndCellCycleEvidence {R : ReplicationOriginPackage} {O : ReplicationOriginEvidence R} {H : HelicaseUnwindingPackage O} {P : PrimasePolymeraseAssemblyPackage O} {F : ReplicationForkProgressionPackage H P} {X : ReplicationForkProgressionEvidence F} (T : ReplicationTerminationAndCellCyclePackage X) where
  forkTerminationClosed : T.forkTermination
  sisterChromatidCohesionClosed : T.sisterChromatidCohesion
  cellCycleCheckpointClosed : T.cellCycleCheckpoint
  chromatinReassemblyClosed : T.chromatinReassembly

def ReplicationTerminationAndCellCycleClosed {R : ReplicationOriginPackage} {O : ReplicationOriginEvidence R} {H : HelicaseUnwindingPackage O} {P : PrimasePolymeraseAssemblyPackage O} {F : ReplicationForkProgressionPackage H P} {X : ReplicationForkProgressionEvidence F} (T : ReplicationTerminationAndCellCyclePackage X) : Prop :=
  T.forkTermination ∧ T.sisterChromatidCohesion ∧ T.cellCycleCheckpoint ∧ T.chromatinReassembly

theorem replication_termination_and_cell_cycle_closed_from_evidence {R : ReplicationOriginPackage} {O : ReplicationOriginEvidence R} {H : HelicaseUnwindingPackage O} {P : PrimasePolymeraseAssemblyPackage O} {F : ReplicationForkProgressionPackage H P} {X : ReplicationForkProgressionEvidence F} (T : ReplicationTerminationAndCellCyclePackage X) (E : ReplicationTerminationAndCellCycleEvidence T) :
    ReplicationTerminationAndCellCycleClosed T := by
  exact And.intro E.forkTerminationClosed (And.intro E.sisterChromatidCohesionClosed (And.intro E.cellCycleCheckpointClosed E.chromatinReassemblyClosed))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse