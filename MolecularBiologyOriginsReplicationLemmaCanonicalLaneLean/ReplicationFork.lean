import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean.ReplicationOrigins

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure ReplicationForkPackage {O : DNAReplicationOrigin} {P : ReplicationOriginsPackage O} (F : HelicaseLoadingPackage P) where
  leadingStrandSynthesis : Prop
  laggingStrandSynthesis : Prop
  okazakiFragments : Prop
  DNAPolymeraseProcessivity : Prop
  clampLoading : Prop
  topoisomeraseActivity : Prop

structure ReplicationForkEvidence {O : DNAReplicationOrigin} {P : ReplicationOriginsPackage O} {F : HelicaseLoadingPackage P} (R : ReplicationForkPackage F) where
  leadingStrandSynthesisClosed : R.leadingStrandSynthesis
  laggingStrandSynthesisClosed : R.laggingStrandSynthesis
  okazakiFragmentsClosed : R.okazakiFragments
  DNAPolymeraseProcessivityClosed : R.DNAPolymeraseProcessivity
  clampLoadingClosed : R.clampLoading
  topoisomeraseActivityClosed : R.topoisomeraseActivity

def ReplicationForkClosed {O : DNAReplicationOrigin} {P : ReplicationOriginsPackage O} {F : HelicaseLoadingPackage P} (R : ReplicationForkPackage F) : Prop :=
  R.leadingStrandSynthesis ∧ R.laggingStrandSynthesis ∧ R.okazakiFragments ∧
  R.DNAPolymeraseProcessivity ∧ R.clampLoading ∧ R.topoisomeraseActivity

theorem replication_fork_closed_from_evidence
    {O : DNAReplicationOrigin} {P : ReplicationOriginsPackage O} {F : HelicaseLoadingPackage P}
    (R : ReplicationForkPackage F) (E : ReplicationForkEvidence R) :
    ReplicationForkClosed R := by
  exact And.intro E.leadingStrandSynthesisClosed
    (And.intro E.laggingStrandSynthesisClosed
      (And.intro E.okazakiFragmentsClosed
        (And.intro E.DNAPolymeraseProcessivityClosed
          (And.intro E.clampLoadingClosed E.topoisomeraseActivityClosed))))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse