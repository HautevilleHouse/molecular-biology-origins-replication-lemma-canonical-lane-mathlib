import canonicalLaneMathlib.AdmissibleClass

/-!
# DNA Replication Origin Evidence Package
-/

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure DNAReplicationOriginEvidencePackage where
  originSequence : Prop
  initiatorBinding : Prop
  activationAssay : Prop
  replicationTiming : Prop
  chromatinContext : Prop
  conservation : Prop

structure DNAReplicationOriginEvidenceEvidence (E : DNAReplicationOriginEvidencePackage) where
  originSequenceClosed : E.originSequence
  initiatorBindingClosed : E.initiatorBinding
  activationAssayClosed : E.activationAssay
  replicationTimingClosed : E.replicationTiming
  chromatinContextClosed : E.chromatinContext
  conservationClosed : E.conservation

def DNAReplicationOriginEvidenceClosed (E : DNAReplicationOriginEvidencePackage) : Prop :=
  E.originSequence ∧ E.initiatorBinding ∧ E.activationAssay ∧
  E.replicationTiming ∧ E.chromatinContext ∧ E.conservation

theorem dna_replication_origin_evidence_closed_from_evidence
    (E : DNAReplicationOriginEvidencePackage) (Ev : DNAReplicationOriginEvidenceEvidence E) :
    DNAReplicationOriginEvidenceClosed E := by
  exact And.intro Ev.originSequenceClosed
    (And.intro Ev.initiatorBindingClosed
      (And.intro Ev.activationAssayClosed
        (And.intro Ev.replicationTimingClosed
          (And.intro Ev.chromatinContextClosed Ev.conservationClosed))))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse
