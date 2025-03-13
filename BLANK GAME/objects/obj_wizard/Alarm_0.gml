//Fireball alarm goes to 0 shoot fireball
instance_create_layer(x, y, "Instances", obj_fireball);
alarm_set(0, 300);