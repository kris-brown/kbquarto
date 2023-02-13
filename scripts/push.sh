#!/bin/bash
cp -r _site/* ../netlify
cd ../netlify
git add .
git commit -m "kbquarto"
git push
cd -