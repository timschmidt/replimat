/*
 * @name Replimat Cutter
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

import("../../bin/stl/cutter_body_v2.stl");
translate([60,0,0])
import("../../bin/stl/cutter_fixation_v2.stl");
translate([80,9,20])
rotate([0,180,0])
import("../../bin/stl/cutter_bolt.stl");
