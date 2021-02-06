using System;

public class Constants
{
  /// <summary>
  /// cannot be const in Unity
  /// </summary>
  public static SiValue ElementaryCharge = new SiValue(
    new PowerValue(1.602176634f, -19),
    DerivedUnits.ElectricCharge());
}