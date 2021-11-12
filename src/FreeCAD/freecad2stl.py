"""
freecad2stl.py

2021-11-03 by Wesley R. Elsberry & Tim Schmidt
License: LGPL2+ (for compatibility with FreeCAD)

Utiliy program to convert FreeCAD FCstd format files and objects to STL.

This requires conversion of each contained object to a mesh, and then saving the mesh to STL.

Assumptions: The mesh conversion is based on a 0.1mm resolution and the defaults the GUI program sets.

Steps to set up:

Install Anaconda Individual Edition
Launch Anaconda prompt
Following insrtuctions in https://github.com/FreeCAD/FreeCAD_Conda
conda create -n freecad python=3.9 freecad jupyter notebook
conda activate freecad
"""

import sys, os
import glob
import json
import pickle
import traceback

prefix = os.environ['CONDA_PREFIX']
sys.path.insert(1,prefix+"\\Library\\Ext")
sys.path.append(prefix+"\\Library\\bin")

os.environ['QT_API'] = "pyside"

import PySide

import FreeCAD, FreeCADGui
#import MeshPartGui, FreeCADGui 
#FreeCADGui.runCommand('MeshPart_Mesher')

import Mesh, Part
#import PartGui 
import MeshPart


def freecad_filename_handling(srcfile):
    """
    Extract basename.
    """
    basename, ext = os.path.splitext(srcfile)
    return basename

def freecad_to_stl_export(srcfile):
    """
    Perform export of all objects in srcfile to STL format.
    
    
    """
    basename = freecad_filename_handling(srcfile)
    try:
        mydoc = FreeCAD.openDocument(srcfile)
        mydocname = App.ActiveDocument.Name
        print(mydocname)
        myparts = mydoc.Objects.copy()
        print("parts", myparts)
        for parti in myparts:
            """
            __mesh__=__doc__.addObject("Mesh::Feature","Mesh")
>>> __part__=__doc__.getObject("Cut001")
>>> __shape__=Part.getShape(__part__,"")
>>> __mesh__.Mesh=MeshPart.meshFromShape(Shape=__shape__, LinearDeflection=0.1, AngularDeflection=0.523599, Relative=False)
>>> __mesh__.Label="0.75 NPT x 1.5in pipe section (Meshed)"
            """
            mypart = mydoc.getObject(parti.Name)
            print(parti.Name)

            if isinstance(mypart, Part.Feature):
                print(parti.Name, "is a Part::Feature")
            else:
                print(parti.Name, "is NOT a Part::Feature")
                
            if isinstance(mypart, Part.Feature):
                mymeshname = parti.Name + "_Mesh"
                mymesh = mydoc.addObject("Mesh::Feature", mymeshname)
                myshape = Part.getShape(mypart)
                mymesh.Mesh = MeshPart.meshFromShape(Shape=myshape, LinearDeflection=0.1, AngularDeflection=0.523599, Relative=False)
                meshlabel = "_".join([basename, parti.Name, "Mesh"])
                mymesh.Label = meshlabel
                print(meshlabel)
                Mesh.export([mymesh],"_".join([basename, parti.Name, ".stl"]))

                # This is done, clean things up.
                del mypart, mymesh, myshape
                        
            
    except:
        estr = "Error: " + traceback.format_exc()
        print(estr)
    
    pass


def Main():
    # Just set the directory to the current one.
    BATCHSOURCEDIR = os.getcwd()

    SOURCEPATTERN = r"*.fcstd"

    srcfiles = glob.glob(os.path.abspath(os.path.join(BATCHSOURCEDIR, SOURCEPATTERN)))

    if 0 >= len(srcfiles):
        print("Failed to find FreeCAD files in the current directory. Exiting...")
        return None
    
    print(srcfiles)

    # Converting
    for srci in srcfiles:
        print(srci)
        freecad_to_stl_export(srci)

    
if __name__ == "__main__":

    print("freecad2stl start...")

    Main()

    print("freecad2stl done.")
    
