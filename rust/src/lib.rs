use godot::prelude::*;
mod utils;
struct MyExtension;

#[gdextension]
unsafe impl ExtensionLibrary for MyExtension {}
