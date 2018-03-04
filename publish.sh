#!/bin/bash

rm -rf site/
mkdocs build
cp -r charts/out site/charts.16203
mkdocs gh-deploy
