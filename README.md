# component-library
various components to use in VHDL projects: includes shifters, adders, DFFs, some binary digits to seven seg display.

to use- 
1.  link my_package.vhd plus the .vhd files of any desired components to your project (you don't have to link unused components).
2.  Add the line "use work.my_package.all;" at the top of your top-level description file.

note- If you want to use any full adders, you should also link the 'fulladd_package.vhd' file.
