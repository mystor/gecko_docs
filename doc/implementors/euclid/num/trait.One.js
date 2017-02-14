(function() {var implementors = {};
implementors["euclid"] = [];
implementors["offscreen_gl_context"] = [];
implementors["servo_config"] = [];
implementors["style"] = [];
implementors["webrender"] = [];

            if (window.register_implementors) {
                window.register_implementors(implementors);
            } else {
                window.pending_implementors = implementors;
            }
        
})()
