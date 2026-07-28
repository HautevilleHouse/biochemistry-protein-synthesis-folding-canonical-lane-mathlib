import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinSynthesisFoldingCanonicalLaneLean

structure ProteinFoldingAdmittedObject where
  sequence : String
  nativeConformation : Type
  foldable : Prop
  foldingConverges : Prop
  conclusion : foldingConverges

structure AdmissibleClass where
  object : ProteinFoldingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.foldingConverges ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryProteinSynthesisFoldingCanonicalLaneLean
end HautevilleHouse