if(instance_exists(obj_player)){//check if player exists

	instance_create_layer(x, y, "Instances", obj_falkorAttack);//shoot enemy attack

	canShoot = true;
}