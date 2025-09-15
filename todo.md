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

To do
=====

- Update texture image. Make use of 2x resolution
- Check memory usage
- Implement proper timing code
