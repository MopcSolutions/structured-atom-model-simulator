using System;

public class SiUnit
{
  public int Second { get; private set; }
  public int Metre { get; private set; }
  public int Kilogram { get; private set; }
  public int Ampere { get; private set; }
  public int Kelvin { get; private set; }
  public int Mole { get; private set; }
  public int Candela { get; private set; }

  public SiUnit()
  {
  }
  public SiUnit(int s, int m, int kg, int A, int K, int mol, int cd)
  {
    this.Second = s;
    this.Metre = m;
    this.Kilogram = kg;
    this.Ampere = A;
    this.Kelvin = K;
    this.Mole = mol;
    this.Candela = cd;
  }
}