/*
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

// shaft_collar_2
// http://www.thingiverse.com/thing:624122
// Printbus October 2016
// Originally remixed from thing http://www.thingiverse.com/thing:2454 by timschmidt
//   Parameter tol improves final fit of the holes for the shaft, clamping screw, and the trapped nut. 
//   Parameter nut_p specifies the amount of material to be placed in front of the trapped nut.
//   Parameter facets specifies the number of facets to be used.
// Revision A incorporates various design refinements
//   Bottom of nut trap now shaped to match nut, not square
//   Added chamfer to shaft bore hole edges
//   Added reference table for hardware dimensions
//   Fit tolerance can now be adjusted on each dimension
//   Migrated to MCAD library polyhole function for improved shaft and screw hole sizing
//   Constants are now labeled parameters and other parameter labels revised to improve understandability
//   Added openSCAD console echo output of key calculations
// Parameter labels typlically have a structure of (item)_(feature) e.g. hole_od
// The design was prepared with openSCAD version 2015.03
// Slicing suggestions
//   No more than two solid layers on bottom and top in order to retain flexibility in clamp
//   Limit infill to 25% or so in order to retain flexibility in clamp 
//   Some support may be desired in cutout area for screw head 

////////// REVISION HISTORY ///////////////////////////////////////////////////
// YYMMDD date code
// 150114 - initial publish
// 161031 - revA
//

////////// INCLUDE AND USE  ///////////////////////////////////////////////////
// NOTE: openSCAD version 2014.03 or newer required for MCAD library

// EXTERNAL FUNCTIONS USED
//  Requires MCAD library to be installed (openSCAD 2014.03 or later)
//  MCAD/nuts_and_bolts.scad not used so dimensioning and fit clearance can be controlled here
use <MCAD/polyholes.scad>
//  polyhole(h,d) provides improved size control on small holes

//////////////// PARAMETERS  ///////////////////////////////////////////////////
// Collar dimensioning 
collar_od = 50.8; // collar outer diameter (20mm + shaft diameter works well for M3 clamp screw)
collar_w = 10;  // collar width on the shaft (10mm works well for M3 clamp hardware)
gap = 2;        // size of the opening left for tightening
shaft_hid = 25.4 + 0.24;  // shaft bore hole inner diameter (8mm or 5/16-inch shaft nominal)
facets = 36;    // number of facets to be used for exposed edges of collar
chamfer = 0.8;  // size of chamfer lips on shaft bore hole

// Fastener and hardware component hole sizing
/*==================================================== 
Standard hardware dimension reference data
These are a reference point only; adjustment may be necessary due to nozzle size, etc.
Also note that MCAD polyhole does better at actual diameters than circle/cylinder

SIZE         THREAD  CLEAR   NUT AFD  NUT OD   NUT     HEAD     HEAD    WASHER  FLAT    
             HOLE    HOLE    WRENCH   @fn=6    HEIGHT  OD       HEIGHT  HEIGHT  OD      
-----------  ------  ------  -------  -------  ------  ------   ------  ------  ----- 
M2 x 0.4     1.75mm  2.20mm  4.0mm    4.62mm   1.6mm   4.0mm    2.0mm   0.3mm   5.5mm
M2.5 x 0.45  2.20mm  2.75mm  5.0mm    5.77mm   2.0mm   5.0mm    2.5mm   0.3mm   6.0mm
M3 x 0.5     2.70mm  3.30mm  5.5mm    6.35mm   2.4mm   6.0mm    3.0mm   0.5mm   7.0mm 
M4 x 0.7     3.50mm  4.40mm  7.0mm    8.08mm   3.2mm   8.0mm    4.0mm   0.8mm   9.0mm
M5 x 0.8     4.50mm  5.50mm  8.0mm    9.24mm   4.7mm   10.0mm   5.0mm   1.0mm   10.0mm
M6 x 1.0     5.50mm  6.60mm  10.0mm   11.55mm  5.2mm   12.0mm   6.0mm   1.6mm   12.0mm
M8 x 1.25    7.20mm  8.80mm  13.0mm   15.01mm  6.8mm   16.0mm   8.0mm   2.0mm   17.0mm
#2-56        1.85mm  2.44mm  4.76mm   5.50mm   1.59mm  4.60mm   2.18mm  0.91mm  6.35mm
#3-56        2.26mm  2.79mm  4.76mm   5.50mm   1.59mm  5.28mm   2.51mm  0.91mm  7.94mm
#4-40        2.44mm  3.26mm  6.35mm   7.33mm   2.38mm  5.97mm   2.85mm  1.14mm  9.53mm
#6-32        2.95mm  3.80mm  7.94mm   9.17mm   2.78mm  7.37mm   3.51mm  1.14mm  11.11mm
#8-32        3.66mm  4.50mm  8.73mm   10.08mm  3.18mm  8.74mm   4.17mm  1.14mm  12.7mm
#10-24       4.09mm  5.11mm  9.53mm   11.00mm  3.18mm  10.13mm  4.83mm  1.14mm  14.29mm
#10-32       4.31mm  5.11mm  9.53mm   11.00mm  3.18mm  10.13mm  4.83mm  1.14mm  14.29mm
1/4-20       5.56MM  6.76MM  11.11mm  12.83mm  4.76mm  13.03mm  6.35mm  1.80mm  18.65
Notes:       1,2     2,3     4        5        6       7,8      8,9     8,10    8,11
----------------------------------------------------------------------------------------
Note  1: Thread hole is for tap or self thread of machine screw in soft material
Note  2: Hole dimensions are from littlemachineshop.com Tap Drill - 50% Thread column data
Note  3: Clearance hole data is littlemachineshop.com Clearance Drill - Standard Fit column data
Note  4: Nut Across Flat Diameter (AFD) metric data is ISO, inch is boltdepot.com US Nut Size table
Note  5: Nut round OD is the openSCAD circle diameter required to achieve a nut size at $fn=6 
         Nut OD is calculated as = (NUT AFD)/cos(30)
Note  6: Nut height is for standard hex nut; jam nuts are less, lock nuts are more
         Metric data is ISO 4032, SAE data from boltdepot.com US Nut Size tables
Note  7: Head diameter varies with the head style; value shown is max across all except truss head
Note  8: Data from http://www.numberfactory.com/nf_metric.html or http://www.numberfactory.com/nf_inch.html 
Note  9: Head height varies with head style; value shown is max across all styles
Note 10: Standard washer height or thickness
Note 11: Flat washer outer diameter
****************************************************************************************/
// Tailor fastener sizing and fit adjustments here
// All screw holes are implemented with MCAD polyhole - more accurate than hole by cylinder
// Dimensions shown were determined with Simplify3D as slicer, inside perimeters printed first
// tolerance added to nominal corrects for extrusion width and other printer variations
screw_hid = 3.3 + 0.5;  // clamping screw clearance Hole Inner Diameter (3.3 nominal for M3 bolt; want loose fit)
head_hid = 6.0 + 0.5;   // clamping screw head clearance Hole Inner Diameter (6.0 nominal for M3 bolt)
head_pt = 2;            // head Plate Thickness - thickness of the material left behind the head of clamping screw
nut_afd = 5.5 + 0.4;    // nut across-flats diameter (5.5 nominal for M3 nut)
nut_h = 2.4 + 0.4;      // nut Height (2.4 nominal for M3 nut)
nut_pt = 1.8;           // nut Plate Thickness - amount of materal left in front of the nut

