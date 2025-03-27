use godot::prelude::*;

#[derive(GodotClass)]
#[class(base=RefCounted, init)]
pub struct RustUtils {
    #[base]
    base: Base<RefCounted>,
}

#[godot_api]
impl RustUtils {
    #[func]
    fn multiply(&self, a: i32, b: i32) -> i32 {
        a * b
    }
}
