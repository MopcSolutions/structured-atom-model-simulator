using System;

public class PowerValue
{
  public double Value { get; private set; }
  public int Power { get; private set; }

  private double _calculatedValue;
  public double CalculatedValue
  {
    get
    {
      if (this.Power == 1)
        return _calculatedValue;
      else
        return _calculatedValue * Math.Pow(10, this.Power);
    }
  }

  // public PowerValue() {}

  public PowerValue(double v, int p)
  {
    this.Value = v;
    this.Power = p;
  }  
}