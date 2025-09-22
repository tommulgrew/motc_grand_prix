Fixed
=====

- DONE Quad edge issues
    - DONE Single pixel gap
    - DONE Single pixel texture wrap around
- DONE - "Pico-8" text on right barrier is mirrored
    - Although in original game text on left barrier is mirrored!
      Will just make it match original to start with. Rest can be left as a future enhancement.
- DONE Gaps in canopy in Monza track. Missing some logic to elongate models? Or is model wrong?
- DONE AI cars shake when on starting positions. Possibly when z pos is an integer?
- DONE AI car pitch incorrect on slopes

To fix
======

- Shoulder things not generating correctly. Seems to miss out the middle curve?!
- Windshield circle has gaps. Are lines not joining up?

Done
====
- DONE Draw cockpit
- DONE Draw steering wheel
- DONE Pre-multiply in texture scale factor
- DONE Add horizon
- DONE Implement driving code
    - DONE Basic code
    - DONE Collisions
- DONE Sound effects
    - DONE Export from Pico-8
    - DONE Load on startup
    - DONE Trigger
- DONE Implement proper timing code
- DONE - Ready, set, go sequence
- Pause menu
    - DONE - Quit to main menu
    - DONE - Controller settings
        - DONE - Persist
    - DONE - Car colour
    - DONE - Toggle racing line
- DONE - Select number of laps
- DONE - End race when laps finished

To do
=====

- Pause menu
    - Graphics settings
        - Screen resolution
        - Draw distance
        - Persist
- Select race type
    - Single
    - Practice    
- End of race sequence
    - Calculate podium
        - As cars complete race
        - When player exits post-race sequence
- Season mode
    - Generate roster
    - Collect results
    - Persist roster and results
- Update texture image. Make use of 2x resolution
- Check memory usage
- Qualification lap
    - Single lap
    - No collisions
    - Don't draw AI cars
    - Hide cars from AI cars
    - Player can skip if necessary from pause menu (will be placed last)
    - Use results of qualification lap to order starting grid for race
- Release MotC