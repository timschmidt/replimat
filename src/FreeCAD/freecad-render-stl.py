# -*- coding: utf-8 -*-

# Macro Begin: /home/tim/Documents/GitHub/replimat/src/FreeCAD/Render stl.FCMacro +++++++++++++++++++++++++++++++++++++++++++++++++
import FreeCAD
import Mesh

# Gui.runCommand('Std_DlgMacroRecord',0)
### Begin command Std_Open
FreeCAD.openDocument('/home/tim/Documents/GitHub/replimat/src/FreeCAD/0.75in_x_1.5in_NPT_suction_pipe.FCStd')
# App.setActiveDocument("__75in_x_1_5in_NPT_suction_pipe")
# App.ActiveDocument=App.getDocument("__75in_x_1_5in_NPT_suction_pipe")
# Gui.ActiveDocument=Gui.getDocument("__75in_x_1_5in_NPT_suction_pipe")
### End command Std_Open
# Gui.runCommand('Std_PerspectiveCamera',1)
# Gui.runCommand('Std_Export',0)
# Gui.Selection.addSelection('__75in_x_1_5in_NPT_suction_pipe','Cut001','Face1',-2.99839,12.9209,21.7593)
### Begin command Std_Export
__objs__=[]
__objs__.append(FreeCAD.getDocument("__75in_x_1_5in_NPT_suction_pipe").getObject("Cut001"))
Mesh.export(__objs__,u"/home/tim/Documents/GitHub/replimat/src/FreeCAD/0.75in_x_1.5in_NPT_suction_pipe-0.75 NPT x 1.stl")

del __objs__
### End command Std_Export
# Macro End: /home/tim/Documents/GitHub/replimat/src/FreeCAD/Render stl.FCMacro +++++++++++++++++++++++++++++++++++++++++++++++++
