import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure ReplicationOriginsPackage where
  genomeSequence : Type
  originSites : List (Nat × Nat)
  replicationTiming : Prop
  originActivation : Prop
  licensingFactors : Prop
  chromatinState : Prop
  originSet : originSites ≠ []
  timingDefined : replicationTiming
  activationDefined : originActivation
  licensingDefined : licensingFactors
  chromatinDefined : chromatinState

structure ReplicationOriginsEvidence (P : ReplicationOriginsPackage) where
  originSetClosed : P.originSet
  timingDefinedClosed : P.timingDefined
  activationDefinedClosed : P.activationDefined
  licensingDefinedClosed : P.licensingDefined
  chromatinDefinedClosed : P.chromatinDefined

def ReplicationOriginsClosed (P : ReplicationOriginsPackage) : Prop :=
  P.originSet ∧ P.replicationTiming ∧ P.originActivation ∧ P.licensingFactors ∧ P.chromatinState

theorem replication_origins_closed_from_evidence (P : ReplicationOriginsPackage) (E : ReplicationOriginsEvidence P) :
    ReplicationOriginsClosed P := by
  exact And.intro E.originSetClosed
    (And.intro E.timingDefinedClosed
      (And.intro E.activationDefinedClosed
        (And.intro E.licensingDefinedClosed
          E.chromatinDefinedClosed)))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse