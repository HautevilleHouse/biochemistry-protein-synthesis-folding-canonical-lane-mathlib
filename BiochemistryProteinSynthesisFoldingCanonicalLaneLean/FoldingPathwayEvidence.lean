import BiochemistryProteinSynthesisFoldingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinSynthesisFoldingCanonicalLaneLean

structure FoldingPathwayPackage where
  ribosomeBindingInitiated : Prop
  elongationFactorsRecruited : Prop
  chaperoneAssistance : Prop
  foldingIntermediatesStable : Prop
  terminationCodonsRecognized : Prop

structure FoldingPathwayEvidence (P : FoldingPathwayPackage) where
  ribosomeBindingInitiatedClosed : P.ribosomeBindingInitiated
  elongationFactorsRecruitedClosed : P.elongationFactorsRecruited
  chaperoneAssistanceClosed : P.chaperoneAssistance
  foldingIntermediatesStableClosed : P.foldingIntermediatesStable
  terminationCodonsRecognizedClosed : P.terminationCodonsRecognized

def FoldingPathwayClosed (P : FoldingPathwayPackage) : Prop :=
  P.ribosomeBindingInitiated ∧ P.elongationFactorsRecruited ∧
  P.chaperoneAssistance ∧ P.foldingIntermediatesStable ∧
  P.terminationCodonsRecognized

theorem folding_pathway_closed_from_evidence (P : FoldingPathwayPackage)
    (E : FoldingPathwayEvidence P) : FoldingPathwayClosed P := by
  exact And.intro E.ribosomeBindingInitiatedClosed
    (And.intro E.elongationFactorsRecruitedClosed
      (And.intro E.chaperoneAssistanceClosed
        (And.intro E.foldingIntermediatesStableClosed
          E.terminationCodonsRecognizedClosed)))

end BiochemistryProteinSynthesisFoldingCanonicalLaneLean
end HautevilleHouse