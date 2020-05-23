#include "<?php echo $includeFile; ?>"
#include "<?php echo $sceneDir; ?>Pov/axes_macro.inc"
#include "math.inc"
#include "finish.inc"
#include "transforms.inc"
#include "colors.inc"
#include "woods.inc"
#include "metals.inc"

// Bugs:
// - grid is proportional to the XY cross sectional size, and it too small for thin/tall objects such that it is difficult to visually distinguish in the rendering
// - camera angle should be calculated based on Z height and XY width of the model - low Z-heights should move the camera down, to more-center the image?
// - light coordinates should be relative, so that large models are still well lit
// - grid size should scale several units larger

background {color rgb 1}

plane {
       <0,0,1>,-0.01
       pigment { color rgb <0.9,0.9,0.9> }
       finish { reflection 0.2 }
       }

light_source {
        <-10,(<?php echo $x; ?>*-2),50> 
        rgb 1
}

light_source { <10,(<?php echo $x; ?>*-2),(<?php echo $z; ?>*<?php echo $zMult; ?>)> color White }
light_source { <(<?php echo $y; ?>*-2),-40,(<?php echo $z; ?>*<?php echo $zMult; ?>)> color White }
light_source { <0,0,(<?php echo $z; ?>*2)> color White }

global_settings {
  assumed_gamma 2
}

camera {
	//orthographic
	sky <0,0,1>
	location <(<?php echo $x; ?>*-2),(<?php echo $y; ?>*-2),(<?php echo $z; ?>*<?php echo $zMult; ?>)>
	look_at <0,0,(<?php echo $z; ?>*0.45)>
	angle 35
	right -1.33*x
}



object {
  <?php echo $modelname; ?>
  Center_Trans(<?php echo $modelname; ?>, x+y)
    Align_Trans(<?php echo $modelname; ?>, -z, <0,0,0>)
      texture{ 

        // Metal
        //T_Chrome_3C
        //pigment{ P_Chrome2 }
        //finish{ F_MetalA }
        
        // Wood
        T_Wood1

    }
}

// the coordinate grid and axes
Axes_Macro
(
	<?php echo $axesSize; ?>,	// Axes_axesSize,	The distance from the origin to one of the grid's edges.	(float)
	10,	// Axes_majUnit,	The size of each large-unit square.	(float)
	10,	// Axes_minUnit,	The number of small-unit squares that make up a large-unit square.	(integer)
	0.003,	// Axes_thickRatio,	The thickness of the grid lines (as a factor of axesSize).	(float)
	off,	// Axes_aBool,		Turns the axes on/off. (boolian)
	off,	// Axes_mBool,		Turns the minor units on/off. (boolian)
	off,	// Axes_xBool,		Turns the plane perpendicular to the x-axis on/off.	(boolian)
	off,	// Axes_yBool,		Turns the plane perpendicular to the y-axis on/off.	(boolian)
	on	// Axes_zBool,		Turns the plane perpendicular to the z-axis on/off.	(boolian)
)

object
{
	Axes_Object
}
