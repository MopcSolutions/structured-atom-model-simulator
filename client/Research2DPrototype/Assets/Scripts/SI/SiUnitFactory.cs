using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SiUnitFactory
{
  public static SiValue Build(double val, int pow, AvailableUnits au)
  {
    switch (au)
    {
      case AvailableUnits.Becquerel:
        break;
      case AvailableUnits.BohrMagneton:
        // TODO: since BohrMagneton is already a SiValue
        // * operator must be overriden
        // and a constructor of SiValue
        break;
      case AvailableUnits.Coulomb:
        break;
      case AvailableUnits.ElectricCharge:
        return new SiValue(new PowerValue(val, pow), DerivedUnits.ElectricCharge());
      case AvailableUnits.Farad:
        break;
      case AvailableUnits.Gray:
        break;
      case AvailableUnits.Henry:
        break;
      case AvailableUnits.Hertz:
        break;
      case AvailableUnits.Joule:
        return new SiValue(new PowerValue(val, pow), DerivedUnits.Joule());
      case AvailableUnits.Katal:
        break;
      case AvailableUnits.MagneticMoment:
        break;
      case AvailableUnits.Mass:
        return new SiValue(new PowerValue(val, pow), DerivedUnits.Mass());
      case AvailableUnits.Newton:
        break;
      case AvailableUnits.Ohm:
        break;
      case AvailableUnits.Pascal:
        break;
      case AvailableUnits.Siemens:
        break;
      case AvailableUnits.Sievert:
        break;
      case AvailableUnits.Tesla:
        break;
      case AvailableUnits.Volt:
        break;
      case AvailableUnits.Watt:
        break;
      case AvailableUnits.Webe:
        break;
      default:
        break;
    }
    return null;
  }
}