////////// NON-USER PARAMETERS AND CALCULATIONS /////////////////////////////////
// Parameters beyond this point are design constants normally not altered in basic tailoring

// Geometry mesh factors 
MF = 0.02;       // Mesh Factor is the amount of overlap on geometries for proper mesh
MSA = MF;        // Mesh Single Adjustment factor (translate ends; size adjustment on single ended mesh)
MDA = 2*MF;      // Mesh Double Adjustment (size adjustment on double ended mesh like boring holes)

// calculated parameters 
shaft_r = shaft_hid/2;                         // shaft Radius
collar_r = collar_od/2;                        // collar Radius
head_wt = (collar_w - head_hid)/2;             // Wall Thickness on each side of cutout for screw head
nut_wt = ((collar_r - shaft_r ) - nut_afd )/2; // Wall Thickness on sides of nut trap
screw_len = head_pt + gap + nut_pt + nut_h;    // suggested minimum screw length
screw_ox = shaft_r + (collar_r - shaft_r)/2;   // Offset in X axis to center of screw clearance hole

//////////////////////////////////////////////////////////////////////////////////////
// Top level geometry
shaft_collar();


module shaft_collar() {
  // Report key calculations to console
  echo(str("Screw head wall: ", head_wt,"mm each side of screw")); // material left on each side of cutout for screw head 
  echo(str("Nut wall: ", nut_wt,"mm each side of nut"));           // material left on sides of nut trap 
  echo(str("Screw length: Use ", screw_len,"mm or longer"));       // screw length recommendation

