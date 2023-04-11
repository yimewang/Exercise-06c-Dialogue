# Exercise-06c-Dialogue

Exercise for MSCH-C220

A demonstration of this exercise is available at [https://youtu.be/cko2j647EfM](https://youtu.be/cko2j647EfM)

This exercise is an opportunity for you to experiment with an open source Godot Dialogue add-on called Dialogic. Dialogic is [still in very active development](https://dialogic.coppolaemilio.com/)—its Godot 3 release is currently at 1.4.5. It is still a little buggy around the edges, but it is a powerful system for creating and introducing dialogue systems into your games.

Fork this repository. When that process has completed, make sure that the top of the repository reads [your username]/Exercise-06c-Dialogue. *Edit the LICENSE and replace BL-MSCH-C220 with your full name.* Commit your changes.

Clone the repository to a Local Path on your computer.

Open Godot. Import the project.godot file and open the "Dialogue" project.

Dialogic is released as a Godot add-on. I have already downloaded the plug-in and included it in the res://addon folder in this repository. You now need to enable the plug-in: this can be done in Project->Project Settings->Plugins and checking the Dialogic Enable box.

Back in your main window, you should now see an additional workspace tab labeled Dialogic. This is where we will do most of the work for this exercise.

The Game scene consists of a cyborg and a zombie standing on a platform suspended over a beach. We are going to allow them to have a conversation. Open the Dialogic workspace.

Dialogic uses a few main categories for assembling dialogue trees. Dialogues will take place between characters, so we will first set up our speakers:

 * Above the sidebar, find the icon labeled New Character (second from the left) and select it.
 * This first character should be called "Player". The color should be set as #74b816, and the Default portrait should be res://Assets/Player_Portrait.png.
 * Create a second character called "Zombie". The color should be set as #1c7ed6, and the Default portrait should be res://Assets/Zombie_Portrait.png.
 * Next, we will create a timeline (left-most icon). Tap the button and then rename the new timeline to "Conversation".
 * On the right-side bar, you should see several options. Select Character. In the resulting tile, make sure [Join] is selected ,then tap the [Character] label and choose Zombie. Select the far-right position. For the [Animation], select "Fade In Up Big", set Length: 1, then make sure [Wait for animation] is checked.
 * Create another Character tile. Make sure [Join] is selected, then this time, choose Player as the [Character]. Select the far-left position. For the [Animation], select "Fade In Up Big", set Length: 1, then make sure [Wait for animation] is checked.
 * Create a new Text Event. Choose the Zombie as the [Character]. In the text box, type "Growl".
 * Create a new Text Event. Choose the Player as the [Character]. In the text box, type "What did you say?".
 * Create a new Text Event. Choose the Zombie as the [Character]. In the text box, type "Growl".
 * Create a new Text Event. Choose the Player as the [Character]. In the text box, type "Okay, I think we understand each other.".
 * Create another Character tile. This time, select [Leave] and choose Player as the [Character]. For the [Animation], select "Fade Out Down Big", set Length: 1, then make sure [Wait for animation] is checked.
 * Lastly, create another Character tile. Select [Leave] and choose Zombie as the [Character]. For the [Animation], select "Fade Out Down Big", set Length: 1, then make sure [Wait for animation] is checked.
 * Finally, add a Close Dialog tile.

As you can see, Dialogic is quite powerful, and we are barely scratching the surface. It can handle branching conversations, updating variables, multiple themes and player portraits, etc. The documentation is still quite rudimentary, but it can be found at [https://dialogic.coppolaemilio.com/documentation/](https://dialogic.coppolaemilio.com/documentation/). There are also several fairly good YouTube tutorials exploring the plugin.

Go back to the 3D Workspace and select the Game node. Add attach a script, and save it as res://Game.gd. The contents of the script should be as follows:

```
extends Spatial

func _ready():
	var new_dialog = Dialogic.start('Conversation')
	add_child(new_dialog)
```

Save the scene and run your project. You should see the dialogue appear on the screen. You can advance from one text even to the next using the Space bar (this is also configurable in Dialogic).

Quit Godot. In GitHub desktop, add a summary message, commit your changes and push them back to GitHub. If you return to and refresh your GitHub repository page, you should now see your updated files with the time when they were changed.

Now edit the README.md file. When you have finished editing, commit your changes, and then turn in the URL of the main repository page (https://github.com/[username]/Exercise-06c-Dialogue) on Canvas.

The final state of the file should be as follows (replacing the "Created by" information with your name):
```
# Exercise-06c-Dialogue

Exercise for MSCH-C220

An exploration of dialogue systems in Godot using Dialogic.

## Implementation

 - Built using Godot 3.5
 - [Dialogic 1.4.5](https://github.com/coppolaemilio/dialogic) created by Emilio Coppola.

## References

None

## Future Development

None

## Created by 

Jason Francis
```
