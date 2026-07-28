import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinSynthesisFoldingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.foldingConverges

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryProteinSynthesisFoldingCanonicalLaneLean
end HautevilleHouse