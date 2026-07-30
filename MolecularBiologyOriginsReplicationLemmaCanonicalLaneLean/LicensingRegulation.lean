import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean.ReplicationOrigins

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure LicensingRegulationPackage {O : DNAReplicationOrigin} {P : ReplicationOriginsPackage O} (L : LicensingCheckpointPackage P) where
  preRCFormation : Prop
  CDT1Loading : Prop
  MCMHelicaseLoading : Prop
  gemininInhibition : Prop
  licensingRestriction : Prop
  reReplicationPrevention : Prop

structure LicensingRegulationEvidence {O : DNAReplicationOrigin} {P : ReplicationOriginsPackage O} {L : LicensingCheckpointPackage P} (R : LicensingRegulationPackage L) where
  preRCFormationClosed : R.preRCFormation
  CDT1LoadingClosed : R.CDT1Loading
  MCMHelicaseLoadingClosed : R.MCMHelicaseLoading
  gemininInhibitionClosed : R.gemininInhibition
  licensingRestrictionClosed : R.licensingRestriction
  reReplicationPreventionClosed : R.reReplicationPrevention

def LicensingRegulationClosed {O : DNAReplicationOrigin} {P : ReplicationOriginsPackage O} {L : LicensingCheckpointPackage P} (R : LicensingRegulationPackage L) : Prop :=
  R.preRCFormation ∧ R.CDT1Loading ∧ R.MCMHelicaseLoading ∧ R.gemininInhibition ∧
  R.licensingRestriction ∧ R.reReplicationPrevention

theorem licensing_regulation_closed_from_evidence
    {O : DNAReplicationOrigin} {P : ReplicationOriginsPackage O} {L : LicensingCheckpointPackage P}
    (R : LicensingRegulationPackage L) (E : LicensingRegulationEvidence R) :
    LicensingRegulationClosed R := by
  exact And.intro E.preRCFormationClosed
    (And.intro E.CDT1LoadingClosed
      (And.intro E.MCMHelicaseLoadingClosed
        (And.intro E.gemininInhibitionClosed
          (And.intro E.licensingRestrictionClosed E.reReplicationPreventionClosed))))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse