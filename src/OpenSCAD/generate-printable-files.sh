#!/bin/bash
# Replimat binary build script
# (c) Timothy Schmidt 2021
# http://www.github.com/timschmidt/replimat
#
# requires a recent installation of OpenSCAD in the default location
# @todo produce multi-layered colored SVG from these dxfs

export PATH="~/.local/share/OpenSCAD/libraries/NopSCADlib/scripts/:$PATH"
# cp -r ../../lib/OpenSCAD/* ~/.local/share/OpenSCAD/libraries/
# sudo dnf install xorg-x11-server-Xvfb codespell colorama markdown

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
openscad -o ../../bin/stl/38.1mm/frame-2.stl -D holes=2 parts/frames/scad/frames.scad
openscad -o ../../bin/png/38.1mm/frame-2.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 -D holes=2 parts/frames/scad/frames.scad
openscad -o ../../bin/stl/38.1mm/frame-3.stl -D holes=3 parts/frames/scad/frames.scad
openscad -o ../../bin/png/38.1mm/frame-3.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 -D holes=3 parts/frames/scad/frames.scad
openscad -o ../../bin/stl/38.1mm/frame-4.stl -D holes=4 parts/frames/scad/frames.scad
openscad -o ../../bin/png/38.1mm/frame-4.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 -D holes=4 parts/frames/scad/frames.scad
openscad -o ../../bin/stl/38.1mm/frame-5.stl -D holes=5 parts/frames/scad/frames.scad
openscad -o ../../bin/png/38.1mm/frame-5.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 -D holes=5 parts/frames/scad/frames.scad
openscad -o ../../bin/stl/38.1mm/frame-10.stl -D holes=10 parts/frames/scad/frames.scad
openscad -o ../../bin/png/38.1mm/frame-10.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 -D holes=10 parts/frames/scad/frames.scad
openscad -o ../../bin/stl/38.1mm/frame-15.stl -D holes=15 parts/frames/scad/frames.scad
openscad -o ../../bin/png/38.1mm/frame-15.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 -D holes=15 parts/frames/scad/frames.scad
openscad -o ../../bin/stl/38.1mm/frame-20.stl -D holes=20 parts/frames/scad/frames.scad
openscad -o ../../bin/png/38.1mm/frame-20.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 -D holes=20 parts/frames/scad/frames.scad
openscad -o ../../bin/stl/38.1mm/frame-25.stl -D holes=25 parts/frames/scad/frames.scad
openscad -o ../../bin/png/38.1mm/frame-25.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 -D holes=25 parts/frames/scad/frames.scad
openscad -o ../../bin/stl/38.1mm/frame-30.stl -D holes=30 parts/frames/scad/frames.scad
openscad -o ../../bin/png/38.1mm/frame-30.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 -D holes=30 parts/frames/scad/frames.scad
openscad -o ../../bin/stl/38.1mm/frame-40.stl -D holes=40 parts/frames/scad/frames.scad
openscad -o ../../bin/png/38.1mm/frame-40.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 -D holes=40 parts/frames/scad/frames.scad
openscad -o ../../bin/stl/38.1mm/frame-50.stl -D holes=50 parts/frames/scad/frames.scad
openscad -o ../../bin/png/38.1mm/frame-50.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 -D holes=50 parts/frames/scad/frames.scad

## bolts
openscad -o ../../bin/stl/38.1mm/bolt-1.stl -D length=50 parts/bolts/scad/bolts.scad
openscad -o ../../bin/png/38.1mm/bolt-1.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 -D length=50 parts/bolts/scad/bolts.scad
openscad -o ../../bin/stl/38.1mm/bolt-2.stl -D length=90 parts/bolts/scad/bolts.scad
openscad -o ../../bin/png/38.1mm/bolt-2.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 -D length=90 parts/bolts/scad/bolts.scad
openscad -o ../../bin/stl/38.1mm/bolt-3.stl -D length=130 parts/bolts/scad/bolts.scad
openscad -o ../../bin/png/38.1mm/bolt-3.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 -D length=130 parts/bolts/scad/bolts.scad

## nuts
openscad -o ../../bin/stl/38.1mm/nut.stl -D length=1 parts/nuts/scad/nuts.scad
openscad -o ../../bin/png/38.1mm/nut.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/nuts/scad/nuts.scad

