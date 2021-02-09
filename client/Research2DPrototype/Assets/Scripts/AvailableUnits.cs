/// <summary>
/// CHANGING THIS CAN AFFECT ALL SCRIPTED OBJECTS, since only a number is stored there.
/// Every unit must have a assigned number, and this number MUST NOT be changed.
/// This list shoud stay ordered alphabetically,
/// so when adding a new entry, choose a value in between of surrounding values.
/// Example: new value between BohrMagneton and Coulomb, which are 2000 and 3000, should be 1500
/// </summary>
public enum AvailableUnits
{
  Becquerel = 1000,
  BohrMagneton = 2000,
  Coulomb = 3000,
  ElectricCharge = 4000,
  Farad = 5000,
  Gray = 6000,
  Henry = 7000,
  Hertz = 8000,
  Joule = 9000,
  Katal = 10000,
  MagneticMoment = 11000,
  Mass = 12000,
  Newton = 13000,
  Ohm = 14000,
  Pascal = 15000,
  Siemens = 16000,
  Sievert = 17000,
  Tesla = 18000,
  Volt = 19000,
  Watt = 20000,
  Weber = 21000
}
