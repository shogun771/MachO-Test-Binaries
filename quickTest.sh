#!/bin/bash


#As x64

./RopTool -a x64 -c luaScipts/x64/call_reg.lua -f x86_64_FAT/sh | tail -n +7 >  Results/Test68
./RopTool -a x64 -c luaScipts/x64/call_reg.lua -f x86_64_FAT/sync | tail -n +7 >  Results/Test69
