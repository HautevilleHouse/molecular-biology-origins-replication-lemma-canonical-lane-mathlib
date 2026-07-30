import HautevilleHouse.MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  molecularBiologyConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "molecular-biology-origins-replication-lemma-canonical-lane",
    theoremName := "Molecular Biology Origins Replication Lemma",
    theoremObject := "Origins of replication in molecular biology",
    classicalBoundary := "Classical boundary of replication origin recognition",
    molecularBiologyConstrainedStatement := "molecular-biology-constrained theorem certificate internalized through bridge and gate closure",
    certificateLane := "molecular_biology_constrained",
    carriedRemainder := "classical molecular biology boundary carried by formalization certificate"
  }

end MolecularBiologyOriginsReplicationLemmaCanonicalLaneLean
end HautevilleHouse