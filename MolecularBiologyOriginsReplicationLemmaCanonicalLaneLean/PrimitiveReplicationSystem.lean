import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure PrimitiveReplicationOrigin where
  Point : Type
  Strand : Type
  originSequence : Type
  replicationBubble : Prop
  bidirectionalFork : Prop
  initiationFactors : Prop
  originSequenceTerm : originSequence
  replicationBubbleTerm : replicationBubble
  bidirectionalForkTerm : bidirectionalFork
  initiationFactorsTerm : initiationFactors

structure PrimitiveReplicationFork where
  leadingStrandSynthesis : Prop
  laggingStrandSynthesis : Prop
  okazakiFragments : Prop
  polymeraseEpsilon : Prop
  polymeraseDelta : Prop
  leadingStrandSynthesisTerm : leadingStrandSynthesis
  laggingStrandSynthesisTerm : laggingStrandSynthesis
  okazakiFragmentsTerm : okazakiFragments
  polymeraseEpsilonTerm : polymeraseEpsilon
  polymeraseDeltaTerm : polymeraseDelta

structure PrimitiveReplicationTiming where
  time : Type
  g1Phase : Prop
  sPhase : Prop
  g2Phase : Prop
  originFiringTiming : Prop
  replicationStressResponse : Prop
  g1PhaseTerm : g1Phase
  sPhaseTerm : sPhase
  g2PhaseTerm : g2Phase
  originFiringTimingTerm : originFiringTiming
  replicationStressResponseTerm : replicationStressResponse

structure PrimitiveReplicationSystem where
  origin : PrimitiveReplicationOrigin
  fork : PrimitiveReplicationFork
  timing : PrimitiveReplicationTiming
  replicationComplete : Prop
  genomeDuplicated : Prop
  replicationCompleteTerm : replicationComplete
  genomeDuplicatedTerm : genomeDuplicated

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse