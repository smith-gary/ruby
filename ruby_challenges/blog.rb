class BlogCount

    @@all_blog_posts = []
    @@numb_blog_posts = 0

    def self.all
        @@all_blog_posts
    end

    def self.add(thing)
        @@all_blog_posts << thing
        @@numb_blog_posts += 1
    end

    def self.publish
        @@all_blog_posts.each do |post|
            puts "Title:\n #{post.title}"
            puts "Body:\n #{post.content}"
            puts "Published:\n #{post.created}"
        end
    end
end


class BlogTemplate < BlogCount

    def self.create
        post = new
        puts "Whats the title: "
        post.title = gets.chomp
        puts "Whats going to be in it: "
        post.content = gets.chomp
        post.created = Time.now
        post.save
        puts "Would you be so kind to share another? [Y/N]"
        create if gets.chomp.downcase == 'y'
    end

    def title
        @title
    end
    def title= (title)
        @title = title
    end

    def created
        @created
    end
    def created= (created)
        @created = created
    end

    def content
        @content
    end
    def content= (content)
        @content = content
    end

    def save
        BlogTemplate.add(self)
    end

end

BlogTemplate.create
all_blog_posts = BlogTemplate.all
puts all_blog_posts.inspect
BlogTemplate.publish