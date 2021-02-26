#!/bin/bash
# @todo produce multi-layered colored SVG from these dxfs

## experimental intersection of common hole patterns projects onto two dimensions for universal bracketry
#openjscad objects/hole\ pattern/intersection-radial.jscad -o radial-intersection.dxf
#openjscad "objects/hole pattern/intersection-grid.jscad" --threshold 7 --hole_size 8 --period 90 --rotation 360 -o intersection-grid.dxf

## experimental OpenJSCAD binary generation
#openjscad objects/hole\ pattern/motors.jscad -o motors.dxf
#openjscad objects/hole\ pattern/grids.jscad --spacing 25.4 -o grids-1inch.dxf