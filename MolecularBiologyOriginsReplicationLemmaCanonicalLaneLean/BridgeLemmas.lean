import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ReplicationOriginsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse
