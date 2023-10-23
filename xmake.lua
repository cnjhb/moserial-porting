add_rules("mode.release","mode.debug")

add_requires("pkgconfig::glib-2.0",{system = true},{alias = "glib2"})
add_requires("pkgconfig::gtk+-3.0",{system = true},{alias = "gtk3"})

target("test")
    set_kind("binary")
    add_rules("vala")
    add_files("src/*.vala")
    add_packages("glib2","gtk3")
