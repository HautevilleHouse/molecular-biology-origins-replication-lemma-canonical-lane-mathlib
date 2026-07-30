import canonicalLaneMathlib.AdmissibleClass

/-!
# DNA Replication Initiation Package
-/

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure DNAReplicationInitiationPackage where
  originSequence : Prop
  initiatorProteinBinding : Prop
  unwinding : Prop
  primerSynthesis : Prop
  originActivation : Prop

structure DNAReplicationInitiationEvidence (C : DNAReplicationInitiationPackage) where
  originSequenceClosed : C.originSequence
  initiatorProteinBindingClosed : C.initiatorProteinBinding
  unwindingClosed : C.unwinding
  primerSynthesisClosed : C.primerSynthesis
  originActivationClosed : C.originActivation

def DNAReplicationInitiationClosed (C : DNAReplicationInitiationPackage) : Prop :=
  C.originSequence ∧ C.initiatorProteinBinding ∧ C.unwinding ∧ C.primerSynthesis ∧ C.originActivation

theorem dna_replication_initiation_closed_from_evidence
    (C : DNAReplicationInitiationPackage) (E : DNAReplicationInitiationEvidence C) :
    DNAReplicationInitiationClosed C := by
  exact And.intro E.originSequenceClosed
    (And.intro E.initiatorProteinBindingClosed
      (And.intro E.unwindingClosed
        (And.intro E.primerSynthesisClosed E.originActivationClosed)))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse
