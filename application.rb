require 'gtk3'
window = Gtk::Window.new
window.signal_connect(:destroy) { Gtk.main_quit }
window.show
Gtk.main