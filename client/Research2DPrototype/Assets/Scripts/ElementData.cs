using UnityEngine;

/// <summary>
/// CHANGING NAMES WILL AFFECT ALL DEFINED SCRIPTED OBJECTS
/// </summary>
[CreateAssetMenu(fileName = "ElementData",
menuName = "SAM-SI-Value",
order = 51)]
public class ElementData : ScriptableObject
{
  [SerializeField]
  private double Value;
  [SerializeField]
  private int Power;
  [SerializeField]
  private AvailableUnits Unit;
  [SerializeField]
  private string Description;
}