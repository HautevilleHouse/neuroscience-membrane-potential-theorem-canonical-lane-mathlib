import HautevilleHouse.NeuroscienceMembranePotentialTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NeuroscienceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
end HautevilleHouse