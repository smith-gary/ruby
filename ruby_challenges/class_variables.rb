class Beans

    @@total_beans = 0

    def initialize
        @@total_beans += 1
    end

    def self.current_count
        puts "There are currently #{@@total_beans} instance of my Beans class."
    end
end

Beans.current_count
puts Beans.inspect