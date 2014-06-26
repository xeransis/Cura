
$fn=200;

use <calibration_square.scad>

cylinder_width1=7;
cylinder_width2=20;
cylinder_height=20;

module trunccylinder() {
	union()
	{
		cylinder(h = cylinder_height/2, r1 = cylinder_width1, r2 = cylinder_width2);
		translate([0,0,cylinder_height/2])
					cylinder(h = cylinder_height/2, r1 = cylinder_width2, r2 = cylinder_width1);

	}
}
 

	trunccylinder();

calibration_square();