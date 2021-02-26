/*
 * @name Replimat Work Cube
 * @author Timothy Schmidt
 * @date 2016-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

/* TODO: add casters
 * TODO: add power strip, extension cord, two hook bolts
 * Description: The work cube has room for mounting a tool or two,
 *              and space for a project tray below.  Lockable casters
 *              and an integrated extension cord and power strip make
 *              this workspace mobile.
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>

frame_is_hollow = true;

// Vertical 
zFrame(15);
translateFrame([14,0,0]) zFrame(15);
translateFrame([0,14,0]) zFrame(15);
translateFrame([14,14,0]) zFrame(15);

// Feet
translateFrame([1,0,1]) yFrame(15);
translateFrame([13,0,1]) yFrame(15);
translateFrame([0,1,0]) xFrame(15);
translateFrame([0,13,0]) xFrame(15);

translateFrame([1,0,13]) yFrame(15);
translateFrame([14,0,13]) yFrame(15);
translateFrame([0,13,14]) xFrame(15);
translateFrame([0,1,14]) xFrame(15);
    
// Shelving
translateFrame([0,0,2]) topShelf(15, 15, 1);
translateFrame([0,0,15]) topShelf(15, 15, 0);
