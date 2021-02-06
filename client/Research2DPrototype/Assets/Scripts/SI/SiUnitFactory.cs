using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SiUnitFactory
{
  public static SiValue Build(float val, int pow, AvailableUnits au)
  {
    switch (au)
    {
      //case AvailableUnits.Second:
      //  return DerivedUnits.Second();
      //case AvailableUnits.Meter:
      //  return DerivedUnits.Meter();
      //case AvailableUnits.Kilogram:
      //  return DerivedUnits.Kilogram();
      //case AvailableUnits.Ampere:
      //  return DerivedUnits.Ampere();
      //case AvailableUnits.Kelvin:
      //  return DerivedUnits.Kelvin();
      //case AvailableUnits.Mole:
      //  return DerivedUnits.Mole();
      //case AvailableUnits.Candela:
      //  return DerivedUnits.Candela();
      case AvailableUnits.Mass:
        return new SiValue(new PowerValue(val, pow), DerivedUnits.Mass());
      case AvailableUnits.Joule:
        return new SiValue(new PowerValue(val, pow), DerivedUnits.Joule());
      case AvailableUnits.ElectricCharge:
        return new SiValue(new PowerValue(val, pow), DerivedUnits.ElectricCharge());
      default:
        break;
    }
    return null;
  }
}
