# TouchableHighlight for Framer.js

A module for Framer.js that adds a "touchable highlight" behavior to your buttons.

On touchStart, the opacity of the button is slightly decreased, and returns to normal on touchEnd.

![Framer TouchableHighlight Example](https://github.com/stevenbennett/framer-touchableHighlight/blob/master/touchableHighlight_example.png)

## Installation

1. Download touchableHighlight.coffee
2. Copy touchableHighlight.coffee to the /modules folder within your Framer project
3. Add touchableHighlight = require "touchableHighlight"


## Usage

### Enable on a single layer
Simply pass your button layer as an argument into the enable function within the touchableHighlight module.

For example, assuming your layer's name is "button":

	touchableHighlight.apply(button) 

Now whenever "button" is tapped, you'll see the touchable highlight effect. You can add any additional functionality you need on top of this effect, it wont interfere with other functions such as onTap. For example:
	
	touchableHighlight.apply(button) 

	button.onTap ->
		print "This works fine, no worries."
	

### Enable on multiple layers

As a shortcut you can add this affect to many buttons at once by making an array of buttons and passing them all into the function. Like this:

	buttons = [button_one, button_two, button_three]

	for layer in buttons
		touchableHighlight.apply(layer)


##Contact

Twitter: [@stevenbennett](http://twitter.com/stevenbennett)
