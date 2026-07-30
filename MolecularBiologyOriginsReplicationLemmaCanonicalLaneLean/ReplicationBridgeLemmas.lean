import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

def bridgeClosed (A : ReplicationAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : ReplicationAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse