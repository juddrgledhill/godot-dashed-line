# godot-dashed-line
A simple dashed line for Godot Engine v3

An example 'draw_dashed_line' function to allow godot's built in _draw() function to draw a dashed line with the line primitives in the engine. It mirrors the draw_line available already and allows you to specify the same parameters. 2 additional parameters are added to allow the specification of a dash_length and a cap_end.

dash_length allows you to say that you want a 100px line with a dash that is 4 pixels long.
cap_end allows you to say that you always want draw any remaining end dash to "cap" the line.

All of the magic is in the line_harness.gd file.
