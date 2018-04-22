var _smoke = instance_create_layer(x+random_range(-12,12),y-8,"Instances",obj_smoke);
_smoke.image_xscale = 2;
_smoke.image_yscale = 2;

alarm[0] = global.one_second/2 + random(60);