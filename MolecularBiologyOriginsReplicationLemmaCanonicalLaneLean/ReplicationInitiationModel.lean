import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure OriginRecognitionComplex where
  orcSubunits : Type
  chromatinBinding : Prop
  atpHydrolysis : Prop
  licensingFactor : Prop
  chromatinBindingTerm : chromatinBinding
  atpHydrolysisTerm : atpHydrolysis
  licensingFactorTerm : licensingFactor

structure PreReplicationComplex where
  cdc6Loading : Prop
  cdt1Loading : Prop
  mcmHelicaseLoading : Prop
  originUnwinding : Prop
  cdc6LoadingTerm : cdc6Loading
  cdt1LoadingTerm : cdt1Loading
  mcmHelicaseLoadingTerm : mcmHelicaseLoading
  originUnwindingTerm : originUnwinding

structure ReplicationInitiationModel where
  orc : OriginRecognitionComplex
  preRC : PreReplicationComplex
  initiationCompetence : Prop
  cellCycleRegulation : Prop
  initiationCompetenceTerm : initiationCompetence
  cellCycleRegulationTerm : cellCycleRegulation

def ReplicationInitiationClosed (R : ReplicationInitiationModel) : Prop :=
  R.orc.chromatinBinding ∧ R.orc.atpHydrolysis ∧ R.orc.licensingFactor ∧
  R.preRC.cdc6Loading ∧ R.preRC.cdt1Loading ∧ R.preRC.mcmHelicaseLoading ∧
  R.preRC.originUnwinding ∧ R.initiationCompetence ∧ R.cellCycleRegulation

theorem replication_initiation_closed_from_evidence (R : ReplicationInitiationModel) (E : ReplicationInitiationEvidence) : ReplicationInitiationClosed R := by
  exact And.intro E.orcChromatinBindingClosed (And.intro E.orcAtpHydrolysisClosed (And.intro E.orcLicensingFactorClosed (And.intro E.cdc6LoadingClosed (And.intro E.cdt1LoadingClosed (And.intro E.mcmHelicaseLoadingClosed (And.intro E.originUnwindingClosed (And.intro E.initiationCompetenceClosed E.cellCycleRegulationClosed)))))))

structure ReplicationInitiationEvidence where
  orcChromatinBindingClosed : Bool
  orcAtpHydrolysisClosed : Bool
  orcLicensingFactorClosed : Bool
  cdc6LoadingClosed : Bool
  cdt1LoadingClosed : Bool
  mcmHelicaseLoadingClosed : Bool
  originUnwindingClosed : Bool
  initiationCompetenceClosed : Bool
  cellCycleRegulationClosed : Bool

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse