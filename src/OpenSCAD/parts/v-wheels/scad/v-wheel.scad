/*
 * @name Replimat V Wheel
 * @version 0.1
 * @author Timothy Schmidt
 * @date 2016
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @part vWheel
 * @assembly vWheelAssembly
 * @requires 1 bolt [8 * mm, 50 * mm]
 * @requires 1 nut "M8"
 */
 
 include <MCAD/units.scad>
 
 vWheelDiameter = 50 * mm;
 vAngle = 90;
 vWheelThickness = 20 * mm;
 $fn = 200;
 
 vWheel();
 
 module vWheel(){
     polygon([[0,0],[1,1]]);
 }
 
 module vWheelAssembly(){
     
 }