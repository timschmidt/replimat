include <font.scad>
include <teknik/font.scad>

$fn = 55;

//Recycling_Symbol(Symbol = 1,Numerical_Code = "8", Plastic_Symbol = "PLA", Length = 30, Width = 30, Thickness = 3, Arrow_Width = 3, Arrow_Head_Width = 6, Arrow_Head_Length = 4);
Recycling_Symbol(Symbol = 1,Numerical_Code = "7", Plastic_Symbol = "PETG", Length = 10, Width = 10, Thickness = 0.4, Arrow_Width = 1, Arrow_Head_Width = 2, Arrow_Head_Length = 1);

module Recycling_Symbol(Symbol,Numerical_Code, Plastic_Symbol, Length, Width, Thickness, Arrow_Width, Arrow_Head_Width, Arrow_Head_Length){

ncbbox1 = font_bbox (Numerical_Code);
ncbbox2 = font_bbox (Numerical_Code);
ncwidth = max (ncbbox1[0], ncbbox2[0]);
ncheight = max (ncbbox1[1], ncbbox2[1]);

psbbox1 = font_bbox (Plastic_Symbol);
psbbox2 = font_bbox (Plastic_Symbol);
pswidth = max (psbbox1[0], psbbox2[0]);
psheight = max (psbbox1[1], psbbox2[1]);


if (Symbol == 1){

	Recoverable_Plastic(Length, Width, Thickness, Arrow_Width, Arrow_Head_Width, Arrow_Head_Length);

	translate([0, .5,Thickness/-2])
		scale([(Width-Arrow_Head_Width/2)/ncwidth/3.75, (Width-Arrow_Head_Width/2)/ncwidth/3.75, 1])
			translate([ncwidth/-2,ncheight/3,0])
				font_render(Numerical_Code, height = Thickness, center = true);

	translate([0, Width/-2,Thickness/-2])
		scale([Width/pswidth/1.5, Width/pswidth/1.5, 1])
			translate([pswidth/-2,psheight/3,0])
				font_render(Plastic_Symbol, height = Thickness, center = true);

} if (Symbol == 2){

	Nonrecoverable_Plastic(Length, Width, Thickness, Arrow_Width, Arrow_Head_Width, Arrow_Head_Length);

} if (Symbol == 3){
	
	Re_Recycled_Plastics(Length, Width, Thickness, Arrow_Width, Arrow_Head_Width, Arrow_Head_Length);

	translate([0, 0,Thickness/-2])
		scale([Width/ncwidth/3, Width/ncwidth/3, 1])
			translate([ncwidth/-2,ncheight/3,0])
				font_render(Numerical_Code, height = Thickness, center = true);

	translate([0, Width/-2-psheight/2*(Width/pswidth/1.5),Thickness/-2])
		scale([Width/pswidth/1.5, Width/pswidth/1.5, 1])
			translate([pswidth/-2,psheight/3,0])
				font_render(Plastic_Symbol, height = Thickness, center = true);

} if (Symbol == 4){
	
	Reworked_Plastics(Length, Width, Thickness, Arrow_Width, Arrow_Head_Width, Arrow_Head_Length);

	translate([0, 0,Thickness/-2])
		scale([Width/ncwidth/3, Width/ncwidth/3, 1])
			translate([ncwidth/-2,ncheight/3,0])
				font_render(Numerical_Code, height = Thickness, center = true);

	translate([0, Width/-2-psheight/2*(Width/pswidth/1.5),Thickness/-2])
		scale([Width/pswidth/1.5, Width/pswidth/1.5, 1])
			translate([pswidth/-2,psheight/3,0])
				font_render(Plastic_Symbol, height = Thickness, center = true);

} if (Symbol == 5){

	Repeatable_Plastic(Length, Width, Thickness, Arrow_Width, Arrow_Head_Width, Arrow_Head_Length);

	translate([0, 0,Thickness/-2])
		scale([Width/ncwidth/3, Width/ncwidth/3, 1])
			translate([ncwidth/-2,ncheight/3,0])
				font_render(Numerical_Code, height = Thickness, center = true);

	translate([0, Width/-2,Thickness/-2])
		scale([Width/pswidth/1.5, Width/pswidth/1.5, 1])
			translate([pswidth/-2,psheight/3,0])
				font_render(Plastic_Symbol, height = Thickness, center = true);

}

}
		
//********************************************
//Re-Recycled Plastic
//********************************************

module Re_Recycled_Plastics(Length, Width, Thickness, Arrow_Width, Arrow_Head_Width, Arrow_Head_Length){

difference(){

	cylinder(h = Thickness, r = Width/2, center = true);

	cylinder(h = Thickness+.1, r = Width/2-Arrow_Width, center = true);

	translate([0, Width/2-Arrow_Width/2-1,0])
		cube([Width/4, Arrow_Width*2+5, Thickness+.1], center = true);

}

translate([Width/-8+Arrow_Head_Length/2, ((Width/2)-Arrow_Width/2)-Width/64, 0])
	triangle(Arrow_Head_Length,Arrow_Head_Width, Thickness);

translate([Width/8,((Width/2)-Arrow_Width/2)-Width/64 , 0])
	cube([Arrow_Width/2, Arrow_Width*3, Thickness], center = true);

}

