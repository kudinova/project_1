 require 'gtk3'


class SelfCalculator < Gtk::Window

    def initialize
        super
    
        init_ui
    end
    
    def init_ui
    
        vbox = Gtk::Box.new :vertical, 2
            
        vbox.pack_start Gtk::Entry.new, :expand => false, 
            :fill => false, :padding => 0            

        grid = Gtk::Grid.new
        grid.set_property "row-homogeneous", true
        grid.set_property "column-homogeneous", true

        grid.attach Gtk::Button.new(:label => "7"), 0, 0, 1, 1
        grid.attach Gtk::Button.new(:label => "8"), 1, 0, 1, 1
        grid.attach Gtk::Button.new(:label => "9"), 2, 0, 1, 1
        grid.attach Gtk::Button.new(:label => "/"), 3, 0, 1, 1

        grid.attach Gtk::Button.new(:label => "4"), 0, 1, 1, 1
        grid.attach Gtk::Button.new(:label => "5"), 1, 1, 1, 1
        grid.attach Gtk::Button.new(:label => "6"), 2, 1, 1, 1
        grid.attach Gtk::Button.new(:label => "*"), 3, 1, 1, 1

        grid.attach Gtk::Button.new(:label => "1"), 0, 2, 1, 1
        grid.attach Gtk::Button.new(:label => "2"), 1, 2, 1, 1
        grid.attach Gtk::Button.new(:label => "3"), 2, 2, 1, 1
        grid.attach Gtk::Button.new(:label => "-"), 3, 2, 1, 1

        grid.attach Gtk::Button.new(:label => "0"), 0, 3, 1, 1
        grid.attach Gtk::Button.new(:label => "."), 1, 3, 1, 1
        grid.attach Gtk::Button.new(:label => "="), 2, 3, 1, 1
        grid.attach Gtk::Button.new(:label => "+"), 3, 3, 1, 1
        
        vbox.pack_start grid, :expand => true, :fill => true, 
            :padding => 0
        
        add vbox
        
        set_title "glade-previewer"
        signal_connect "destroy" do 
            Gtk.main_quit 
        end        

        set_default_size 300, 250
        set_window_position :center
        
        show_all        
    end
end

Gtk.init
    window = SelfCalculator.new
Gtk.main