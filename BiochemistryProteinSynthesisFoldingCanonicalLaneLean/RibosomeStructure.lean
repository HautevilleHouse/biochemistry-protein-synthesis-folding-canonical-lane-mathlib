import BiochemistryProteinSynthesisFoldingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinSynthesisFoldingCanonicalLaneLean

structure RibosomeStructurePackage where
  ribosomeType : Type u
  largeSubunit : Prop
  smallSubunit : Prop
  peptidylTransferaseCenter : Prop
  decodingSite : Prop
  mrnaEntryExit : Prop

structure RibosomeStructureEvidence (R : RibosomeStructurePackage) where
  largeSubunitClosed : R.largeSubunit
  smallSubunitClosed : R.smallSubunit
  peptidylTransferaseCenterClosed : R.peptidylTransferaseCenter
  decodingSiteClosed : R.decodingSite
  mrnaEntryExitClosed : R.mrnaEntryExit

def RibosomeStructureClosed (R : RibosomeStructurePackage) : Prop :=
  R.largeSubunit ∧ R.smallSubunit ∧ R.peptidylTransferaseCenter ∧
  R.decodingSite ∧ R.mrnaEntryExit

theorem ribosome_structure_closed_from_evidence (R : RibosomeStructurePackage)
    (E : RibosomeStructureEvidence R) : RibosomeStructureClosed R := by
  exact And.intro E.largeSubunitClosed
    (And.intro E.smallSubunitClosed
      (And.intro E.peptidylTransferaseCenterClosed
        (And.intro E.decodingSiteClosed E.mrnaEntryExitClosed)))

end BiochemistryProteinSynthesisFoldingCanonicalLaneLean
end HautevilleHouse