//********************************************
//Reworked Plastic
//********************************************

module Reworked_Plastics(Length, Width, Thickness, Arrow_Width, Arrow_Head_Width, Arrow_Head_Length){

difference(){

	cylinder(h = Thickness, r = Width/2, center = true);

	cylinder(h = Thickness+.1, r = Width/2-Arrow_Width, center = true);

	translate([0, Width/2-Arrow_Width/2-1,0])
		cube([Width/4, Arrow_Width*2+5, Thickness+.1], center = true);

	translate([Width/8-Width/16+Arrow_Width/2.25, ((Width/2)-Arrow_Width/2)-Width/	64, 0])
		cylinder(h = Thickness+.1, r = Width/12 - Arrow_Width/2, center = true);

}

translate([Width/-8+Arrow_Head_Length/2, ((Width/2)-Arrow_Width/2)-Width/64, 0])
	triangle(Arrow_Head_Length,Arrow_Head_Width, Thickness);

translate([Width/8-Width/16+Arrow_Width/2.25, ((Width/2)-Arrow_Width/2)-Width/64, 0])
	difference(){

	cylinder(h = Thickness, r = Width/12, center = true);

	cylinder(h = Thickness+.1, r = Width/12 - Arrow_Width/2, center = true);

}

}

//********************************************
//Nonrecoverable Plastic
//********************************************

module Nonrecoverable_Plastic(Length, Width, Thickness, Arrow_Width, Arrow_Head_Width, Arrow_Head_Length){

	Recoverable_Plastic();
	
	difference(){
	
		cylinder(h = Thickness, r = (Width/4)-Arrow_Head_Width/2, center = true);
	
		difference(){
	
			cylinder(h = Thickness+.1, r = (Width/4)-Arrow_Head_Width/2-1, center = true);
		
			rotate([0,0,-45])
				cube([((Width/2)*sqrt(3))/2, 1, Thickness+.1], center = true);
	
		}
	
	}

}

//********************************************
//Recoverable Plastic
//********************************************

module Recoverable_Plastic(Length, Width, Thickness, Arrow_Width, Arrow_Head_Width, Arrow_Head_Length){

	difference(){
	
		hull()
			for (i = [0:3]){
				rotate(i*360/3, [0,0,1])
					translate([0,((Width/2)*sqrt(3))/2+Arrow_Width/2,0])
						cylinder(h = Thickness, r = Arrow_Width/2, center = true);
		
		}
		
		hull()
			for (i = [0:3]){
				rotate(i*360/3, [0,0,1])
					translate([0,(((Width-Arrow_Width*2)/2)*sqrt(3))/2+Arrow_Width/4, 0])
						cylinder(h = Thickness+.1, r = Arrow_Width/4, center = true);
		
		}
		
		rotate([0,0, 360/6])
			for (i = [0:3]){
				rotate(i*360/3, [0,0,1])
					translate([0,((Width/2)*sqrt(3))/4+1,0])
						cube([ Arrow_Head_Length+1,Arrow_Width+2, Thickness+.1], center = true);
		
		}
			
	
	}

rotate([0,0, 360/6])
	for (i = [0:3]){
		rotate(i*360/3, [0,0,1])
			translate([-.5,sqrt((pow(Width/2,2)) - pow(((Width/2)*sqrt(3))/2,2)),0])
				triangle(Arrow_Head_Length,Arrow_Head_Width, Thickness);

}

}



//********************************************
//Repeatable Plastic
//********************************************

module Repeatable_Plastic(Length, Width, Thickness, Arrow_Width, Arrow_Head_Width, Arrow_Head_Length){

	scale([-1,-1,1]){
	
		translate([(Length)/2-Arrow_Head_Length,0,0]){
			
			translate([(Length- Arrow_Head_Length)/-2,Width/-2+Arrow_Head_Width,0])
				cube([(Length- Arrow_Head_Length), Arrow_Width, Thickness], center = true);
			
			translate([Arrow_Head_Length/2,Width/-2+Arrow_Head_Width,0])
				triangle(Arrow_Head_Length,Arrow_Head_Width, Thickness);
			
		}
	
	}
	
	translate([(Length)/2-Arrow_Head_Length,0,0]){
		
		translate([(Length- Arrow_Head_Length)/-2,Width/-2+Arrow_Head_Width,0])
			cube([(Length- Arrow_Head_Length), Arrow_Width, Thickness], center = true);
		
		translate([Arrow_Head_Length/2,Width/-2+Arrow_Head_Width,0])
			triangle(Arrow_Head_Length,Arrow_Head_Width, Thickness);
	
	}

}





/*module polygon(h,r,n){

	cylinder(h, (1/sin((180-(360/n))/2))*r, (1/sin((180-(360/n))/2))*r, $fn = n);

}*/


module triangle(l,w,h){

hull(){

	translate([l/-2,w/2,0])
		cylinder(h, r = .01, center = true);

	translate([l/-2,w/-2,0])
		cylinder(h, r = .01, center = true);

	translate([l/2,0, 0])
		cylinder(h, r = .01, center = true);

}

}

