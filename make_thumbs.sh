#!/bin/bash
mkdir -p ./assets/images/thumbs
cd ./assets/images
mogrify -path ./thumbs -thumbnail 150x150 $(comm -23 <(ls -1 | grep -v '^thumbs$') <(ls -1 thumbs/))
git add .

