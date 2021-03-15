# replimat
# self-reproducing manufactory
# replimat.org
# timschmidt@gmail.com

Design guidelines:
- each component part should be contained in it's own CAD file
- each subcomponent part should be contained in it's own module inside the CAD file
- modules should render a part at 0+,0+,0+ ready for manufacture
- assemblies should render at 0,0,0- ready for modeling
- transitioning to NopSCADLib
- differentiate between CAD for presentation, and production

Outputs:
- Consumable CAD files - STL, STEP
- Graphic renderings from standard perspective(s)
- BOM
- Tool, object, and process dependency graphs
- g-code
- Step-by-step assembly instructions

High interest models:
- drill bits
- end mills
- high precision / load linear bearings
- printable 1kW electric motor

CAD files
- specify per-coastline padding around CAD models?
- object oriented jscad files, with custom translation methods, etc.
- enhance http://reprap.org/wiki/RBS and http://reprap.org/wiki/RBS_Overview

User interface(s)
- pluggable package sources - github support, heirloom tech package source
- one-click pushing to github / forking


- event driven multi machine syncronization - opencv, external sensor, etc
- description of the master controller scheme
- scrape mcmaster diagrams for relevant parameters + basic design shapes
