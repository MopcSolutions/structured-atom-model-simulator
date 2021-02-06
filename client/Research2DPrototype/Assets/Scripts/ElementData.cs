using UnityEngine;

[CreateAssetMenu(fileName = "ElementData",
menuName = "SAM-SI-Value",
order = 51)]
public class ElementData : ScriptableObject
{
  [SerializeField]
  private float Value;
  [SerializeField]
  private int Power;
  [SerializeField]
  private AvailableUnits AvailableUnits;
}