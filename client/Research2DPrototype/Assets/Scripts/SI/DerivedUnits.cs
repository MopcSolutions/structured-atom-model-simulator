using System.Collections;
using System.Collections.Generic;

public class DerivedUnits : BaseUnits
// TODO: DerivedUnits should not derive from BaseUnits, 
//       bc its methods follow different logic
//       add methods from BaseUnits following logic of this class
{
  /// <summary>
  /// https://en.wikipedia.org/wiki/Mass
  /// </summary>
  /// <returns></returns>
  public static SiUnit Mass()
  {
    return Kilogram(1);
  }
  /// <summary>
  /// https://en.wikipedia.org/wiki/Joule
  /// </summary>
  /// <returns></returns>
  public static SiUnit Joule()
  {
    return Kilogram(1) * Meter(2) * Second(-2);
  }
  /// <summary>
  /// https://en.wikipedia.org/wiki/Joule
  /// </summary>
  /// <returns></returns>
  public static SiUnit ElectricCharge()
  {
    return Ampere(2) * Second(-2);
  }
}
