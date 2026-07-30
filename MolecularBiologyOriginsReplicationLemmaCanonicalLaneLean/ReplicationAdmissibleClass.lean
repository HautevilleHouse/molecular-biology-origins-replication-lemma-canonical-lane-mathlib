import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure ReplicationAdmittedObject where
  system : PrimitiveReplicationSystem
  initiationClosed : ReplicationInitiationClosed (ReplicationInitiationModel.mk ...)
  forkClosed : ReplicationForkClosed (ReplicationForkDynamics.mk ...)
  timingClosed : ReplicationTimingClosed (ReplicationTimingRegulation.mk ...)
  terminationClosed : ReplicationTerminationClosed (ReplicationTermination.mk ...)
  conclusion : initiationClosed ∧ forkClosed ∧ timingClosed ∧ terminationClosed

structure ReplicationAdmissibleClass where
  object : ReplicationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : ReplicationAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse