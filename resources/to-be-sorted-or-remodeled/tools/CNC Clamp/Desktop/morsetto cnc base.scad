use <MCAD/regular_shapes.scad>

module base()
{
difference()
{
cube([20,60,10]);
translate([-1,30,10])rotate([0,90,0]) cylinder(22,5,5);
translate([10,50,-0.5]) cylinder(11,4,4);
translate([10,50,4.1])hexagon_prism(6,8);
}
	module A()
	{
		union()
		{
		difference()
		{
		translate([0,-14,14])rotate([-45,0,0])cube([20,20,10]);
		translate([-1,-10,17])rotate([0,90,0])cylinder(22,2,2);
			}
			difference()
			{
			translate([0,-10,17])rotate([0,90,0])cylinder(20,5,5);
			translate([-1,-10,17])rotate([0,90,0])cylinder(22,2,2);
			}
		}
	}

difference()
{
A();
translate([5,-25,22])rotate([-45,0,0])cube([10,20,15]);
}
	difference()
	{
	translate([0,30,10])rotate([0,90,0]) cylinder(20,10,10);
	translate([7,27,10])cube([6,13,12]);
	translate([-1,30,10])rotate([0,90,0]) cylinder(22,5,5);
	}
}
rotate([0,90,00])base();