enum advisor_mood {
	happy,
	calm,
	angry,
	creepy,
	insane,
}

starting_mood = advisor_mood.calm;
mood = starting_mood;

enum advisor_corruption_level {
	none,
	subtle,
	light,
	telling,
	strong,
	obvious,
	turned
}

starting_corruption_level = advisor_corruption_level.none;
corruption_level = starting_corruption_level;

enabled = false;
name = "";
dark_name = "";
title = "";
dark_title = "";
scripted_dialogue_counter = 0;

counter = 0;
sprite = noone;
scripted_dialogue_index = 0;