## linear bearings
openscad -o ../../bin/stl/38.1mm/linear-bearing.stl -D length=1 parts/linear-bearings/scad/linear-bearing.scad
openscad -o ../../bin/png/38.1mm/linear-bearing.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/linear-bearings/scad/linear-bearing.scad

## washers
openscad -o ../../bin/stl/38.1mm/washers.stl -D length=1 parts/washers/scad/washers.scad
openscad -o ../../bin/png/38.1mm/washers.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/washers/scad/washers.scad

## barrels
openscad -o ../../bin/stl/38.1mm/barrels.stl -D length=1 parts/barrels/scad/barrels.scad
openscad -o ../../bin/png/38.1mm/barrels.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/barrels/scad/barrels.scad

## electrical connectors
openscad -o ../../bin/stl/38.1mm/electrical-connectors.stl -D length=1 parts/electrical-connectors/scad/electrical-connectors.scad
openscad -o ../../bin/png/38.1mm/electrical-connectors.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/electrical-connectors/scad/electrical-connectors.scad

## bicycle bottom bracket adapter
openscad -o ../../bin/stl/38.1mm/adapter-bicycle-bottom-bracket.stl -D length=1 parts/bicycle-bottom-bracket/scad/bicycle-bottom-bracket.scad
openscad -o ../../bin/png/38.1mm/adapter-bicycle-bottom-bracket.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/bicycle-bottom-bracket/scad/bicycle-bottom-bracket.scad

## wrench
openscad -o ../../bin/stl/38.1mm/wrench.stl -D length=1 parts/wrenches/scad/wrench.scad
openscad -o ../../bin/png/38.1mm/wrench.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/wrenches/scad/wrench.scad

## plate-5x5
openscad -o ../../bin/stl/38.1mm/plate-5x1.stl -D length=1 parts/plates/scad/plate-5x5.scad
openscad -o ../../bin/png/38.1mm/plate-5x1.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-5x5.scad

## plate-5x10
openscad -o ../../bin/stl/38.1mm/plate-5x10.stl -D length=1 parts/plates/scad/plate-5x10.scad
openscad -o ../../bin/png/38.1mm/plate-5x10.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-10x10.scad

## plate-15x10
openscad -o ../../bin/stl/38.1mm/plate-15x10.stl -D length=1 parts/plates/scad/plate-15x10.scad
openscad -o ../../bin/png/38.1mm/plate-15x10.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-15x10.scad

openscad -o ../../bin/stl/38.1mm/plate-brake-rotor.stl parts/plates/scad/plate-brake-rotor.scad
openscad -o ../../bin/stl/38.1mm/plate-brake-rotor.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-brake-rotor.scad

openscad -o ../../bin/stl/38.1mm/plate-drill-robot.stl parts/plates/scad/plate-drill-robot.scad
openscad -o ../../bin/stl/38.1mm/plate-drill-robot.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-drill-robot.scad

openscad -o ../../bin/stl/38.1mm/plate-drill-robot-spindle.stl parts/plates/scad/plate-drill-robot-spindle.scad
openscad -o ../../bin/stl/38.1mm/plate-drill-robot-spindle.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-drill-robot-spindle.scad

openscad -o ../../bin/stl/38.1mm/plate-ebike-adapter.stl parts/plates/scad/plate-ebike-adapter.scad
openscad -o ../../bin/stl/38.1mm/plate-ebike-adapter.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-ebike-adapter.scad

openscad -o ../../bin/stl/38.1mm/plate-front-end-loader.stl parts/plates/scad/plate-front-end-loader.scad
openscad -o ../../bin/stl/38.1mm/plate-front-end-loader.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-front-end-loader.scad

openscad -o ../../bin/stl/38.1mm/plate-griddome.stl parts/plates/scad/plate-griddome.scad
openscad -o ../../bin/stl/38.1mm/plate-griddome.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-griddome.scad

openscad -o ../../bin/stl/38.1mm/plate-inch-to-2040mm.stl parts/plates/scad/plate-inch-to-2040mm.scad
openscad -o ../../bin/stl/38.1mm/plate-inch-to-2040mm.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-inch-to-2040mm.scad

