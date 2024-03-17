difference(){
translate([-130,-130,0])
import("../../../../../bin/stl/8P_Closed_V2.stl");

#translate([0.75*25.4, 0.75*25.4, -1])
cylinder(r=4.5,height=24);
    
#translate([2.25*25.4, 0.75*25.4, -1])
cylinder(r=4.5,height=24);
}