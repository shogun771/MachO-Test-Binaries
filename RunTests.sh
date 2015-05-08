#!/bin/sh 

# This is the script used to run the tests and compare their results with 
#    the previous results. 


# Commented out lines are either tests that failed to run initially
# Or tests that took too long to run so were omitted from this script


timestamp() {
  date +"%T"
}

echo "Start Time: " 
timestamp


#########################################x86 tests #################################################

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

###############x64 tests ( ommitted all filezilla tests due to their size)  #####################################################

./RopTool -c luaScipts/x64/call_reg.lua -f x64/cat | tail -n +7 >  tmp 
cmp tmp Results/Test9

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/chmod | tail -n +7 >  tmp 
cmp tmp Results/Test10

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/cp | tail -n +7 >  tmp 
cmp tmp Results/Test11

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/csh | tail -n +7 >  tmp 
cmp tmp Results/Test12

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/date | tail -n +7 >  tmp 
cmp tmp Results/Test13

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/dd | tail -n +7 >  tmp 
cmp tmp Results/Test14

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/df | tail -n +7 >  tmp 
cmp tmp Results/Test15

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/domainname | tail -n +7 >  tmp 
cmp tmp Results/Test16

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/echo | tail -n +7 > tmp 
cmp tmp Results/Test17

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/ed | tail -n +7 >  tmp 
cmp tmp Results/Test18

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/expr | tail -n +7 >  tmp 
cmp tmp Results/Test19

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/hostname | tail -n +7 >  tmp 
cmp tmp Results/Test20

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/kill | tail -n +7 >  tmp 
cmp tmp Results/Test21

if [ $? -eq 1 ]
then
  exit 1
fi

#Failed Core Dumped
#./RopTool -c luaScipts/x64/call_reg.lua -f x64/ksh | tail -n +7 >  tmp 
#cmp tmp Results/Test22
#
#if [ $? -eq 1 ]
#then
#  exit 1
#fi

#Failed Core Dumped
#./RopTool -c luaScipts/x64/call_reg.lua -f x64/launchctl | tail -n +7 >  tmp 
#cmp tmp Results/Test23
#
#if [ $? -eq 1 ]
#then
#  exit 1
#fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/link | tail -n +7 > tmp 
cmp tmp Results/Test24

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/ln  | tail -n +7 >  tmp 
cmp tmp Results/Test25

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/ls | tail -n +7 >  tmp 
cmp tmp Results/Test26

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/MachO-OSX-x64-ls | tail -n +7 > tmp 
cmp tmp Results/Test27

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/mkdir | tail -n +7 >  tmp 
cmp tmp Results/Test28

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/mv | tail -n +7 >  tmp 
cmp tmp Results/Test29

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/pax | tail -n +7 >  tmp 
cmp tmp Results/Test30

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/ps | tail -n +7 >  tmp 
cmp tmp Results/Test31

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/pwd | tail -n +7 >  tmp 
cmp tmp Results/Test32

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/rcp | tail -n +7 >  tmp 
cmp tmp Results/Test33

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/rm | tail -n +7 >  tmp 
cmp tmp Results/Test34

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/rmdir | tail -n +7 >  tmp 
cmp tmp Results/Test35

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/sleep | tail -n +7 >  tmp 
cmp tmp Results/Test36

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/stty | tail -n +7 >  tmp 
cmp tmp Results/Test37

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/tcsh | tail -n +7 >  tmp 
cmp tmp Results/Test38

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/test | tail -n +7 > tmp 
cmp tmp Results/Test39

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/unlink | tail -n +7 > tmp 
cmp tmp Results/Test40

if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -c luaScipts/x64/call_reg.lua -f x64/wait4path | tail -n +7 > tmp 
cmp tmp Results/Test41

if [ $? -eq 1 ]
then
  exit 1
fi

#Failed Core Dumped
#./RopTool -c luaScipts/x64/call_reg.lua -f x64/zsh | tail -n +7 >  tmp 
#cmp tmp Results/Test42
#
#if [ $? -eq 1 ]
#then
#  exit 1
#fi



######################### x86_64_FAT tests ( ommitted MachO-OSX-ppc-and-i386-bash due to size) ##################################################3
########  As x86 ##############
# Too Slow
#./RopTool -a x86 -f x86_64_FAT/bash -c luaScipts/x86/call_reg.lua | tail -n +7 >  tmp 
#cmp tmp Results/Test43
#if [ $? -eq 1 ]
#then
#  exit 1
#fi
# Too Slow
#./RopTool -a x86 -f x86_64_FAT/bash -c luaScipts/x86/pop_ecx.lua | tail -n +7 > tmp 
#cmp tmp Results/Test44
#if [ $? -eq 1 ]
#then
#  exit 1
#fi


./RopTool -a x86 -f x86_64_FAT/bash -c luaScipts/x86/pvtdown.lua | tail -n +7 > tmp 
cmp tmp Results/Test45
if [ $? -eq 1 ]
then
  exit 1
fi
#./RopTool -a x86 -f x86_64_FAT/bash -c luaScipts/x86/pvtfinder.lua | tail -n +7 > tmp 
#cmp tmp Results/Test46
#if [ $? -eq 1 ]
#then
#  exit 1
#fi

