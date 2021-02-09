using System.Collections;
using System.Collections.Generic;

public class DerivedUnits : BaseUnits
// TODO: DerivedUnits should not derive from BaseUnits, 
//       bc its methods follow different logic
//       add methods from BaseUnits following logic of this class
{
  /// <summary>
  /// https://en.wikipedia.org/wiki/Becquerel
  /// </summary>
  /// <returns></returns>
  public static SiUnit Becquerel()
  {
    return Second(-1);
  }
  /// <summary>
  /// Bohr magneton in μB is a magnitic moment
  /// and has a value of 9.274009994(57)×10^−24	
  /// https://en.wikipedia.org/wiki/Bohr_magneton
  /// </summary>
  /// <returns></returns>
  public static SiValue BohrMagneton()
  {
    return new SiValue(new PowerValue(9.274009994, -24), DerivedUnits.MagneticMoment());
  }
  /// <summary>
  /// https://en.wikipedia.org/wiki/Coulomb
  /// </summary>
  /// <returns></returns>
  public static SiUnit Coulomb()
  {
    return Ampere(1) * Second(1);
  }
  /// <summary>
  /// TODO: what is this?
  /// </summary>
  /// <returns></returns>
  public static SiUnit ElectricCharge()
  {
    return Ampere(2) * Second(-2);
  }
  public static SiUnit Farad()
  {
    return Kilogram(-1) * Meter(-2) * Second(4) * Ampere(2);
  }
  /// <summary>
  /// https://en.wikipedia.org/wiki/Gray_(unit)
  /// </summary>
  /// <returns></returns>
  public static SiUnit Gray()
  {
    return Meter(2) * Second(-2);
  }
  /// <summary>
  /// https://en.wikipedia.org/wiki/Henry_(unit)
  /// </summary>
  /// <returns></returns>
  public static SiUnit Henry()
  {
    return Kilogram(1) * Meter(2) * Second(-2) * Ampere(-2);
  }
  /// <summary>
  /// https://en.wikipedia.org/wiki/Hertz
  /// </summary>
  /// <returns></returns>
  public static SiUnit Hertz()
  {
    return Second(-1);
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
  /// https://en.wikipedia.org/wiki/Katal
  /// </summary>
  /// <returns></returns>
  public static SiUnit Katal()
  {
    return Second(-1) * Mole(1);
  }
  public static SiUnit MagneticMoment()
  {
    return Joule() / Tesla();
  }
  /// <summary>
  /// https://en.wikipedia.org/wiki/Mass
  /// </summary>
  /// <returns></returns>
  public static SiUnit Mass()
  {
    return Kilogram(1);
  }
  /// <summary>
  /// https://en.wikipedia.org/wiki/Newton_(unit)
  /// </summary>
  /// <returns></returns>
  public static SiUnit Newton()
  {
    return Kilogram(1) * Meter(1) * Second(-2);
  }
  /// <summary>
  /// https://en.wikipedia.org/wiki/Ohm
  /// </summary>
  /// <returns></returns>
  public static SiUnit Ohm()
  {
    return Kilogram(1) * Meter(2) * Second(-3) * Ampere(-2);
  }
  /// <summary>
  /// https://en.wikipedia.org/wiki/Pascal_(unit)
  /// </summary>
  /// <returns></returns>
  public static SiUnit Pascal()
  {
    return Kilogram(1) * Meter(-1) * Second(-2);
  }
  /// <summary>
  /// https://en.wikipedia.org/wiki/Siemens_(unit)
  /// </summary>
  /// <returns></returns>
  public static SiUnit Siemens()
  {
    return Kilogram(-1) * Meter(-2) * Second(3) * Ampere(2);
  }
  /// <summary>
  /// https://en.wikipedia.org/wiki/Sievert
  /// </summary>
  /// <returns></returns>
  public static SiUnit Sievert()
  {
    return Meter(2) * Second(-2);
  }
  /// <summary>
  /// https://en.wikipedia.org/wiki/Tesla_(unit)
  /// </summary>
  /// <returns></returns>
  public static SiUnit Tesla()
  {
    return Kilogram(1) * Second(-2) * Ampere(-1);
  }
  /// <summary>
  /// https://en.wikipedia.org/wiki/Volt
  /// </summary>
  /// <returns></returns>
  public static SiUnit Volt()
  {
    return Kilogram(1) * Meter(2) * Second(-3) * Ampere(-1);
  }
  /// <summary>
  /// https://en.wikipedia.org/wiki/Watt
  /// </summary>
  /// <returns></returns>
  public static SiUnit Watt()
  {
    return Kilogram(1) * Meter(2) * Second(-3);
  }
  /// <summary>
  /// https://en.wikipedia.org/wiki/Weber_(unit)
  /// </summary>
  /// <returns></returns>
  public static SiUnit Weber()
  {
    return Kilogram(1) * Meter(2) * Second(-2) * Ampere(-1);
  }
}
