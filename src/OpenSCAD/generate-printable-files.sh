#!/bin/bash
# Replimat binary build script
# (c) Timothy Schmidt 2021
# http://www.github.com/timschmidt/replimat
#
# requires a recent installation of OpenSCAD in the default location
# @todo produce multi-layered colored SVG from these dxfs

## experimental intersection of common hole patterns projects onto two dimensions for universal bracketry
#openjscad objects/hole\ pattern/intersection-radial.jscad -o radial-intersection.dxf
#openjscad "objects/hole pattern/intersection-grid.jscad" --threshold 7 --hole_size 8 --period 90 --rotation 360 -o intersection-grid.dxf

## experimental OpenJSCAD binary generation
#openjscad objects/hole\ pattern/motors.jscad -o motors.dxf
#openjscad objects/hole\ pattern/grids.jscad --spacing 25.4 -o grids-1inch.dxf

###########
## parts ##
###########

## standard size frames 2, 3, 4, 5, 10, 15, 20, 25, 30, 40, and 50 holes in length rendered in hollow metal tube.
openscad -o ../../bin/stl/38.1mm/frame-2.stl -D holes=2 frame.scad
openscad -o ../../bin/png/38.1mm/frame-2.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=2 frame.scad
openscad -o ../../bin/stl/38.1mm/frame-3.stl -D holes=3 frame.scad
openscad -o ../../bin/png/38.1mm/frame-3.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=3 frame.scad
openscad -o ../../bin/stl/38.1mm/frame-4.stl -D holes=4 frame.scad
openscad -o ../../bin/png/38.1mm/frame-4.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=4 frame.scad
openscad -o ../../bin/stl/38.1mm/frame-5.stl -D holes=5 frame.scad
openscad -o ../../bin/png/38.1mm/frame-5.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=5 frame.scad
openscad -o ../../bin/stl/38.1mm/frame-10.stl -D holes=10 frame.scad
openscad -o ../../bin/png/38.1mm/frame-10.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=10 frame.scad
openscad -o ../../bin/stl/38.1mm/frame-15.stl -D holes=15 frame.scad
openscad -o ../../bin/png/38.1mm/frame-15.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=15 frame.scad
openscad -o ../../bin/stl/38.1mm/frame-20.stl -D holes=20 frame.scad
openscad -o ../../bin/png/38.1mm/frame-20.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=20 frame.scad
openscad -o ../../bin/stl/38.1mm/frame-25.stl -D holes=25 frame.scad
openscad -o ../../bin/png/38.1mm/frame-25.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=25 frame.scad
openscad -o ../../bin/stl/38.1mm/frame-30.stl -D holes=30 frame.scad
openscad -o ../../bin/png/38.1mm/frame-30.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=30 frame.scad
openscad -o ../../bin/stl/38.1mm/frame-40.stl -D holes=40 frame.scad
openscad -o ../../bin/png/38.1mm/frame-40.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=40 frame.scad
openscad -o ../../bin/stl/38.1mm/frame-50.stl -D holes=50 frame.scad
openscad -o ../../bin/png/38.1mm/frame-50.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=50 frame.scad

## bolts
openscad -o ../../bin/stl/38.1mm/bolt-1.stl -D length=50 bolts.scad
openscad -o ../../bin/png/38.1mm/bolt-1.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D length=50 bolts.scad
openscad -o ../../bin/stlg/38.1mm/bolt-2.stl -D length=90 bolts.scad
openscad -o ../../bin/png/38.1mm/bolt-2.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D length=90 bolts.scad
openscad -o ../../bin/stl/38.1mm/bolt-3.stl -D length=130 bolts.scad
openscad -o ../../bin/png/38.1mm/bolt-3.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D length=130 bolts.scad

## nuts
openscad -o ../../bin/stl/38.1mm/nut.stl -D length=1 nuts.scad
openscad -o ../../bin/png/38.1mm/nut.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 nuts.scad

## linear bearings
openscad -o ../../bin/stl/38.1mm/linear-bearing.stl -D length=1 linear-bearing.scad
openscad -o ../../bin/png/38.1mm/linear-bearing.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 linear-bearing.scad

## washers
openscad -o ../../bin/stl/38.1mm/washers.stl -D length=1 washers.scad
openscad -o ../../bin/png/38.1mm/washers.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 washers.scad

## barrels
openscad -o ../../bin/stl/38.1mm/barrels.stl -D length=1 barrels.scad
openscad -o ../../bin/png/38.1mm/barrels.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 barrels.scad

## electrical connectors
openscad -o ../../bin/stl/38.1mm/electrical-connectors.stl -D length=1 electrical-connectors.scad
openscad -o ../../bin/png/38.1mm/electrical-connectors.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 electrical-connectors.scad

## bicycle bottom bracket adapter
openscad -o ../../bin/stl/38.1mm/adapter-bicycle-bottom-bracket.stl -D length=1 adapter-bicycle-bottom-bracket.scad
openscad -o ../../bin/png/38.1mm/adapter-bicycle-bottom-bracket.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 adapter-bicycle-bottom-bracket.scad

## wrench
openscad -o ../../bin/stl/38.1mm/wrench.stl -D length=1 wrench.scad
openscad -o ../../bin/png/38.1mm/wrench.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 wrench.scad

## plate-5x1
openscad -o ../../bin/stl/38.1mm/plate-5x1.stl -D length=1 plate-5x1.scad
openscad -o ../../bin/png/38.1mm/plate-5x1.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 plate-5x1.scad

## plate-5x10
openscad -o ../../bin/stl/38.1mm/plate-5x10.stl -D length=1 plate-5x10.scad
openscad -o ../../bin/png/38.1mm/plate-5x10.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 plate-5x10.scad

## plate-15x10
openscad -o ../../bin/stl/38.1mm/plate-15x10.stl -D length=1 plate-15x10.scad
openscad -o ../../bin/png/38.1mm/plate-15x10.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 plate-15x10.scad


################
## techniques ##
################

## tri-joint
openscad -o ../../bin/stl/38.1mm/tri-joint.stl tri-joint.scad
openscad -o ../../bin/png/38.1mm/tri-joint.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 tri-joint.scad

## shelf joint - ends
openscad -o ../../bin/stl/38.1mm/shelf-joint-ends.stl shelf-joint.scad
openscad -o ../../bin/png/38.1mm/shelf-joint-ends.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 shelf-joint.scad

## shelf joint - width
openscad -o ../../bin/stl/38.1mm/shelf-joint-width.stl shelf-joint-2.scad
openscad -o ../../bin/png/38.1mm/shelf-joint-width.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 shelf-joint-2.scad

## barrel-cage
openscad -o ../../bin/stl/38.1mm/barrel-cage.stl -D length=1 barrel-cage.scad
openscad -o ../../bin/png/38.1mm/barrel-cage.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 barrel-cage.scad


##############
## projects ##
##############

## bookshelf
openscad -o ../../bin/stl/38.1mm/bookshelf.stl bookshelf.scad
openscad -o ../../bin/png/38.1mm/bookshelf.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 bookshelf.scad

## work cube
openscad -o ../../bin/stl/38.1mm/work-cube.stl work-cube.scad
openscad -o ../../bin/png/38.1mm/work-cube.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 work-cube.scad
