import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean.ReplicationOriginStructures

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure PrimasePolymeraseAssemblyPackage {R : ReplicationOriginPackage} (O : ReplicationOriginEvidence R) where
  primaseRecruitment : Prop
  rnaPrimerSynthesis : Prop
  polymeraseSwitch : Prop
  elongationInitiation : Prop

structure PrimasePolymeraseAssemblyEvidence {R : ReplicationOriginPackage} {O : ReplicationOriginEvidence R} (P : PrimasePolymeraseAssemblyPackage O) where
  primaseRecruitmentClosed : P.primaseRecruitment
  rnaPrimerSynthesisClosed : P.rnaPrimerSynthesis
  polymeraseSwitchClosed : P.polymeraseSwitch
  elongationInitiationClosed : P.elongationInitiation

def PrimasePolymeraseAssemblyClosed {R : ReplicationOriginPackage} {O : ReplicationOriginEvidence R} (P : PrimasePolymeraseAssemblyPackage O) : Prop :=
  P.primaseRecruitment ∧ P.rnaPrimerSynthesis ∧ P.polymeraseSwitch ∧ P.elongationInitiation

theorem primase_polymerase_assembly_closed_from_evidence {R : ReplicationOriginPackage} {O : ReplicationOriginEvidence R} (P : PrimasePolymeraseAssemblyPackage O) (E : PrimasePolymeraseAssemblyEvidence P) :
    PrimasePolymeraseAssemblyClosed P := by
  exact And.intro E.primaseRecruitmentClosed (And.intro E.rnaPrimerSynthesisClosed (And.intro E.polymeraseSwitchClosed E.elongationInitiationClosed))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse