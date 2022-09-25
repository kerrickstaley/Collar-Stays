// length is the main customizable thing
length = 60;

// you can also customize these
thickness = 1;
width = 9.5;

// and these if you'd like
tip_r = 1.5;
taper_len = 20;

$fn=100;

hull() {
    cylinder(h=thickness, r=tip_r);
    translate([taper_len, 0, 0])
    cylinder(h=thickness, r=width / 2);
    translate([length - tip_r - width / 2, 0, 0])
    cylinder(h=thickness, r=width / 2);
}