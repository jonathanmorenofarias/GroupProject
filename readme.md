# Spike Away!

## Group 25 Final Project
## Jonathan Moreno-Farias, Aileen Castro-Guzman, Zachary Wallace

### Overall Design

The player controls a character who is constantly going left and right on the screen. Pressing a button makes the character jump, as it is constantly falling. On every edge of the screen are spikes. If the player hits them, they lose.

### Required Modules

* Renderer
* Game Loop (25 Hz Tick Rate) (Increases with score.)
* * Collision Detection
* * Player input
* * Character Update
* * * Player Pos
* * * Player Vel
* * Hazard Generating
* * * Hashing
* * Scorekeeping
* State Machine

### Inputs

* Button for jumping
* Clock for logic and rendering.

### Outputs

* VGA Display
* 7 Segment Score Counter

### Game States

* Idle, Initial state where we are waiting for the player to give an input.
* Playing, Game loop is active.
* Over, Player has hit a spike, reset memory and move back to idle state.

### Stretch Goals

* 1V1 mode, where two players are going back and fourth, first to get hit loses.
* Pallet Swapping, change the background after a certain score is reached.
* Custom character, change the character's color.
