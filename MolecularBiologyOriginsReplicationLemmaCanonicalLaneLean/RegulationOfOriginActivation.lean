import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure RegulationOfOriginActivationPackage where
  CDKRegulation : Prop
  DDKRegulation : Prop
  CheckpointControl : Prop
  OriginFiringTiming : Prop
  ReplicationStressResponse : Prop
  CDKRegulationDefined : CDKRegulation
  DDKRegulationDefined : DDKRegulation
  CheckpointControlDefined : CheckpointControl
  OriginFiringTimingDefined : OriginFiringTiming
  ReplicationStressResponseDefined : ReplicationStressResponse

structure RegulationOfOriginActivationEvidence (R : RegulationOfOriginActivationPackage) where
  CDKRegulationClosed : R.CDKRegulation
  DDKRegulationClosed : R.DDKRegulation
  CheckpointControlClosed : R.CheckpointControl
  OriginFiringTimingClosed : R.OriginFiringTiming
  ReplicationStressResponseClosed : R.ReplicationStressResponse

def RegulationOfOriginActivationClosed (R : RegulationOfOriginActivationPackage) : Prop :=
  R.CDKRegulation ∧ R.DDKRegulation ∧ R.CheckpointControl ∧ R.OriginFiringTiming ∧ R.ReplicationStressResponse

theorem regulation_of_origin_activation_closed_from_evidence (R : RegulationOfOriginActivationPackage) (E : RegulationOfOriginActivationEvidence R) :
    RegulationOfOriginActivationClosed R := by
  exact And.intro E.CDKRegulationClosed
    (And.intro E.DDKRegulationClosed
      (And.intro E.CheckpointControlClosed
        (And.intro E.OriginFiringTimingClosed E.ReplicationStressResponseClosed)))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse