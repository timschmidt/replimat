/* [Options] */
//Create Divider 1/2 the box
Divider=1; //[1:Yes, 0:No]

//Create Subdivider 1/4 the box
Subdivider=1; //[1:Yes, 0:No]

/* [Dimensions] */

//Length of bottom of box (inches)
L=5.5; //[0.25:0.25:24]

//Width of bottom of box (inches)
W=11.0; //[0.25:0.25:24]

//Height of bottom of box (inches)
T=3.0; //[0.25:0.25:24]

//Thickness of material (inches)
Th=0.25; //[0.125:0.125:0.75]

MinFoldT=25.4*Th;//mm
DL=L*25.4;//mm
DW=W*25.4;//mm
DT=T*25.4;//mm

/* [Hidden] */

NotchT=MinFoldT/2;
NotchFactor=.5*.4;
NotchL=DL*NotchFactor;
NotchW=DW*NotchFactor;

module base(LeftNotch=true,RightNotch=true,TopNotch=true,BottomNotch=true) {
      difference() {
        square([DL,DW]);
        if (BottomNotch) {  
          translate([DL/2-NotchL/2,0]) {
            translate([NotchL,0])
              square([NotchL,NotchT]);
            translate([-NotchL,0])
              square([NotchL,NotchT]);
          }    
        }
        if (BottomNotch) {  
          translate([DL/2-NotchL/2,DW-NotchT]) {
            translate([NotchL,0])
              square([NotchL,NotchT]);
            translate([-NotchL,0])
              square([NotchL,NotchT]);
          }    
        }
      if (LeftNotch) {
         translate([0,DW/2-NotchW/2]) {  
            translate([0,NotchW])
              square([NotchT,NotchW]);
            translate([0,-NotchW])
              square([NotchT,NotchW]);
          }
        }        
      if (RightNotch) {
         translate([DL-NotchT,DW/2-NotchW/2]) {  
            translate([0,NotchW])
              square([NotchT,NotchW]);
            translate([0,-NotchW])
              square([NotchT,NotchW]);
          }
      }
    }    
}

Orange=[(15*16+15)/255,(7*16+8)/255,00];
Red=[(255)/255,(10*16+13)/255,0]; 
Blue=[2/255,(8*16+14)/255,(9*16+11)/255]; 
Red=[255/255,13/255,00];


module shortSide(TopNotch=false,BottomNotch=false) {
      square([DL,DT]);
      if (TopNotch) {
        translate([DL/2-NotchL/2,DT]) {
          translate([NotchL,0])
            square([NotchL,NotchT]);
          translate([-NotchL,0])
            square([NotchL,NotchT]);
        }    
      } 
      if (BottomNotch) { 
        translate([DL/2-NotchL/2,-NotchT]) {  
          translate([NotchL,0])
            square([NotchL,NotchT]);
          translate([-NotchL,0])
            square([NotchL,NotchT]);
        }    
      } 
}

module longSide(LeftNotch=false,RightNotch=false,tabs=false) {
       square([DT,DW]);
       if (tabs) {
         translate([MinFoldT/4,DW])
           square([DT-MinFoldT/2,DT-MinFoldT/2]);
         translate([MinFoldT/4,-DT+MinFoldT/2])
           square([DT-MinFoldT/2,DT-MinFoldT/2]);
       }    
       if (LeftNotch) {
         translate([-NotchT,DW/2-NotchW/2]) {  
            translate([0,NotchW])
              square([NotchT,NotchW]);
            translate([0,-NotchW])
              square([NotchT,NotchW]);
          }
      }  
       if (RightNotch) {
         translate([DT,DW/2-NotchW/2]) {  
            translate([0,NotchW])
              square([NotchT,NotchW]);
            translate([0,-NotchW])
              square([NotchT,NotchW]);
        }  
  }
}

module shortFold() {
   square([DL,MinFoldT]);
}

module longfold(DW) {
   square([MinFoldT,DW]);
}

module boxBase(){
    union() {    
    color(Orange)
      base();    
    translate([0,DW])
      color(Red)
      shortSide();  
    translate([0,DW+DT])
      color(Orange)
      shortFold(); 
    translate([0,DW+DT+MinFoldT])
      color(Red)
      shortSide(TopNotch=true);
    translate([0,-DT])
      color(Red)
      shortSide();
    translate([0,-MinFoldT-DT])
      color(Orange)
      shortFold(); 
    translate([0,-DT-DT-MinFoldT])
      color(Red)
      shortSide(BottomNotch=true);  
    translate([DL,0])
      color(Red)
      longSide(tabs=true);
    translate([DL+DT,0])
      color(Orange)
     longSide(RightNotch=true); 
    translate([-DT,0])
      color(Red)
      longSide(tabs=true);
    translate([-DT-DT,0])
     color(Orange)
      longSide(LeftNotch=true);
    }
}

module divider(){
  difference() {
    union() {  
      color(Orange) square([MinFoldT,DW]); 
      translate([MinFoldT,0])  
        color(Red) square([DT,DW]);
      translate([MinFoldT+DT,0])  
        color(Orange) square([DL/2,DW]);
      translate([-DT,0])  
        color(Red) square([DT,DW]);
      translate([-DT-DL/2,0])  
        color(Orange) square([DL/2,DW]);
    }
    translate([.5*DT+MinFoldT,DW/2-MinFoldT/2])
      square([1.5*DT,MinFoldT]);
    translate([-2*DT-MinFoldT,DW/2-MinFoldT/2])
      square([1.5*DT,MinFoldT]);
  }    
}

module cross() {
  difference() {
    color(Orange) square([DL,DT],center=true);
    translate([0,DT/4])  
    square([MinFoldT,DT/2],center=true);  
  }  
}

module layout() {
  if (Subdivider)   
    translate([-3*DT-MinFoldT,-DT])
      cross();
  if (Divider )
    translate([-5*DT-MinFoldT,0])
      divider();
  boxBase();
}    

layout();