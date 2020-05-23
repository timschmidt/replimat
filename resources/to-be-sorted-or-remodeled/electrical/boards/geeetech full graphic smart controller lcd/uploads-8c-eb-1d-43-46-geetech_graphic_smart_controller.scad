difference() {
	union(){
		translate([20,0,4.6]) cube([70,93,1.6]); //lcd board
		translate([29.25,7,6.2])cube([51,78.56,8.4]); //lcd screen
		translate([33.48,85.56,6.2])cube([42.5,6.27,3.4]); //lcd screen connector pad
		

		cube([60,93,1.6]); //controller board

		translate([8.9,65,1.6])cylinder(r=5.9,h=9.7,$fn=36); //speaker

		translate([4.65,23.42,1.6])cube([12.5,13,6.1]); // encoder
		translate([10.65,30,1.6])cylinder(r=3,h=20.4,$fn=36);

		translate([49.7,66.15,-8.7]) cube([8.6,20.25,8.7]); // 2 2x5 pin connectors
		translate([49.7,44.85,-8.7]) cube([8.6,20.25,8.7]);

		translate([4.5,8.25,1.6])cube([6.2,6.2,5]);	//light toggle switch

		translate([4.5,41.,1.6])cube([6.2,6.2,5]);	//emergency stop switch
	
		translate([27.23,0,-2.93]) cube([27,25.5,2.93]); // sd card slot

		translate([39.4,76.1,-8.3]) cube([2.5,8,8.3]); // light mode jumper pins
		translate([30,64.1,-8]) cylinder(r=3.15,h=8,$fn=16); // capacitor
	}

	translate([2.55,2.55,0])cylinder(r=2.05,h=1.6,$fn=12); // mounting holes
	translate([2.55,90.45,0])cylinder(r=2.05,h=1.6,$fn=12);
	translate([87.45,2.55,4.6])cylinder(r=2.05,h=1.6,$fn=12);
	translate([87.45,90.45,4.6])cylinder(r=2.05,h=1.6,$fn=12);
}
