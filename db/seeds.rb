User.destroy_all
Stream.destroy_all
Post.destroy_all

u1 = User.create(:email => 'jen@leveltwo.com.au')
u2 = User.create(:email => 'beccy@gmail.com')

s1 = Stream.create(:name => "Jen and Bec's Awesome Stream")

p1 = Post.create(:title => "This is Post 1!", :message => "This is awesome", :url => "http://www.google.com")
p2 = Post.create(:title => "This is Post 2!", :message => "I love this", :url => "http://www.google.com")
p3 = Post.create(:title => "This is Post 3!", :message => "OMG!", :url => "http://www.google.com")
p4 = Post.create(:title => "This is Post 4!", :message => "My fave thing right now", :url => "http://www.google.com")
p5 = Post.create(:title => "This is Post 5!", :message => "Can't believe it", :url => "http://www.google.com")

s1 << u1
s1 << u2
s1 << p1
s1 << p2
s1 << p3
s1 << p4
s1 << p5