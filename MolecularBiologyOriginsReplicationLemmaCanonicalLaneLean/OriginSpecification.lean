import canonicalLaneMathlib.AdmissibleClass

/-!
# Origin Specification Package
-/

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure OriginSpecificationPackage where
  originRecognitionComplex : Prop
  cellCycleControl : Prop
  licensing : Prop
  replicationTiming : Prop
  originInterference : Prop

structure OriginSpecificationEvidence (O : OriginSpecificationPackage) where
  originRecognitionComplexClosed : O.originRecognitionComplex
  cellCycleControlClosed : O.cellCycleControl
  licensingClosed : O.licensing
  replicationTimingClosed : O.replicationTiming
  originInterferenceClosed : O.originInterference

def OriginSpecificationClosed (O : OriginSpecificationPackage) : Prop :=
  O.originRecognitionComplex ∧ O.cellCycleControl ∧ O.licensing ∧
  O.replicationTiming ∧ O.originInterference

theorem origin_specification_closed_from_evidence
    (O : OriginSpecificationPackage) (E : OriginSpecificationEvidence O) :
    OriginSpecificationClosed O := by
  exact And.intro E.originRecognitionComplexClosed
    (And.intro E.cellCycleControlClosed
      (And.intro E.licensingClosed
        (And.intro E.replicationTimingClosed E.originInterferenceClosed)))

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse
