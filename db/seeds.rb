# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

userTypes = UserType.create([{ title: 'superadmin' }, { title: 'admin' }, { title: 'consultant' }, { title: 'user' }]);
topics = Topic.create([{ title: 'Pets' }, { title: 'Education' }, { title: 'Animals' }]);
users = User.create([
   { email: 'val8819@gmail.com' , password: 'supermom!', user_type_id: 1 },
   { email: 'fakesuper@gmail.com' , password: 'aaaaaaaa', user_type_id: 1 },
   { email: 'fakeadmin@gmail.com' , password: 'aaaaaaaa', user_type_id: 2 },
   { email: 'fakeconsult@gmail.com' , password: 'aaaaaaaa', user_type_id: 3 },
   { email: 'fakeconsult1@gmail.com' , password: 'aaaaaaaa', user_type_id: 3 },
   { email: 'fakeconsult2@gmail.com' , password: 'aaaaaaaa', user_type_id: 3 },
   { email: 'fakeconsult3@gmail.com' , password: 'aaaaaaaa', user_type_id: 3 },
   { email: 'fakeconsult4@gmail.com' , password: 'aaaaaaaa', user_type_id: 3 },
   { email: 'fakeconsult5@gmail.com' , password: 'aaaaaaaa', user_type_id: 3 },
   { email: 'fakeconsult6@gmail.com' , password: 'aaaaaaaa', user_type_id: 3 },
   { email: 'fakeuser@gmail.com' , password: 'aaaaaaaa', user_type_id: 4 },
]);
learning_pieces = LearningPiece.create([])
users.each do |u|
  u.profile = Profile.create()
end

learning_pieces.each do |lp|
  lp.user = User.find(1)
  lp.topics << Topic.all;
end

products = Product.create([
    {
      title: 'Cool Website',
      url: 'http://artiklur.com',
      description: 'This is a speed reader website. Made by a cool dude I\'m told',
      picture_url: 'http://placecreature.com//1200/800'
    },
    {
      title: 'Rad Website',
      url: 'http://artiklur.com',
      description: 'This is a speed reader website. Made by a cool dude I\'m told',
      picture_url: 'http://placecreature.com//1200/800'
    },
    {
      title: 'Neat Website',
      url: 'http://artiklur.com',
      description: 'This is a speed reader website. Made by a cool dude I\'m told',
      picture_url: 'http://placecreature.com//1200/800'
    },
    {
      title: 'Lame Website',
      url: 'http://disney.com',
      description: 'This is not a speed reader website. Made by a lame dude I\'m told',
      picture_url: 'http://placecreature.com//1200/800'
    },
])