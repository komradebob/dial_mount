/****************************************************
 *                                                  *
 * Dial Indicator mount for Black Widow 3D Printer  *
 *                                                  *
 *  © Jan 29, 2026 Bob Bownes  bownes@web9.com      *
 *                                                  *
 ****************************************************/
 
 $fn=150;
 
 
 
 rotate([90,0,0])
 difference(){
     union(){
        difference(){
                translate([-10,0,0])
                cube([60,2.54,18],center=true);     // back plate
                rotate([90,0,0])
                translate([20-12,18/2-5,0])         // mounting holes
                    cylinder(h=3,d=3,center=true);
                rotate([90,0,0])
                    translate([-20+12,18/2-5,0])
                    cylinder(h=3,d=3,center=true);       
        }
            rotate([90,0,0])                        //dial mounting post
             translate([-27,0,-5.84])
               cylinder(h=9.0+2.54,d=6.38,center=true);
            
       
    }
     rotate([90,0,0])                               // Screw hole for dial indicator
            translate([-27,0,-5.84])
            #cylinder(h=11.55,d=.11*25.4,center=true);
}


/****************************************************
 *                                                  *
 * Spacer to hold indicator up                      *
 *                                                  *
 ****************************************************/


translate([0,25/2,12.5-1.25])
difference(){
    cylinder(h=25, d=7.4,center=true);
    cylinder(h=25.1, d=4.4,center=true);
    translate([0,-2,0])
        cube([4.25,5,25.1],center=true);
    
}


