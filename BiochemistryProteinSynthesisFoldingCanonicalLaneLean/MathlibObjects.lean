import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinSynthesisFoldingCanonicalLaneLean

structure AminoAcidSequence where
  residues : List String
  length : Nat

definitionallyAminoAcidSequence : AminoAcidSequence := {
  residues := [],
  length := 0
}

structure Protein where
  sequence : AminoAcidSequence
  nativeStructure : Type u
  topology : TopologicalSpace nativeStructure
  foldingState : Prop
  energyLandscape : Prop
  entropy : Prop
  stability : Prop

definitionallyProtein : Protein := {
  sequence := definitionallyAminoAcidSequence,
  nativeStructure := Unit,
  topology := inferInstance,
  foldingState := True,
  energyLandscape := True,
  entropy := True,
  stability := True
}

structure FoldingKinetics where
  rateConstants : Nat → Nat
  intermediates : Nat
  transitionStates : Nat
  foldingTime : Prop
  unfoldingTime : Prop

definitionallyFoldingKinetics : FoldingKinetics := {
  rateConstants := λ _ => 0,
  intermediates := 0,
  transitionStates := 0,
  foldingTime := True,
  unfoldingTime := True
}

end BiochemistryProteinSynthesisFoldingCanonicalLaneLean
end HautevilleHouse