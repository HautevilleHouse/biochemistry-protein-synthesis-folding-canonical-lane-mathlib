import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinSynthesisFoldingCanonicalLaneLean

structure ProteinStructurePackage where
  sequence : String
  backbone : Type
  sideChains : Type
  secondaryStructure : Prop
  tertiaryStructure : Prop
  residuesCount : Nat
  residueTypes : List String

structure ProteinStructureEvidence (P : ProteinStructurePackage) where
  secondaryStructureClosed : P.secondaryStructure
  tertiaryStructureClosed : P.tertiaryStructure

def ProteinStructureClosed (P : ProteinStructurePackage) : Prop :=
  P.secondaryStructure ∧ P.tertiaryStructure

theorem protein_structure_closed_from_evidence (P : ProteinStructurePackage)
    (E : ProteinStructureEvidence P) : ProteinStructureClosed P := by
  exact And.intro E.secondaryStructureClosed E.tertiaryStructureClosed

end BiochemistryProteinSynthesisFoldingCanonicalLaneLean
end HautevilleHouse