import canonicalLaneMathlib.AdmissibleClass

/-!
# Replication Fork Dynamics Package
-/

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure ReplicationForkDynamicsPackage where
  helicaseUnwinding : Prop
  polymeraseElongation : Prop
  leadingStrandSynthesis : Prop
  laggingStrandSynthesis : Prop
  okazakiFragments : Prop

structure ReplicationForkDynamicsEvidence (F : ReplicationForkDynamicsPackage) where
  helicaseUnwindingClosed : F.helicaseUnwinding
  polymeraseElongationClosed : F.polymeraseElongation
  leadingStrandSynthesisClosed : F.leadingStrandSynthesis
  laggingStrandSynthesisClosed : F.laggingStrandSynthesis
  okazakiFragmentsClosed : F.okazakiFragments

def ReplicationForkDynamicsClosed (F : ReplicationForkDynamicsPackage) : Prop :=
  F.helicaseUnwinding ∧ F.polymeraseElongation ∧ F.leadingStrandSynthesis ∧
  F.laggingStrandSynthesis ∧ F.okazakiFragments

theorem replication_fork_dynamics_closed_from_evidence
    (F : ReplicationForkDynamicsPackage) (E : ReplicationForkDynamicsEvidence F) :
    ReplicationForkDynamicsClosed F := by
  exact And.intro E.helicaseUnwindingClosed
    (And.intro E.polymeraseElongationClosed
      (And.intro E.leadingStrandSynthesisClosed
        (And.intro E.laggingStrandSynthesisClosed E.okazakiFragmentsClosed)))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse
