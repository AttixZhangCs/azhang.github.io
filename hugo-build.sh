#!/usr/bin/env bash
rm -rf public
hugo --minify
mkdir public/resume
cd resume-extra/ # go into resume page folder
hugo --minify # Build resume page seperately
cp -r public/* ../public/resume/ # Copy avatar image to main page