openscad -o ../../bin/stl/38.1mm/plate-keyed-coupler.stl parts/plates/scad/plate-keyed-coupler.scad
openscad -o ../../bin/stl/38.1mm/plate-keyed-coupler.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-keyed-coupler.scad

openscad -o ../../bin/stl/38.1mm/plate-laser-module.stl parts/plates/scad/plate-laser-module.scad
openscad -o ../../bin/stl/38.1mm/plate-laser-module.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-laser-module.scad

openscad -o ../../bin/stl/38.1mm/plate-rectangular.stl parts/plates/scad/plate-rectangular.scad
openscad -o ../../bin/stl/38.1mm/plate-rectangular.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-rectangular.scad

openscad -o ../../bin/stl/38.1mm/plate-three-point-hitch.stl parts/plates/scad/plate-three-point-hitch.scad
openscad -o ../../bin/stl/38.1mm/plate-three-point-hitch.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-three-point-hitch.scad

openscad -o ../../bin/stl/38.1mm/plate-vesa-mount-2d.stl parts/plates/scad/plate-vesa-mount-2d.scad
openscad -o ../../bin/stl/38.1mm/plate-vesa-mount-2d.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-vesa-mount-2d.scad

openscad -o ../../bin/stl/38.1mm/plate-vesa-mount-3d.stl parts/plates/scad/plate-vesa-mount-3d.scad
openscad -o ../../bin/stl/38.1mm/plate-vesa-mount-3d.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-vesa-mount-3d.scad

openscad -o ../../bin/stl/38.1mm/plate-vesa-mount-nuts-2d.stl parts/plates/scad/plate-vesa-mount-nuts-2d.scad
openscad -o ../../bin/stl/38.1mm/plate-vesa-mount-nuts-2d.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-vesa-mount-nuts-2d.scad

openscad -o ../../bin/stl/38.1mm/plate-wheel-4bolt.stl parts/plates/scad/plate-wheel-4bolt.scad
openscad -o ../../bin/stl/38.1mm/plate-wheel-4bolt.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/plate-wheel-4bolt.scad

openscad -o ../../bin/stl/38.1mm/ball-mount.stl parts/plates/scad/ball-mount.scad
openscad -o ../../bin/stl/38.1mm/ball-mount.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/plates/scad/ball-mount.scad

################
## techniques ##
################

## tri-joint
openscad -o ../../bin/stl/38.1mm/tri-joint.stl techniques/tri-joints/scad/tri-joint.scad
openscad -o ../../bin/png/38.1mm/tri-joint.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 techniques/tri-joints/scad/tri-joint.scad

## shelf joint - ends
openscad -o ../../bin/stl/38.1mm/shelf-joint-ends.stl techniques/shelf-joints/scad/shelf-joint.scad
openscad -o ../../bin/png/38.1mm/shelf-joint-ends.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 techniques/shelf-joints/scad/shelf-joint.scad

## shelf joint - width
openscad -o ../../bin/stl/38.1mm/shelf-joint-width.stl techniques/shelf-joints/scad/shelf-joint-2.scad
openscad -o ../../bin/png/38.1mm/shelf-joint-width.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 techniques/shelf-joints/scad/shelf-joint-2.scad

## barrel-cage
openscad -o ../../bin/stl/38.1mm/barrel-cage.stl -D length=1 parts/barrels/scad/barrel-cage.scad
openscad -o ../../bin/png/38.1mm/barrel-cage.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 parts/barrels/scad/barrel-cage.scad


##############
## projects ##
##############

## bookshelf
openscad -o ../../bin/stl/38.1mm/bookshelf.stl assemblies/bookshelves/scad/bookshelf.scad
openscad -o ../../bin/png/38.1mm/bookshelf.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 assemblies/bookshelves/scad/bookshelf.scad
cd assemblies/bookshelves/
make_all.py
cd ../..

## work cube
openscad -o ../../bin/stl/38.1mm/work-cube.stl assemblies/work-cubes/scad/work-cube.scad
openscad -o ../../bin/png/38.1mm/work-cube.png --autocenter --viewall --view=scales --colorscheme=Tomorrow --imgsize=1024,1024 assemblies/work-cubes/scad/work-cube.scad
