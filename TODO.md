# Aixt TODO

Tasks to do in Aixt


### Todo

- [ ] Implement variable swapping (by using temporal vars) #feat
- [ ] dynamic memory definition
- [ ] Implement inline assembly
- [ ] "40_inline_asm.v" inline asm implementation
- [ ] Implement uart.input()
- [ ] Support for arrays and strings initialized inside "for" statement
- [ ] Implement `lock` and `rlock` keywords (initially for NXT port)
- [ ] Implement float formatting on string interpolations (`${x:.2}`)
- [ ] Implement an equivalent to Arduino's `millis()`
<!-- - [ ] Implement CH32V and CH5xx families on Arduino through PlatformIO -->
<!-- - [ ] Add a configuration file inside each project folder in order to make it easy to integrate Aixt to and IDE like PlatformIO -->
- [ ] Allow multi-arg functions
- [ ] Add settings file `port_name.json` inside `/port_name` folder
- [ ] Check the convenience of the "generality" of each port implementation


### In Progress

- [ ] generates documentation from code
- [ ] implement maps
- [ ] Start a vscode extension for Aixt
- [ ] Give support to reference and dereference
- [ ] Issue: Calling function from string interpolations including casting
- [ ] `pin.<function>_fast` functions on `pin` module implemented
- [ ] Issue: `match` can not work with functions
- [ ] Issue: the Makefile for PIC12F6xx fails
- [ ] Issue: assignment using `match` fails
- [ ] Issue: individual module components importing fails
- [ ] Implements sub-modules


### Done ✓make

- [x] Issue solved: Structs can not be registered twice (due to the double parsing round). Solved clearing the symbol table between parsings
- [x] Implement structs
  - [x] Implement structs declaring
  - [x] Implement struct instances declaring
  - [x] Implement struct fields access (`struct_name.struct_field`)
  - [x] Support struct methods (using the V standard)
- [x] Add OOP features to the API (Emulator pin module, NXT motor module) 