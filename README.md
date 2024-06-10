# GodotSharedResourceTest
This is an example project to demonstrate the capabilities of using a shared [resource](https://docs.godotengine.org/en/stable/tutorials/scripting/resources.html) to store game data and emit signals using the builtin `changed()` signal for resources.

The "Crocs Collected" counter is stored as a variable in a script that is attached to an otherwise empty `.tres` resource. This resource is loaded by the following:
- Player node
  - For incrementing the count when a croc is picked up.
  - Demonstrates loading the resource through the Inspector in the Godot editor
- GUI node
  - For displaying the count
  - Demonstrates loading the resource programatically

There are several benefits of implementing it in this way:
- Nodes can share and modify data without doing any tree traversal or autoloaded scripts
- Globally accessible
- Data persists through scene changes
- Resources have builtin `changed()` signal
- Provides a typed data structure
- Structure can be reused by multiple `.tres` objects or when [instatiated programatically](https://docs.godotengine.org/en/stable/tutorials/scripting/resources.html) using `.new()`

### Controls
- Arrow keys to move
- Space to jump
- Esc to reload scene
