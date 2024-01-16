# Bandgap_VS_thickness

Explore the variation of bandgap with thickness in quantum well superlattices based on III-V materials using this program.

## Usage

To customize the material, adjust the input parameters in the "EgVsmandn.m" file between lines 10 and 30:

- `inputss(1,1)`: Substrate material (Refer to the provided material code)
- `inputss(1,2)`: Direction of substrate
- `inputss(2,1)`: First material
- `inputss(3,1)`: First interface
- `inputss(4,1)`: Second material
- `inputss(5,1)`: Second interface

### Material Codes
1. Si
2. Ge
3. GaAs
4. AlAs
5. InAs
6. GaP
7. AlP
8. InP
9. GaSb
10. AlSb
11. InSb
12. ZnSe
13. ZnS
14. ZnTe
15. CdTe
16. HgTe

Specify elastic constants for three directions in line 36 using the following numbers:
- `2 -> D001`
- `3 -> D110`
- `4 -> D111`

## Customization

Customize the program according to your material of interest and observe the corresponding bandgap variations with thickness in the quantum well superlattices.
