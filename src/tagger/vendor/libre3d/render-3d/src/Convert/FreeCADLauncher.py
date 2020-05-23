import sys

FREECADPATH = '/usr/lib/freecad/lib/'
sys.path.append(FREECADPATH)

import FreeCAD
import Part
import Mesh

in_fn, out_fn = sys.argv[1], sys.argv[2]

try:
  FreeCAD.open(in_fn) #FCStd files
except:
  Part.open(in_fn) #STEP / IGES files

objs = FreeCAD.ActiveDocument.Objects
Mesh.export(objs, out_fn)
