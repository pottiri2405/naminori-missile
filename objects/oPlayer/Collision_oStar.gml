score++;						// increase the players score
with(other){					// destroy the pickup
	instance_destroy();
}

if(!instance_exists(oStar)){	// if there are no more stars to collect
	game_restart()				// restart the game
}