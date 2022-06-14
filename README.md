# Enigma-Final

### Functionality: 1 or 2
Although I was able to set up most of my Classes/Module/methods correctly, because I wasn't able to get
my `Shift Class` to behave the way I intended, my `Encrypt/Decrypt` methods couldn't be successfully implemented. In lieu of this I put in a placeholder `message_split` method in my `Enigma` class to demonstrate some kind of change/mock encryption to the original message. I wanted to use this method and a `rotate` method on the `encrypted msg` and `character set`.

I wanted to use a`Shift Class` where I would have my `KeyGenerator` included, and `Offset` final outputs brought together in order to create each `Shift (A, B, C, D)`. I had the methods for implementing the `Key` and `Offset` but wasn't able to have them interact as I intended to. In this class you will see the `Shifts` are hard-coded, as I still wanted to demonstrate my line of thinking.

### OOP: 3
Project is broken into logical components that are appropriately encapsulated.

No classes are unreasonably small or large, or contain knowledge/information/behavior that they shouldn’t know about

One Module was written/tested (the class file it was included in did not run as intended)

Each Class follows SRP

### Ruby: 3 or 4
Code is properly indented, spaced, lines are not excessively long

Ruby Naming convention followed

Best choice Enumerables chosen

No line of code is more than 10 lines

### TDD: 3
TDD process followed with testing and errors guiding the code/methods

`SimpleCov` shows 99% coverage metrics

One instance of `mock/stubs` used in the `Offset` class, to test creating a new date and always outputting the current date

### Version Control: 3
30+ commits and 10 pull requests

Pull requests are clearly documented using a standard template

Commits included single piece of functionality for the most part
