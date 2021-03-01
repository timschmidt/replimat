REM Replimat binary build script
REM (c) Timothy Schmidt 2021
REM http://www.github.com/timschmidt/replimat

REM requires a recent installation of OpenSCAD in the default location

REM @todo produce multi-layered colored SVG from these dxfs

REM experimental intersection of common hole patterns projects onto two dimensions for universal bracketry
REM openjscad objects/hole\ pattern/intersection-radial.jscad -o radial-intersection.dxf
REM openjscad "objects/hole pattern/intersection-grid.jscad" --threshold 7 --hole_size 8 --Deriod 90 --rotation 360 -o intersection-grid.dxf

REM experimental OpenJSCAD binary generation
REM openjscad objects/hole\ pattern/motors.jscad -o motors.dxf
REM openjscad objects/hole\ pattern/grids.jscad --spacing 25.4 -o grids-1inch.dxf

REM standard size frames 2, 3, 4, 5, 10, 15, 20, 25, 30, 40, and 50 holes in length rendered in hollow metal tube.
if exist ../../bin/stl/38.1mm/frame-2.stl (
    rem frame-2.stl exists
) else (
    "C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/frame-2.stl -D holes=2 frame.scad
)
if exist ../../bin/png/38.1mm/frame-2.png (
	rem frame-2.png exists
) else (
	"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/frame-2.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=2 frame.scad
)



"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/frame-3.stl -D holes=3 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/frame-3.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=3 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/frame-4.stl -D holes=4 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/frame-4.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=4 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/frame-5.stl -D holes=5 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/frame-5.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=5 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/frame-10.stl -D holes=10 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/frame-10.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=10 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/frame-15.stl -D holes=15 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/frame-15.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=15 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/frame-20.stl -D holes=20 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/frame-20.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=20 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/frame-25.stl -D holes=25 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/frame-25.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=25 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/frame-30.stl -D holes=30 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/frame-30.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=30 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/frame-40.stl -D holes=40 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/frame-40.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=40 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/frame-50.stl -D holes=50 frame.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/frame-50.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D holes=50 frame.scad

REM bolts
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/bolt-1.stl -D length=50 bolts.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/bolt-1.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D length=50 bolts.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/bolt-2.stl -D length=90 bolts.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/bolt-2.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D length=90 bolts.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/bolt-3.stl -D length=130 bolts.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/bolt-3.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 -D length=130 bolts.scad

REM nuts
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/nut.stl -D length=1 nuts.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/nut.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 nuts.scad

REM linear bearings
if exist ../../bin/stl/38.1mm/linear-bearing.stl (
	REM linear-bearing.stl exists
) else (
	"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/linear-bearing.stl -D length=1 linear-bearing.scad
)
if exist ../../bin/png/38.1mm/linear-bearing.png (
	REM linear-bearing.png exists
) else (
	"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/linear-bearing.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 linear-bearing.scad
)
REM washers
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/washers.stl -D length=1 washers.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/washers.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 washers.scad

REM barrels
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/barrels.stl -D length=1 barrels.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/barrels.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 barrels.scad

REM electrical connectors
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/electrical-connectors.stl -D length=1 electrical-connectors.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/electrical-connectors.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 electrical-connectors.scad

REM bicycle bottom bracket adapter
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/adapter-bicycle-bottom-bracket.stl -D length=1 adapter-bicycle-bottom-bracket.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/adapter-bicycle-bottom-bracket.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 adapter-bicycle-bottom-bracket.scad

REM wrench
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/wrench.stl -D length=1 wrench.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/wrench.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 wrench.scad

REM plate-5x1
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/plate-5x1.stl -D length=1 plate-5x1.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/plate-5x1.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 plate-5x1.scad

REM plate-5x10
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/plate-5x10.stl -D length=1 plate-5x10.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/plate-5x10.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 plate-5x10.scad

REM plate-15x10
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/plate-15x10.stl -D length=1 plate-15x10.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/plate-15x10.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 plate-15x10.scad


REM techniques

REM tri joint
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/tri-joint.stl tri-joint.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/tri-joint.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 tri-joint.scad

REM shelf joint - ends
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/shelf-joint-ends.stl shelf-joint.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/shelf-joint-ends.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 shelf-joint.scad

REM shelf joint - width
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/shelf-joint-width.stl shelf-joint-2.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/shelf-joint-width.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 shelf-joint-2.scad

REM barrel-cage
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/barrel-cage.stl -D length=1 barrel-cage.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/barrel-cage.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 barrel-cage.scad

REM projects

REM bookshelf
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/bookshelf.stl bookshelf.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/bookshelf.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 bookshelf.scad

REM work cube
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/stl/38.1mm/work-cube.stl work-cube.scad
"C:\Program Files\OpenSCAD\openscad.com" -o ../../bin/png/38.1mm/work-cube.png --autocenter --viewall --view=scales --colorscheme=Metallic --imgsize=1024,1024 work-cube.scad
