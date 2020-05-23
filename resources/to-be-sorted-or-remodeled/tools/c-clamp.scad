//*****************************************************************************
//
//                         Parametric C-Clamp
//
//        File:    c-clamp.scad
//        Author:  Adam Connell
//        Date:    2010-07-07
//
//        Copyright 2010
//        License: GPL v2
//
//******************************************************************************
        
epsilon = 0.1;
$fn = 50;

// Standard number 8 nut
cclamp(9.25, 4.15, 2.75, 53.50, 40.00);

module cclamp(nut_od, nut_id, nut_height, spine, throat) {
	frame(nut_od, nut_id, nut_height, spine, throat, 0.2 * nut_od);
	translate(v=[(throat - nut_od)/2, 0, 0]) screwcap(nut_od, nut_id, 2*nut_id, 0.2 * nut_od);
}

module frame(nut_od, nut_id, nut_height, spine, throat, margin) {
	bar_diameter = 2.0 * margin + nut_od;
	bar_radius = bar_diameter / 2;
	translate(v = [-throat/2, 0, bar_radius*sqrt(3)/2]) difference() {
		union() {
			// Spine
			rotate(a = [90, 0, 0]) hexbar(h = spine, r = bar_radius);

			// Throat
			translate(v = [throat/2, spine/2, 0]) rotate(a = [90, 0, 90]) hexbar(h = throat, r = bar_radius);
			translate(v = [throat/2, -spine/2, 0]) rotate(a = [90, 0, 90]) hexbar(h = throat, r = bar_radius);
			translate(v=[0, spine/2, 0]) round_corner(bar_radius);
			mirror([0,1,0]) translate(v=[0, spine/2, 0]) round_corner(bar_radius);

			// Jaws
			translate(v = [throat, spine/2 - bar_radius/2, 0]) rotate(a = [90, 0, 0]) hexbar(h = bar_radius, r = bar_radius);
			translate(v = [throat, -spine/2 + bar_radius/2, 0]) rotate(a = [90, 0, 0]) hexbar(h = bar_radius, r = bar_radius);
			translate(v = [throat, spine/2, 0]) round_corner(bar_radius);
			mirror([0,1,0]) translate(v=[throat, spine/2, 0]) round_corner(bar_radius);
		}

		// Make space for the screw and captive nut
		translate(v=[throat, (spine - bar_diameter + nut_height)/2, 0]) rotate(a=[90,0,0]) union() {
			rotate(a = [0, 0, 90]) hexbar(h = nut_height + epsilon, r = nut_od/2);
			translate(v=[0, 0, -bar_radius]) cylinder(h = bar_diameter + epsilon, r = nut_id/2, center = true);
		}
	}
}

module hexbar(h, r) {
	linear_extrude(height = h, center = true, convexity = 10, twist = 0) hexagon(r);
}

module hexagon(r) {
	scale(v = [r, r, 1]) polygon(points=[[1,0],[0.5,sqrt(3)/2],[-0.5,sqrt(3)/2],[-1,0],[-0.5,-sqrt(3)/2],[0.5,-sqrt(3)/2]], paths=[[0,1,2,3,4,5,0]]);
}

module round_corner(r)
{
	union() {
		difference() {
			intersection() {
				sphere(r, center = true);
				translate(v=[0,0,0]) rotate(a=[90,0,0]) hexbar(2*r,r);
				translate(v=[0,0,0]) rotate(a=[90,0,90]) hexbar(2*r,r);
			}
			translate(v=[0,0,r * (1 + sqrt(3)/2)]) cube(size = [2*r, 2*r, 2*r], center = true);
			translate(v=[0,0,-r * (1 + sqrt(3)/2)]) cube(size = [2*r, 2*r, 2*r], center = true);
		}
	}
}

module screwcap(od, id, height, margin) {
	difference() {
		union() {
			translate(v=[0,0,height/8]) cylinder(h = height/4, r = od/2 + margin, center = true);
			translate(v=[0,0,3*height/8]) cylinder(h = height/4, r1 = od/2 + margin, r2 = id/2 + margin, center = true);
			translate(v=[0,0,3*height/4]) cylinder(h = height/2, r = id/2 + margin, center = true);
		}
		translate(v = [0,0,3*height/4]) cylinder(h = height, r = id/2, center = true);
	}
}

