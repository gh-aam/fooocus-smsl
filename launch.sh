#!/bin/bash

cd Fooocus
git pull

eval "$(conda shell.bash hook)"
conda activate fooocus

cd ..
if [ $# -eq 0 ]
then
    python ngrok.py 
elif [ $1 = "reset" ]
then
    python ngrok.py --reset 
fi
