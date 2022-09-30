// length is the main customizable thing
// my shirts are mostly 55 mm (2.2 in), with one
// 45 mm (1.75 in), and sizes up to 70 mm (2.75
// in) are common
length = 55;

// you can also customize these
thickness = 1;
width = 10;

// and these if you'd like
tip_r = 1.5;
taper_len = 15;
layer_height = 0.2;

$fn=100;

difference() {
    hull() {
        cylinder(h=thickness, r=tip_r);
        translate([taper_len, 0, 0])
        cylinder(h=thickness, r=width / 2);
        translate([length - tip_r - width / 2, 0, 0])
        cylinder(h=thickness, r=width / 2);
    }
    
    translate([max(length - 16, 22), 0, thickness - layer_height])
    linear_extrude(1) {
        text(str(length), size = 8, halign = "right", valign = "center");
        translate([0, -0.8, 0])
        text("mm", size = 4, halign = "left", valign = "top");
    }
}