use <MCAD/regular_shapes.scad>


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
module alto()
{

difference()
{
translate([-50,0,0])cube([20,80,10]);
translate([-40,30,-0.5]) cylinder(11,3,3);
translate([-40,50,-0.5]) cylinder(11,3,3);
translate([-43,30,-0.5]) cube([6,20,11]);
}

difference()
{
translate([-50,0,0])A();
translate([-50.1,-25,22])rotate([-45,0,0])cube([5.2,20,15]);
translate([-35.1,-25,22])rotate([-45,0,0])cube([5.2,20,15]);
}


translate([-50,80,0])rotate([45,0,0])cube([20,30,10]);
			
translate([-50,98,25])rotate([0,90,0])cylinder(20,5,5);
}

rotate([0,90,0])alto();




