import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean.ReplicationOrigins

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure OriginFiringPackage {O : DNAReplicationOrigin} {P : ReplicationOriginsPackage O} (F : OriginActivationPackage P) where
  CDKActivation : Prop
  DDKActivation : Prop
  SPhaseKinaseSignaling : Prop
  preICFormation : Prop
  replicativeHelicaseActivation : Prop
  originMelting : Prop

structure OriginFiringEvidence {O : DNAReplicationOrigin} {P : ReplicationOriginsPackage O} {F : OriginActivationPackage P} (Firing : OriginFiringPackage F) where
  CDKActivationClosed : Firing.CDKActivation
  DDKActivationClosed : Firing.DDKActivation
  SPhaseKinaseSignalingClosed : Firing.SPhaseKinaseSignaling
  preICFormationClosed : Firing.preICFormation
  replicativeHelicaseActivationClosed : Firing.replicativeHelicaseActivation
  originMeltingClosed : Firing.originMelting

def OriginFiringClosed {O : DNAReplicationOrigin} {P : ReplicationOriginsPackage O} {F : OriginActivationPackage P} (Firing : OriginFiringPackage F) : Prop :=
  Firing.CDKActivation ∧ Firing.DDKActivation ∧ Firing.SPhaseKinaseSignaling ∧
  Firing.preICFormation ∧ Firing.replicativeHelicaseActivation ∧ Firing.originMelting

theorem origin_firing_closed_from_evidence
    {O : DNAReplicationOrigin} {P : ReplicationOriginsPackage O} {F : OriginActivationPackage P}
    (Firing : OriginFiringPackage F) (E : OriginFiringEvidence Firing) :
    OriginFiringClosed Firing := by
  exact And.intro E.CDKActivationClosed
    (And.intro E.DDKActivationClosed
      (And.intro E.SPhaseKinaseSignalingClosed
        (And.intro E.preICFormationClosed
          (And.intro E.replicativeHelicaseActivationClosed E.originMeltingClosed))))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse