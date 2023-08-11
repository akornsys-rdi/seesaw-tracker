$fn=360;

include <BOSL/constants.scad>
use <BOSL/involute_gears.scad>

translate([0,-140,0]) rotate([0,0,12]) gear(mm_per_tooth=5, number_of_teeth=15, thickness=10, hole_diameter=6, align=V_TOP);
translate([0,-160,0]) translate([-10,-3,10]) cube([20,6,4]);
translate([0,-172,0]) translate([-10,-3,10]) cube([20,6,4]);
guia();

module guia() {
    difference() {
        union() {
            cylinder(r=180, h=10);
        }
        union() {
            translate([0,0,-1]) cylinder(r=149.2, h=12);
            translate([0,0,-1]) gear(mm_per_tooth=5, number_of_teeth=190, thickness=12, hole_diameter=0, align=V_TOP);
            translate([-186,0,-1]) cube([374,187,12]);
            translate([-187,-186,-1]) cube([187,374,12]);
            translate([0,0,5]) difference() {
                cylinder(r1=165.5, r2=163.5, h=6);
                translate([0,0,-1]) cylinder(r1=155, r2=157, h=8);
            }
            translate([0,0,5]) difference() {
                cylinder(r1=177.5, r2=175.5, h=6);
                translate([0,0,-1]) cylinder(r1=167, r2=169, h=8);
            }
        }
    }
}
