difference(){
square([4.5*25.4,3*25.4]);

translate([3/4 * 25.4, 3/4 * 25.4, 0])
circle(r=4.5);
translate([3/4 * 25.4, 2.25 * 25.4, 0])
circle(r=4.5);    
translate([3/4 * 25.4, 3.75 * 25.4, 0])
circle(r=4.5);
translate([2.25 * 25.4, 3/4 * 25.4, 0])
circle(r=4.5);
translate([3.75 * 25.4, 3/4 * 25.4, 0])
circle(r=4.5);
translate([3.75 * 25.4, 2.25 * 25.4, 0])
circle(r=4.5);
translate([3.75 * 25.4, 3.75 * 25.4, 0])
circle(r=4.5);
translate([2.25 * 25.4, 3.75 * 25.4, 0])
circle(r=4.5);


difference(){
  translate([2.25 * 25.4, 2.25 * 25.4, 0])
  circle(r=8);
  translate([2.25 * 25.4 - 9, 2.25 * 25.4 - 8, 0])
  square([4,16]);
  translate([2.25 * 25.4 + 5, 2.25 * 25.4 - 8, 0])
  square([4,16]);
}
}