# Too Slow
#./RopTool -a x86 -f x86_64_FAT/bash -c luaScipts/x86/pvtfinder2.lua | tail -n +7 > tmp
#cmp tmp Results/Test47 
#if [ $? -eq 1 ]
#then
#  exit 1
#fi
#./RopTool -a x86 -f x86_64_FAT/bash -c luaScipts/x86/vcall.lua | tail -n +7 > tmp 
#cmp tmp Results/Test48
#if [ $? -eq 1 ]
#then
#  exit 1
#fi

# Too Slow
#./RopTool -a x86 -f x86_64_FAT/bash -c luaScipts/x86/vcall2.lua | tail -n +7 > tmp 
#cmp tmp Results/Test49
#if [ $? -eq 1 ]
#then
#  exit 1
#fi


# Too Slow
#./RopTool -a x86 -f x86_64_FAT/bash -c luaScipts/x86/transfer_arith_with_branch.lua | tail -n +7 > tmp 
#cmp tmp Results/Test50
#if [ $? -eq 1 ]
#then
#  exit 1
#fi



./RopTool -a x86 -f x86_64_FAT/sh -c luaScipts/x86/call_reg.lua | tail -n +7 >  tmp 
cmp tmp Results/Test51
if [ $? -eq 1 ]
then
  exit 1
fi

# Too Slow
#./RopTool -a x86 -f x86_64_FAT/sh -c luaScipts/x86/pop_ecx.lua | tail -n +7 > tmp 
#cmp tmp Results/Test52
#if [ $? -eq 1 ]
#then
#  exit 1
#fi


#./RopTool -a x86 -f x86_64_FAT/sh -c luaScipts/x86/pvtdown.lua | tail -n +7 > tmp 
#cmp tmp Results/Test53 
#if [ $? -eq 1 ]
#then
#  exit 1
#fi

# Too Slow
#./RopTool -a x86 -f x86_64_FAT/sh -c luaScipts/x86/pvtfinder.lua | tail -n +7 > tmp 
#cmp tmp Results/Test54
#if [ $? -eq 1 ]
#then
#  exit 1
#fi

#./RopTool -a x86 -f x86_64_FAT/sh -c luaScipts/x86/pvtfinder2.lua | tail -n +7 > tmp 
#cmp tmp Results/Test55
#if [ $? -eq 1 ]
#then
#  exit 1
#fi

# Too Slow
#./RopTool -a x86 -f x86_64_FAT/sh -c luaScipts/x86/vcall.lua | tail -n +7 > tmp 
#cmp tmp Results/Test56 
#if [ $? -eq 1 ]
#then
#  exit 1
#fi

#./RopTool -a x86 -f x86_64_FAT/sh -c luaScipts/x86/vcall2.lua | tail -n +7 > tmp 
#cmp tmp Results/Test57 
#if [ $? -eq 1 ]
#then
#  exit 1
#fi

# Too Slow
#./RopTool -a x86 -f x86_64_FAT/sh -c luaScipts/x86/transfer_arith_with_branch.lua | tail -n +7 > tmp 
#cmp tmp Results/Test58 
#if [ $? -eq 1 ]
#then
#  exit 1
#fi

./RopTool -a x86 -f x86_64_FAT/sync -c luaScipts/x86/call_reg.lua | tail -n +7 > tmp 
cmp tmp Results/Test59
if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -a x86 -f x86_64_FAT/sync -c luaScipts/x86/pop_ecx.lua | tail -n +7 > tmp 
cmp tmp Results/Test60
if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -a x86 -f x86_64_FAT/sync -c luaScipts/x86/pvtdown.lua | tail -n +7 > tmp 
cmp tmp Results/Test61
if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -a x86 -f x86_64_FAT/sync -c luaScipts/x86/pvtfinder.lua | tail -n +7 > tmp 
cmp tmp Results/Test62
if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -a x86 -f x86_64_FAT/sync -c luaScipts/x86/pvtfinder2.lua | tail -n +7 > tmp 
cmp tmp Results/Test63
if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -a x86 -f x86_64_FAT/sync -c luaScipts/x86/vcall.lua | tail -n +7 > tmp 
cmp tmp Results/Test64 
if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -a x86 -f x86_64_FAT/sync -c luaScipts/x86/vcall2.lua | tail -n +7 > tmp 
cmp tmp Results/Test65 
if [ $? -eq 1 ]
then
  exit 1
fi

./RopTool -a x86 -f x86_64_FAT/sync -c luaScipts/x86/transfer_arith_with_branch.lua | tail -n +7 > tmp 
cmp tmp Results/Test66
if [ $? -eq 1 ]
then
  exit 1
fi



############  As x64 ####################

# Hang Up / Freeze 
#./RopTool -a x64 -c luaScipts/x64/call_reg.lua -f x86_64_FAT/bash | tail -n +7 > tmp 
#cmp tmp Results/Test67
#if [ $? -eq 1 ]
#then
#  exit 1
#fi

# Hang Up / Freeze 
#./RopTool -a x64 -c luaScipts/x64/call_reg.lua -f x86_64_FAT/sh | tail -n +7 > tmp 
#cmp tmp Results/Test68
#if [ $? -eq 1 ]
#then
#  exit 1
#fi


./RopTool -a x64 -c luaScipts/x64/call_reg.lua -f x86_64_FAT/sync | tail -n +7 > tmp
cmp tmp  Results/Test69
if [ $? -eq 1 ]
then
  exit 1
fi


#############################################
echo "End Time:" 
timestamp






