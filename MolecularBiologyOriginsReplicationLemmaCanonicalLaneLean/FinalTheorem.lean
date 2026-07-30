import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

def ConstrainedReplicationOriginsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_replication_origins_endgame (A : AdmissibleClass) :
    ConstrainedReplicationOriginsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse
