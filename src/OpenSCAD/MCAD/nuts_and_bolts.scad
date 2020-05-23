/*
 *  OpenSCAD Metric Fastners Library (www.openscad.org)
 *  Copyright (C) 2010-2011  Giles Bathgate
 *  Copyright (C) 2010 D1plo1d
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 3 of the License,
 *  LGPL version 2.1, or (at your option) any later version of the GPL.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 *
*/

//testNutsAndBolts();

module SKIPtestNutsAndBolts()
{
	$fn = 360;
	translate([0,15])nutHole(3, proj=2);
	boltHole(3, length= 30, proj=2);
}

$fn=50;
apply_chamfer=true;

MM = "mm";
INCH = "inch"; //Not yet supported

//Based on: http://www.roymech.co.uk/Useful_Tables/Screws/Hex_Screws.htm
METRIC_NUT_AC_WIDTHS =
[
	-1, //0 index is not used but reduces computation
	-1,
	-1,
	6.40,//m3
	8.10,//m4
	9.20,//m5
	11.50,//m6
	-1,
	15.00,//m8
	-1,
	19.60,//m10
	-1,
	22.10,//m12
	-1,
	-1,
	-1,
	27.70,//m16
	-1,
	-1,
	-1,
	34.60,//m20
	-1,
	-1,
	-1,
	41.60,//m24
	-1,
	-1,
	-1,
	-1,
	-1,
	53.1,//m30
	-1,
	-1,
	-1,
	-1,
	-1,
	63.5//m36
];
METRIC_NUT_THICKNESS =
[
	-1, //0 index is not used but reduces computation
	-1,
	-1,
	2.40,//m3
	3.20,//m4
	4.00,//m5
	5.00,//m6
	-1,
	9.00,//m8
	-1,
	8.00,//m10
	-1,
	10.00,//m12
	-1,
	-1,
	-1,
	13.00,//m16
	-1,
	-1,
	-1,
	16.00//m20
	-1,
	-1,
	-1,
	19.00,//m24
	-1,
	-1,
	-1,
	-1,
	-1,
	24.00,//m30
	-1,
	-1,
	-1,
	-1,
	-1,
	29.00//m36
];

COURSE_METRIC_BOLT_MAJOR_THREAD_DIAMETERS =
[//based on max values
	-1, //0 index is not used but reduces computation
	-1,
	-1,
	2.98,//m3
	3.978,//m4
	4.976,//m5
	5.974,//m6
	-1,
	7.972,//m8
	-1,
	9.968,//m10
	-1,
	11.966,//m12
	-1,
	-1,
	-1,
	15.962,//m16
	-1,
	-1,
	-1,
	19.958,//m20
	-1,
	-1,
	-1,
	23.952,//m24
	-1,
	-1,
	-1,
	-1,
	-1,
	29.947,//m30
	-1,
	-1,
	-1,
	-1,
	-1,
	35.940//m36
];

module nutHole(size, units=MM, tolerance = +0.0001, proj = -1)
{
	//takes a metric screw/nut size and looksup nut dimensions
	radius = METRIC_NUT_AC_WIDTHS[size]/2+tolerance;
	height = METRIC_NUT_THICKNESS[size]+tolerance;
	if (proj == -1)
	{
		cylinder(r= radius, h=height, $fn = 6, center=[0,0]);
	}
	if (proj == 1)
	{
		circle(r= radius, $fn = 6);
	}
	if (proj == 2)
	{
		translate([-radius/2, 0])
			square([radius*2, height]);
	}
}

module boltHole(size, units=MM, length, tolerance = +0.0001, proj = -1)
{
	radius = COURSE_METRIC_BOLT_MAJOR_THREAD_DIAMETERS[size]/2+tolerance;
//TODO: proper screw cap values
	capHeight = METRIC_NUT_THICKNESS[size]+tolerance; //METRIC_BOLT_CAP_HEIGHTS[size]+tolerance;
	capRadius = METRIC_NUT_AC_WIDTHS[size]/2+tolerance; //METRIC_BOLT_CAP_RADIUS[size]+tolerance;

	if (proj == -1)
	{
	translate([0, 0, -capHeight])
		cylinder(r= capRadius, h=capHeight);
	cylinder(r = radius, h = length);
	}
	if (proj == 1)
	{
		circle(r = radius);
	}
	if (proj == 2)
	{
		translate([-capRadius/2, -capHeight])
			square([capRadius*2, capHeight]);
		square([radius*2, length]);
	}
}

module cap_bolt(dia,len)
{
	e=1.5*dia;
	h1=1.25*dia;
	cylinder(r=dia/2,h=len);
	translate([0,0,-h1]) cylinder(r=e/2,h=h1);
}

module csk_bolt(dia,len)
{
	h1=0.6*dia;
	h2=len-h1;
	cylinder(r=dia/2,h=h2);
	cylinder(r1=dia,r2=dia/2,h=h1);
}

module washer(dia)
{
	t=0.1*dia;
	difference()
	{
		cylinder(r=dia,h=t);
		translate([0,0,-t/2])cylinder(r=dia/2,h=t*2);
	}
}

module flat_nut(dia)
{
	m=0.8*dia;
	e=1.8*dia;
	c=0.2*dia;
	difference()
	{
		cylinder(r=e/2,h=m,$fn=6);
		translate([0,0,-m/2])cylinder(r=dia/2,h=m*2);
		if(apply_chamfer)
		    translate([0,0,c])cylinder_chamfer(e/2,c);
	}
}

module bolt(dia,len)
{
	e=1.8*dia;
	k=0.7*dia;
	c=0.2*dia;
	difference()
	{
		cylinder(r=e/2,h=k,$fn=6);
		if(apply_chamfer)
		    translate([0,0,c])cylinder_chamfer(e/2,c);
	}

	cylinder(r=dia/2,h=len);

}

module cylinder_chamfer(r1,r2)
{
	t=r1-r2;
	p=r2*2;
	rotate_extrude()
	difference()
	{
		translate([t,-p])square([p,p]);
		translate([t,0])circle(r2);
	}
}

module chamfer(len,r)
{
	p=r*2;
	linear_extrude(height=len)
	difference()
	{
		square([p,p]);
		circle(r);
	}
}

union()
{
//csk_bolt(3,14);
//washer(3);
//flat_nut(3);
//bolt(4,14);
//cylinder_chamfer(8,1);
//chamfer(10,2);
}
