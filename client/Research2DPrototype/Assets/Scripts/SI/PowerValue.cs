using System;

public class PowerValue
{
  public float Value { get; private set; }
  public int Power { get; private set; }

  private float _calculatedValue;
  public float CalculatedValue
  {
    get
    {
      if (this.Power == 1)
        return _calculatedValue;
      else
        return (float)(_calculatedValue * Math.Pow(10, this.Power));
    }
  }

  // public PowerValue() {}

  public PowerValue(float v, int p)
  {
    this.Value = v;
    this.Power = p;
  }  
}