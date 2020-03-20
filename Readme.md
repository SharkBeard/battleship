# Battleship

This is the start of a library for a battleship game. It should be agnostic enough to be used with different front-ends. For example, it could be built into a console app, integrated into a rails app for an online game, or a simulation with randomly placed ships to see what strategies work best to find ships.

## Design choices

* The board does not use a full 2D array for the grid to make it easier to loop through the list of ships and easier to store the game (a list of moves and a list of ship positions)
* I added memoization the `size` and `cells` methods on the `Ship` class. Assigning them in the constructor would have worked just as well, but I felt it was easier to grok than having more assignments in the constructor. Also, this meant they weren't created until needed.

## Next Steps

* Handle ship placement
* Have win conditions (loop through ships and see if all are destroyed)

## Contributing

Fork, submit a pull request, and accept my love! <3

### Contributor Guidelines

* I would greatly prefer contributions that use TDD.
* I would love to see how this continues without using 2D-arrays.

## Notes

* I kept going back and forth on if it was the responsibility of the board to know where the ships were and inform them if they were hit, or if it was the job of the ship to know where on the board it was and the board would ask the ship if it was hit. 