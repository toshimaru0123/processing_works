#!/bin/bash
today=$(date "+%Y%m%d")
name="p${today}"
mkdir ./$name
:> ./$name/"$name.pde"