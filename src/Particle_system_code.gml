
/*
 *
 * Copyright 2015-2023 Bharath Vishal G.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

//This code has to be put in the create evenet of an object

//Create the Particle System
global.part_System = part_system_create();
part_system_depth(global.part_System, -1);

//Create the particle type and set its property values
//Modify these property values to suit your needs
global.part_Effect = part_type_create();
part_type_shape(global.part_Effect, pt_shape_pixel);
part_type_size(global.part_Effect, 0.50, 1, 0, 0);
part_type_scale(global.part_Effect, 1, 1);
part_type_speed(global.part_Effect, 1, 3, 0, 0);
part_type_direction(global.part_Effect, 0, 360, 0, 0);
part_type_orientation(global.part_Effect, 0, 0, 0, 0, 0);
part_type_life(global.part_Effect, 100, 120);
part_type_gravity(global.part_Effect, 0.05, 90);
part_type_color3(global.part_Effect, 16777215, 12632256, 8421504);
part_type_alpha3(global.part_Effect, 1, 1, 1);
part_type_blend(global.part_Effect, 0);


//Create the particle emitter
global.part_Emitter = part_emitter_create(global.part_System);

//Adjust the emitter positions to suit your needs.
var x_Pos, y_Pos;
x_Pos = x;
y_Pos = y;
part_emitter_region(global.part_System, global.part_Effect, x_Pos-635, x_Pos+485, y_Pos+6, y_Pos+46, ps_shape_rectangle, ps_distr_linear);


//Finally emit the particles from the particle system
part_emitter_stream(global.part_System, global.part_Emitter, global.part_Emitter, 3);
