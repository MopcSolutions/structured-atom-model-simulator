using System;

public class BaseUnits
{

  /// <summary>
  /// # s^p
  /// </summary>
  /// <param name="p">power as int</param>
  /// <returns></returns>
  protected static SiUnit Second(int p)
  {
    return new SiUnit(p, 0, 0, 0, 0, 0, 0);
  }
  /// <summary>
  /// # m^p
  /// </summary>
  /// <param name="p"></param>
  /// <returns></returns>
  protected static SiUnit Meter(int p)
  {
    return new SiUnit(0, p, 0, 0, 0, 0, 0);
  }
  /// <summary>
  /// # kg^p
  /// </summary>
  /// <param name="p"></param>
  /// <returns></returns>
  protected static SiUnit Kilogram(int p)
  {
    return new SiUnit(0, 0, p, 0, 0, 0, 0);
  }
  /// <summary>
  /// # A^p -> https://en.wikipedia.org/wiki/Ampere
  /// </summary>
  /// <param name="p"></param>
  /// <returns></returns>
  protected static SiUnit Ampere(int p)
  {
    return new SiUnit(0, 0, 0, p, 0, 0, 0);
  }
  /// <summary>
  /// # K^p
  /// </summary>
  /// <param name="p"></param>
  /// <returns></returns>
  protected static SiUnit Kelvin(int p)
  {
    return new SiUnit(0, 0, 0, 0, p, 0, 0);
  }
  /// <summary>
  /// # mol^p
  /// </summary>
  /// <param name="p"></param>
  /// <returns></returns>
  protected static SiUnit Mole(int p)
  {
    return new SiUnit(0, 0, 0, 0, 0, p, 0);
  }
  /// <summary>
  /// # cd^p
  /// </summary>
  /// <param name="p"></param>
  /// <returns></returns>
  protected static SiUnit Candela(int p)
  {
    return new SiUnit(0, 0, 0, 0, 0, 0, p);
  }
}