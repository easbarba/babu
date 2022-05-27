User.all.destroy_all
Post.all.destroy_all

User.create! name: 'root', surname: 'soil', email: 'root@root.com', password: 'rootroot'
User.create! name: 'raiz', surname: 'solo', email: 'raiz@raiz.com', password: 'raizraiz'
User.create! name: 'foo', surname: 'bar', email: 'foo@bar.com', password: 'foobar'

# Posts
text = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec accumsan quam. Aenean imperdiet magna id molestie gravida. Nam nec accumsan tellus. Fusce id cursus nunc. Ut vulputate nunc nisi, euismod scelerisque nisi pharetra vel. Phasellus nec est et purus facilisis scelerisque ac vel diam. Curabitur eget eros in augue luctus ornare quis pharetra massa. Duis vitae blandit elit. Nullam sed augue egestas, posuere ex id, varius turpis. Morbi eu justo leo. Etiam pharetra vulputate mi eget consectetur. Nunc pharetra sapien in eros iaculis, nec laoreet turpis luctus. Sed pharetra lacus ac ligula convallis accumsan. Quisque fermentum semper auctor. Etiam arcu massa, tempus vel sapien sit amet, ornare ultricies quam.'
users = User.all

50.times do
  users.sample.posts.create! title: "Artigo #{rand(1..101)}",
                             body: text,
                             created_at: rand(365).days.ago
end
