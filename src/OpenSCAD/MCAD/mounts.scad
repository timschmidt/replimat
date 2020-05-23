/*
 * @name Bearing Blocks and Mounts
 * @author Timothy Schmidt
 * @date 2019
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <math.scad>

// spindle:4,5,28,25
// 608 pillow block:2,5.2,37,12.2
// 16mm pillow block:2,5.5,40,16
// lm8uu:4,4,24 (corner to corner),9
// 8mm rod mount:2,5.5,32,8
// NEMA 17, 8mm shaft:4,5,31,8

module mount(bolts=2, size=5.5, spacing=32, center=8)
    {

    if (bolts == 2)
    {
       circle(r=center/2);
       translate([spacing/2,0,0])
       circle(r=size/2);
       translate([-spacing/2,0,0])
       circle(r=size/2);
        
    }
	if (bolts == 3)
	{
       circle(r=center/2);
       
        
	}
	if (bolts == 4)
	{
       circle(r=center/2);
       translate([spacing/2,spacing/2,0])
       circle(r=size/2);
       translate([-spacing/2,spacing/2,0])
       circle(r=size/2);
	   translate([spacing/2,-spacing/2,0])
       circle(r=size/2);
       translate([-spacing/2,-spacing/2,0])
       circle(r=size/2);
	}
	
}