  // shaft collar is formed by removing various elements from a solid cylinder
  difference() {
    // start with solid cylindrical body
    cylinder ( d=collar_od, h=collar_w, center=false, $fn=facets);

    // bore hole for shaft
    translate ([0, 0, -MSA]) {                     // offset Z for oversized cylinder being removed
      polyhole( h=collar_w + MDA, d=shaft_hid );   // oversize h to ensure complete removal
    } // end bore shaft hole

    // chamfer the edges of the shaft bore hole
    translate ([0, 0, -MSA]) {                     // chamfer on print-bed side
      cylinder(d1=shaft_hid + 2*chamfer, d2=shaft_hid-MDA, h=chamfer + MSA, $fn=facets);	
    }
    translate ([0, 0, collar_w - chamfer]) {       // chamfer on top side          
      cylinder(d1=shaft_hid-MDA, d2=shaft_hid + 2*chamfer, , h=chamfer + MSA, $fn=facets);	
    }

    // remove split for clamp
    translate ([ 0, -gap/2, -MSA ]) {              // offset Z for oversized cube being removed
      cube ([ collar_r + MSA, gap, collar_w + MDA ], center=false); // oversize X & Z to ensure complete removal
    } // end clamp split

    // bore clearance hole for clamp screw
    // for simplicity, just bore a hole same length as collar diameter
    translate ( [screw_ox, collar_r, collar_w/2]) { // offset Y for 1/2 the bore hole length
      rotate ( [90, 0, 0])
        polyhole ( h=collar_od, d=screw_hid );
    } // end clamp screw clearance hole

    // form the nut trap
    // first remove slot for nut insertion in upper half of collar
    translate ( [screw_ox - nut_afd/2, gap/2 + nut_pt, collar_w/2 ]){
      cube ( [nut_afd, nut_h, collar_w/2 + MSA], center=false );
    } // end insertion slot
    // remove the shaped hole for the bottom half of the nut
    translate ( [screw_ox, gap/2 + nut_pt, collar_w/2 ]) {
      rotate([270,30,0])           // rotate Y for correct orientation of the hexagon hole
        cylinder ( d=nut_afd/cos(30), h=nut_h, center=false, $fn=6); // want hexagon hole to match nut
    } // end shaped hole for nut 
    
    // remove block for screw head area 
    // for simplicity, start the block at outer edge of collar 
    translate ([screw_ox - head_hid/2, -collar_r , collar_w/2 - head_hid/2]) {
      // size cube in Y axis to inside of plate material left under head
      cube ([ head_hid, collar_r - head_pt - gap/2, head_hid ], center=false);
    } // end clearance for screw head
    
  }  // end difference
}  // end module shaft_collar