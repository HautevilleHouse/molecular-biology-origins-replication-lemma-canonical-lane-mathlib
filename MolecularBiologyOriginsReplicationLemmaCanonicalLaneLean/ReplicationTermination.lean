import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure ReplicationForkTermination where
  forkConvergence : Prop
  terminationSequences : Prop
  topoisomeraseResolution : Prop
  decatenation : Prop
  forkConvergenceTerm : forkConvergence
  terminationSequencesTerm : terminationSequences
  topoisomeraseResolutionTerm : topoisomeraseResolution
  decatenationTerm : decatenation

structure ChromosomeSegregation where
  sisterChromatidCohesion : Prop
  cohesinRemoval : Prop
  mitoticSpindleAttachment : Prop
  anaphaseOnset : Prop
  sisterChromatidCohesionTerm : sisterChromatidCohesion
  cohesinRemovalTerm : cohesinRemoval
  mitoticSpindleAttachmentTerm : mitoticSpindleAttachment
  anaphaseOnsetTerm : anaphaseOnset

structure ReplicationTermination where
  forkTermination : ReplicationForkTermination
  segregation : ChromosomeSegregation
  genomeIntegrityMaintained : Prop
  cellCycleProgression : Prop
  genomeIntegrityMaintainedTerm : genomeIntegrityMaintained
  cellCycleProgressionTerm : cellCycleProgression

def ReplicationTerminationClosed (T : ReplicationTermination) : Prop :=
  T.forkTermination.forkConvergence ∧ T.forkTermination.terminationSequences ∧
  T.forkTermination.topoisomeraseResolution ∧ T.forkTermination.decatenation ∧
  T.segregation.sisterChromatidCohesion ∧ T.segregation.cohesinRemoval ∧
  T.segregation.mitoticSpindleAttachment ∧ T.segregation.anaphaseOnset ∧
  T.genomeIntegrityMaintained ∧ T.cellCycleProgression

theorem replication_termination_closed_from_evidence (T : ReplicationTermination) (E : ReplicationTerminationEvidence) : ReplicationTerminationClosed T := by
  exact And.intro E.forkConvergenceClosed (And.intro E.terminationSequencesClosed (And.intro E.topoisomeraseResolutionClosed (And.intro E.decatenationClosed (And.intro E.sisterChromatidCohesionClosed (And.intro E.cohesinRemovalClosed (And.intro E.mitoticSpindleAttachmentClosed (And.intro E.anaphaseOnsetClosed (And.intro E.genomeIntegrityMaintainedClosed E.cellCycleProgressionClosed))))))))

structure ReplicationTerminationEvidence where
  forkConvergenceClosed : Bool
  terminationSequencesClosed : Bool
  topoisomeraseResolutionClosed : Bool
  decatenationClosed : Bool
  sisterChromatidCohesionClosed : Bool
  cohesinRemovalClosed : Bool
  mitoticSpindleAttachmentClosed : Bool
  anaphaseOnsetClosed : Bool
  genomeIntegrityMaintainedClosed : Bool
  cellCycleProgressionClosed : Bool

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse