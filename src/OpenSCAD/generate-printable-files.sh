#!/bin/bash
# @todo produce multi-layered colored SVG from these dxfs

## experimental intersection of common hole patterns projects onto two dimensions for universal bracketry
#openjscad objects/hole\ pattern/intersection-radial.jscad -o radial-intersection.dxf
#openjscad "objects/hole pattern/intersection-grid.jscad" --threshold 7 --hole_size 8 --period 90 --rotation 360 -o intersection-grid.dxf

## experimental OpenJSCAD binary generation
#openjscad objects/hole\ pattern/motors.jscad -o motors.dxf
#openjscad objects/hole\ pattern/grids.jscad --spacing 25.4 -o grids-1inch.dxf

## standard size frames 2, 3, 4, 5, 10, 15, 20, 25, 30, 40, and 50 holes in length rendered in hollow metal tube.
openscad -o stl -D holes=2 frame.scad
openscad -o png --autocenter --viewall --imgsize=256,256 -D holes=2 frame.scad
openscad -o stl -D holes=3 frame.scad
openscad -o png --autocenter --viewall --imgsize=256,256 -D holes=3 frame.scad
openscad -o stl -D holes=4 frame.scad
openscad -o png --autocenter --viewall --imgsize=256,256 -D holes=4 frame.scad
openscad -o stl -D holes=5 frame.scad
openscad -o png --autocenter --viewall --imgsize=256,256 -D holes=5 frame.scad
openscad -o stl -D holes=10 frame.scad
openscad -o png --autocenter --viewall --imgsize=256,256 -D holes=10 frame.scad
openscad -o stl -D holes=15 frame.scad
openscad -o png --autocenter --viewall --imgsize=256,256 -D holes=15 frame.scad
openscad -o stl -D holes=20 frame.scad
openscad -o png --autocenter --viewall --imgsize=256,256 -D holes=20 frame.scad
openscad -o stl -D holes=25 frame.scad
openscad -o png --autocenter --viewall --imgsize=256,256 -D holes=25 frame.scad
openscad -o stl -D holes=30 frame.scad
openscad -o png --autocenter --viewall --imgsize=256,256 -D holes=30 frame.scad
openscad -o stl -D holes=40 frame.scad
openscad -o png --autocenter --viewall --imgsize=256,256 -D holes=40 frame.scad
openscad -o stl -D holes=50 frame.scad
openscad -o png --autocenter --viewall --imgsize=256,256 -D holes=50 frame.scad
