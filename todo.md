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
- DONE End of race sequence
    - DONE Calculate podium
        - DONE As cars complete race
        - DONE When player exits post-race sequence
- DONE - Check memory usage
- Pause menu
    - Graphics settings
        - DONE Draw distance
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
- Demo mode

To do
=====

- Select race type
    - DONE Single
    - DONE Practice
    - Tournament
- Tournament mode
    - Generate roster
    - Collect results
    - Persist roster and results
- Pause menu
    - Graphics settings
        - Screen resolution
- Qualification lap
    - Single lap
    - No collisions
    - Don't draw AI cars
    - Hide cars from AI cars
    - Player can skip if necessary from pause menu (will be placed last)
    - Use results of qualification lap to order starting grid for race
- Release MotC
- Fix car shuddering bug when displaying race results
- Fix car flickering when beside player
- Fade transitions
- Menu music
- Title screen graphics