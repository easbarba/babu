# Initial User
unless User.find_by name: :root
  User.create! name: 'root', surname: 'soil', email: 'root@root.com', password: 'rootroot'
end

# Posts
root = User.find_by name: :root
root.posts.create!(title: 'one',
                   body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec accumsan quam. Aenean imperdiet magna id molestie gravida. Nam nec accumsan tellus. Fusce id cursus nunc. Ut vulputate nunc nisi, euismod scelerisque nisi pharetra vel. Phasellus nec est et purus facilisis scelerisque ac vel diam. Curabitur eget eros in augue luctus ornare quis pharetra massa. Duis vitae blandit elit. Nullam sed augue egestas, posuere ex id, varius turpis. Morbi eu justo leo. Etiam pharetra vulputate mi eget consectetur. Nunc pharetra sapien in eros iaculis, nec laoreet turpis luctus. Sed pharetra lacus ac ligula convallis accumsan. Quisque fermentum semper auctor. Etiam arcu massa, tempus vel sapien sit amet, ornare ultricies quam.')

root.posts.create!(title: 'two',
                   body: 'Curabitur imperdiet, lacus quis commodo mattis, erat justo ullamcorper felis, non aliquet sem purus non turpis. In at egestas nulla. Nunc consectetur condimentum mauris at cursus. Nullam fringilla hendrerit augue, non posuere orci tincidunt vitae. Morbi fringilla scelerisque arcu vitae commodo. In dignissim consectetur tristique. Sed porttitor lacus magna, nec fringilla elit tristique dictum. Cras consectetur porta pulvinar. Vestibulum condimentum a ligula suscipit varius. Sed congue et sapien ac ultricies.')

root.posts.create!(title: 'three',
                   body: 'Vestibulum sed libero vel ipsum blandit iaculis quis congue tellus. Maecenas accumsan nibh id lacinia sollicitudin. In vulputate quis risus a feugiat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus nunc dolor, porta efficitur nibh at, bibendum egestas enim. Curabitur sed varius dui. Fusce placerat sem vitae urna pretium ultrices. Phasellus dictum tortor vel sollicitudin varius. Donec molestie diam nisl, nec convallis nulla mollis vel. Sed pharetra turpis ac urna cursus, sit amet tempus mi sollicitudin. Proin eu tortor vel ligula condimentum volutpat.')

root.posts.create!(title: 'four',
                   body: 'Suspendisse ut est at est feugiat aliquam eu at nulla. Nullam sagittis eget eros tincidunt congue. Nam rutrum velit id malesuada porta. Nulla nec faucibus orci. Mauris nec augue et turpis congue tempor vel eget arcu. Morbi elementum vestibulum placerat. Quisque pharetra lorem id posuere elementum. Vivamus rutrum arcu ac eros mattis condimentum. Duis sit amet vestibulum leo. Suspendisse ac lacus lacinia, condimentum quam ut, auctor ligula. Mauris euismod porttitor erat in interdum. Fusce porta dolor eu metus faucibus posuere ut quis sapien. Nunc at pretium velit. Donec vulputate nunc lacus, et maximus tellus mattis sit amet.')

# Secondary User
unless User.find_by name: :raiz
  User.create! name: 'raiz', surname: 'solo', email: 'raiz@raiz.com', password: 'raizraiz'
end

root = User.find_by name: :raiz

root.posts.create!(title: 'five',
                   body: 'Ut sed est et libero ultrices dignissim. Curabitur condimentum nulla non tortor vulputate dignissim. Quisque dictum purus augue, at auctor dui feugiat nec. Mauris nunc massa, mattis eget pretium eu, cursus sed magna. Etiam sit amet nisl quam. Nam convallis, felis sed posuere finibus, elit nisl tincidunt orci, quis feugiat felis lectus quis nibh. Donec commodo felis nec cursus finibus. Duis non interdum magna.')

root.posts.create!(title: 'six',
                   body: 'Curabitur in odio a erat ornare imperdiet. Nunc convallis laoreet erat, non mollis diam ultrices non. Ut fringilla laoreet arcu. In aliquet lectus consequat nulla blandit, non consectetur felis lacinia. Integer purus dolor, egestas sed lectus a, molestie imperdiet neque. Sed non vulputate sem. Sed metus orci, molestie sed congue sed, ultrices ac neque. Vestibulum euismod lacus a erat tempor, eget lacinia lorem blandit. Maecenas quam tortor, pellentesque quis sodales sit amet, iaculis eu urna. Curabitur varius ante tincidunt ante vulputate malesuada. In posuere, neque ac pretium mollis, leo nibh imperdiet ex, in tincidunt quam lectus sit amet nibh. Donec venenatis nec nulla id egestas. Quisque faucibus sapien urna, sit amet vehicula nunc luctus ac. Nulla porta neque ac pulvinar accumsan. Donec at turpis quis nisl feugiat laoreet. Sed nec scelerisque ante, eget gravida lacus. ')
