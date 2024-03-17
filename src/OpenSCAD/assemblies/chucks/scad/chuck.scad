/*
 * @name Replimat Chuck
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */
include <MCAD/materials.scad>

module replimat_chuck(){
color(Steel)
import("../../../../../bin/stl/38.1mm/4Jaw_Chuck_all-in-one1.stl");
}

replimat_chuck();