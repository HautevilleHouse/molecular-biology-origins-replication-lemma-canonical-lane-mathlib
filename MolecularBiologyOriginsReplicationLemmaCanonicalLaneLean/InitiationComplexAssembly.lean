import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure InitiationComplexAssemblyPackage where
  preRCFormation : Prop
  ORCBinding : Prop
  Cdc6Loading : Prop
  Cdt1Loading : Prop
  McmLoading : Prop
  preRCFormationDefined : preRCFormation
  ORCBindingDefined : ORCBinding
  Cdc6LoadingDefined : Cdc6Loading
  Cdt1LoadingDefined : Cdt1Loading
  McmLoadingDefined : McmLoading

structure InitiationComplexAssemblyEvidence (I : InitiationComplexAssemblyPackage) where
  preRCFormationClosed : I.preRCFormation
  ORCBindingClosed : I.ORCBinding
  Cdc6LoadingClosed : I.Cdc6Loading
  Cdt1LoadingClosed : I.Cdt1Loading
  McmLoadingClosed : I.McmLoading

def InitiationComplexAssemblyClosed (I : InitiationComplexAssemblyPackage) : Prop :=
  I.preRCFormation ∧ I.ORCBinding ∧ I.Cdc6Loading ∧ I.Cdt1Loading ∧ I.McmLoading

theorem initiation_complex_assembly_closed_from_evidence (I : InitiationComplexAssemblyPackage) (E : InitiationComplexAssemblyEvidence I) :
    InitiationComplexAssemblyClosed I := by
  exact And.intro E.preRCFormationClosed
    (And.intro E.ORCBindingClosed
      (And.intro E.Cdc6LoadingClosed
        (And.intro E.Cdt1LoadingClosed E.McmLoadingClosed)))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse