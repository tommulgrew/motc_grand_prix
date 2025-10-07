DONE
====

- DONE Quad edge issues
    - DONE Single pixel gap
    - DONE Single pixel texture wrap around
- DONE - "Pico-8" text on right barrier is mirrored
    - Although in original game text on left barrier is mirrored!
      Will just make it match original to start with. Rest can be left as a future enhancement.
- DONE Gaps in canopy in Monza track. Missing some logic to elongate models? Or is model wrong?
- DONE AI cars shake when on starting positions. Possibly when z pos is an integer?
- DONE AI car pitch incorrect on slopes

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
    - Graphics settings
        - DONE Draw distance
- DONE - Select number of laps
- DONE - End race when laps finished
- DONE End of race sequence
    - DONE Calculate podium
        - DONE As cars complete race
        - DONE When player exits post-race sequence
- DONE - Check memory usage
- DONE Update texture image. Make use of 2x resolution
- DONE Track race time, current lap time and best lap time for each car
- DONE Decouple menu settings from race settings
    - Menu settings:
        - Stored in gameConfig
        - Edited in main menu
        - Persisted to disk
        - Uses lap option index
        - Settings
            - Race type (practice, single race or tournament)   - Need different name
            - Track
            - Lap option index
            - AI difficulty level
            - Tournament mode settings (discussed elsewhere)
            - Player car colour (configured in pause menu)
    - Game settings
        - Stored in local variables
        - Uses actual lap count
        - Settings:
            - Race type (practice or race)
            - Track
            - Number of laps
            - Race roster
            - AI Difficulty level
            - Is demo mode
            - Is qualification lap
            - Player car colour
    - Notes: 
        - Decoupling would allow game to run demo mode while still preserving
            the user's menu settings. And make qualification lap logic a bit 
            cleaner.
        - Menu code configures game settings before race starts.
- DONE Demo mode
- DONE Select race type
    - DONE Single
    - DONE Practice
    - DONE Tournament
- DONE Tournament mode
    - Generate roster
    - Collect results
    - Persist roster and results
- DONE Pause menu
    - DONE Graphics settings
        - DONE Screen resolution
- DONE Qualification lap
    - DONE Single lap
    - DONE No collisions
    - DONE Don't draw AI cars
    - DONE Hide cars from AI cars
    - DONE Player can skip if necessary from pause menu (will be placed last)
    - DONE Use results of qualification lap to order starting grid for race
    - DONE Show "Qualifying Lap" in pre-race
    - DONE HUD
        - DONE Don't show place
        - DONE Show race time only
        - DONE Don't show car in front/behind
    - DONE Fix lap bell issue when race starts
- DONE 640x480 issues
    - DONE - Fix pause menu vertical position
    - DONE - Fix main menu vertical position
    - DONE Car wheels are displayed in incorrect position
- DONE Fix car shuddering bug when displaying race results
- DONE Menu music
- DONE Player car colour in results view
- DONE Fade transitions
- DONE Don't place corner distance signs when barrier is close to road.

To do
=====

- Shoulder things not generating correctly. Seems to miss out the middle curve?!
- Windshield circle has gaps. Are lines not joining up?

- MotC 
    - Clear unused screen space after resolution switch.
    - Weird upscaling glitch when using `SCALE_FIT` scaling mode
    - Can we improve filename display in "Find all references" etc.
    - Release current version

Wishlist
========

- Finish line markings
- Start grid markings
- Make expert mode more competitive
- Reduce AI car-to-car collisions
- Fix gaps in model rendering
- Remaster menu music
- Better engine sfx
- Title screen graphics
- Fix car flickering when beside player
