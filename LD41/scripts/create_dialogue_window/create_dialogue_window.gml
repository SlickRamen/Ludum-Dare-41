///@arg advisor
///@arg dialogue_index
///@arg counter

var _advisor = argument0;
var _dialogue_index = argument1;
var _counter = argument2;

var _dialogue = instance_create_layer(0,0,"Instances",obj_advisor_dialogue);

_dialogue.advisor = _advisor;
_dialogue.advisor_sprite = _advisor.sprite;
_dialogue.message = _advisor.scripted_dialogue[_dialogue_index,_counter];
_advisor.counter++;

if _advisor.counter >= array_length_2d(_advisor.scripted_dialogue,_dialogue_index) {
    _advisor.counter = 0;
    _advisor.scripted_dialogue_index++;
    _dialogue.final = true;
}