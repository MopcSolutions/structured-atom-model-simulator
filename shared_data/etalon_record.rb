# constants definitions

MASS_CONSTANT = 0.00000000000000000000000000167262
ELECTRON_DIAMETER = 0.00000000000000565
PROTON_DIAMETER = 0.00000000000000833

# calculations

def ElectronMass
  return 1 * MASS_CONSTANT
end

def ProtonMass
  return ElectronMass * 1836
end

# Electric field constant should bi like this
# 8.85418782 × 10-12 m-3 kg-1 s4 A2


