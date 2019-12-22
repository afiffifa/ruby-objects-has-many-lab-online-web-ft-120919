class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_post_by_title(title)
    post = Post.new(title, self)
  end

  def posts
    Post.all.select { |post| post.author == self }
  end
  
  def posts_by_title
    authors_posts = []
    Post.all_by_title.each do |post|
      if post.author == self 
        authors_posts << post.title 
      end  
    end
    authors_posts
  end 
end

krt = Author.new("Krauthammer")
ort = Author.new("Orthon")
wes = Author.new("Westmoreland")
mcm = Author.new("McMasterson")

the_everlasting = Post.new("The Everlasting Quagmire", krt)
f_t_l_t = Post.new("For The Last Time")

krt.add_post_by_title("A New Deal")
krt.add_post_by_title("An Old Deal")
krt.add_post_by_title("A Stupid Deal")

ort.add_post_by_title("Somebody's Here")
ort.add_post_by_title("Nobody's Here Today")

wes.add_post_by_title("Chickenhawk Coward")

mcm.add_post_by_title("Better Luck Later On")
mcm.add_post_by_title("Better Afterwards")
mcm.add_post_by_title("The Long War")
mcm.add_post_by_title("I have No Eggs At Home")

the_everlasting.author_name
f_t_l_t.author_name

krt.posts_by_title
