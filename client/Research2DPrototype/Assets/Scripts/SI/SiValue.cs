using System;

public class SiValue
{
  public PowerValue PowerValue { get; private set; }
  public SiUnit SiUnit { get; private set; }

  public SiValue()
  {
  }
  public SiValue(PowerValue pv, SiUnit su)
  {
    this.PowerValue = pv;
    this.SiUnit = su;
  }
}