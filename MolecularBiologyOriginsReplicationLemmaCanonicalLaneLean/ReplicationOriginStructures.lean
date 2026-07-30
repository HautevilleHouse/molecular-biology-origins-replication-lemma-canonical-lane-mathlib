import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure ReplicationOriginPackage where
  originSequence : Type
  initiatorBinding : Prop
  unwindingMechanism : Prop
  primerSynthesis : Prop
  elongationComplex : Prop

structure ReplicationOriginEvidence (R : ReplicationOriginPackage) where
  originSequenceClosed : R.initiatorBinding
  initiatorBindingClosed : R.initiatorBinding
  unwindingMechanismClosed : R.unwindingMechanism
  primerSynthesisClosed : R.primerSynthesis
  elongationComplexClosed : R.elongationComplex

def ReplicationOriginClosed (R : ReplicationOriginPackage) : Prop :=
  R.initiatorBinding ∧ R.unwindingMechanism ∧ R.primerSynthesis ∧ R.elongationComplex

theorem replication_origin_closed_from_evidence (R : ReplicationOriginPackage) (E : ReplicationOriginEvidence R) :
    ReplicationOriginClosed R := by
  exact And.intro E.initiatorBindingClosed (And.intro E.unwindingMechanismClosed (And.intro E.primerSynthesisClosed E.elongationComplexClosed))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse