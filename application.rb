require 'gtk3'

builder = Gtk::Builder.new(file: 'myapp.glade')

win = builder.get_object('win')
button = builder.get_object('button')

# [✕] が押された時にアプリを終了する
def on_win_destroy
  Gtk.main_quit
end

# ボタンがクリックされた時にターミナルに出力する
@counter = 0
def on_button_clicked
  puts "やあ、君はボタンを#{@counter}回押したね！"
  @counter += 1
end

builder.connect_signals { |handler| method(handler) } # handler は String

win.show_all
Gtk.main