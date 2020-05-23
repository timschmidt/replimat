use <MCAD/regular_shapes.scad>
module manopola()
{
difference()
{
cube([36,36,10]);
translate([-5,18,-0.1]) cylinder(11,11,11);
translate([18,-5,-0.1]) cylinder(11,11,11);
translate([41,18,-0.1]) cylinder(11,11,11);
translate([18,41,-0.1]) cylinder(11,11,11);
translate([18,18,-0.1])hexagon_prism(5,5);
}
translate([2,2,0]) cylinder(10,7,7);
translate([2,34,0]) cylinder(10,7,7);
translate([34,2,0]) cylinder(10,7,7);
translate([34,34,0]) cylinder(10,7,7);
translate([18,18,9.9]) cylinder(10,10,10);
}

difference()
{
manopola();
translate([18,18,0]) cylinder(22,3,3);
}