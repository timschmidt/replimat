/*
 * @name Replimat Solar panels
 * @author Timothy Schmidt
 * @date 2019-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @comment Typical size for residential is 65 inches by 39 inches, for commercial 77 inches by 39 inches. Sunpower's residential panel is 61 inches by 41 inches
 * @comment type 1 = 60 cells, type 2 = 72 cells, type 3 = Sunpower
 */


include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>
use <solar-cells.scad>

module replimat_solar_panel(type=1){
    if (type==1) {
        difference(){
            union(){
            color("silver"){
            translate([0,0,0])
            cube([39*inch, 65*inch, 2*inch]);
            }
            for (i = [0:5]){
                for (j = [0:9]){
                    translate([20+i*165,20+j*165,1.95*inch])
                    replimat_solar_cell();
                }
            }
            }
            

            translate([1/8 * inch, 1/8 * inch, -0.25 * inch])
            cube([38.5*inch, 64.5*inch, 2*inch]);
        }
    }
    if (type == 2){
        difference(){
            union(){
            color("silver"){
            translate([0,0,0])
            cube([39*inch, 77*inch, 2*inch]);
            }
            for (i = [0:5]){
                for (j = [0:11]){
                    translate([20+i*165,20+j*162.5,1.95*inch])
                    replimat_solar_cell();
                }
            }
            }
            

            translate([1/8 * inch, 1/8 * inch, -0.25 * inch])
            cube([38.5*inch, 76.5*inch, 2*inch]);
        }
    }
    if (type == 3){
        difference(){
            union(){
            color("silver"){
            translate([0,0,0])
            cube([1046, 1558, 2*inch]);
            }
            for (i = [0:5]){
                for (j = [0:9]){
                    translate([20+i*175,20+j*154.5,1.95*inch])
                    replimat_solar_cell();
                }
            }
            }
            

            translate([1/8 * inch, 1/8 * inch, -0.25 * inch])
            cube([1040, 1552, 2*inch]);
        }
    }
}

replimat_solar_panel(type);