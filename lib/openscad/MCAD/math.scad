// MIT license

include <constants.scad>

function deg(angle) = 360*angle/TAU;

function polar_to_xy(v) = [v[1] * cos(v[0]), v[1] * sin(v[0] )];
