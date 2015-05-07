#!/bin/sh 


#x86 tests 

./RopTool -f x86/MachO-OSX-x86-ls -c luaScipts/x86/call_reg.lua | tail -n +7 >  tmp
cmp tmp Results/Test1
if [ $? -eq 1 ]
then
  exit 1
fi
 
./RopTool -f x86/MachO-OSX-x86-ls -c luaScipts/x86/pop_ecx.lua | tail -n +7 >  tmp 
cmp tmp Results/Test2

if [ $? -eq 1 ]
then
  exit 1
fi


./RopTool -f x86/MachO-OSX-x86-ls -c luaScipts/x86/pvtdown.lua | tail -n +7 >  tmp 
cmp tmp Results/Test3

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -f x86/MachO-OSX-x86-ls -c luaScipts/x86/pvtfinder.lua | tail -n +7 >  tmp 
cmp tmp Results/Test4

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -f x86/MachO-OSX-x86-ls -c luaScipts/x86/pvtfinder2.lua | tail -n +7 >  tmp
cmp tmp Results/Test5

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -f x86/MachO-OSX-x86-ls -c luaScipts/x86/vcall.lua | tail -n +7 >  tmp
cmp tmp Results/Test6

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -f x86/MachO-OSX-x86-ls -c luaScipts/x86/vcall2.lua | tail -n +7 >  tmp
cmp tmp Results/Test7

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -f x86/MachO-OSX-x86-ls -c luaScipts/x86/transfer_arith_with_branch.lua | tail -n +7 >  tmp
cmp tmp Results/Test8

if [ $? -eq 1 ]
then
  exit 1
fi

#x64 Tests 

./RopTool -c luaScipts/x64/call_reg.lua -f x64/cat | tail -n +7 >  Results/Test9
cmp tmp Results/Test9

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/chmod | tail -n +7 >  Results/Test10
cmp tmp Results/Test10

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/cp | tail -n +7 >  Results/Test11
cmp tmp Results/Test11

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/csh | tail -n +7 >  Results/Test12
cmp tmp Results/Test12

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/date | tail -n +7 >  Results/Test13
cmp tmp Results/Test13

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/dd | tail -n +7 >  Results/Test14
cmp tmp Results/Test14

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/df | tail -n +7 >  Results/Test15
cmp tmp Results/Test15

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/domainname | tail -n +7 >  Results/Test16
cmp tmp Results/Test16

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/echo | tail -n +7 >  Results/Test17
cmp tmp Results/Test17

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/ed | tail -n +7 >  Results/Test18
cmp tmp Results/Test18

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/expr | tail -n +7 >  Results/Test19
cmp tmp Results/Test19

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/hostname | tail -n +7 >  Results/Test20
cmp tmp Results/Test20

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/kill | tail -n +7 >  Results/Test21
cmp tmp Results/Test21

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/ksh | tail -n +7 >  Results/Test22
cmp tmp Results/Test22

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/launchctl | tail -n +7 >  Results/Test23
cmp tmp Results/Test23

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/link | tail -n +7 >  Results/Test24
cmp tmp Results/Test24

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/ln  | tail -n +7 >  Results/Test25
cmp tmp Results/Test25

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/ls | tail -n +7 >  Results/Test26
cmp tmp Results/Test26

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/MachO-OSX-x64-ls | tail -n +7 >  Results/Test27
cmp tmp Results/Test27

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/mkdir | tail -n +7 >  Results/Test28
cmp tmp Results/Test28

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/mv | tail -n +7 >  Results/Test29
cmp tmp Results/Test29

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/pax | tail -n +7 >  Results/Test30
cmp tmp Results/Test30

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/ps | tail -n +7 >  Results/Test31
cmp tmp Results/Test31

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/pwd | tail -n +7 >  Results/Test32
cmp tmp Results/Test32

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/rcp | tail -n +7 >  Results/Test33
cmp tmp Results/Test33

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/rm | tail -n +7 >  Results/Test34
cmp tmp Results/Test34

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/rmdir | tail -n +7 >  Results/Test35
cmp tmp Results/Test35

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/sleep | tail -n +7 >  Results/Test36
cmp tmp Results/Test36

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/stty | tail -n +7 >  Results/Test37
cmp tmp Results/Test37

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/tcsh | tail -n +7 >  Results/Test38
cmp tmp Results/Test38

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/test | tail -n +7 >  Results/Test39
cmp tmp Results/Test39

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/unlink | tail -n +7 >  Results/Test40
cmp tmp Results/Test40

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/wait4path | tail -n +7 >  Results/Test41
cmp tmp Results/Test41

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/zsh | tail -n +7 >  Results/Test42
cmp tmp Results/Test42

if [ $? -eq 1 ]
then
  exit 1
fi

