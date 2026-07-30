import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

def gateClosed (A : ReplicationAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ReplicationAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse