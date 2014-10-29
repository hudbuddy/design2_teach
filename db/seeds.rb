# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
   { email: 'val8819@gmail.com' , password: 'supermom!' },
   { email: 'fakesuper@gmail.com' , password: 'aaaaaaaa' },
   { email: 'fakeadmin@gmail.com' , password: 'aaaaaaaa' },
   { email: 'fakeconsult@gmail.com' , password: 'aaaaaaaa' },
   { email: 'fakeconsult1@gmail.com' , password: 'aaaaaaaa' },
   { email: 'fakeconsult2@gmail.com' , password: 'aaaaaaaa' },
   { email: 'fakeconsult3@gmail.com' , password: 'aaaaaaaa' },
   { email: 'fakeconsult4@gmail.com' , password: 'aaaaaaaa' },
   { email: 'fakeconsult5@gmail.com' , password: 'aaaaaaaa' },
   { email: 'fakeconsult6@gmail.com' , password: 'aaaaaaaa' },
   { email: 'fakeuser@gmail.com' , password: 'aaaaaaaa' },
]);
User.where('user_type');
topics = Topic.create([{ title: 'Pets' }, { title: 'Education' }, { title: 'Animals' }]);
learning_pieces = LearningPiece.create([
    {
      title: 'Learn About Cats In 10 Minutes',
      description_short: 'Just a quick 10 minute video about cat things',
      youtube_url: '//www.youtube.com/embed/Kdgt1ZHkvnM',
      description_long: 'This is a longer description about why this video is about cat things'
    },
    {
      title: 'Learn About Dogs In 5 Minutes',
      description_short: 'Just a quick 5 minute video about dog things',
      youtube_url: '//www.youtube.com/embed/Kdgt1ZHkvnM',
      description_long: 'This is a longer description about why this video is about dog things'
    },
    {
      title: 'Learn About Fish In 7 Minutes',
      description_short: 'Just a quick 7 minute video about fish things',
      youtube_url: '//www.youtube.com/embed/Kdgt1ZHkvnM',
      description_long: 'This is a longer description about why this video is about fish things'
    },
    {
      title: 'Learn About Giraffes In 8 Minutes',
      description_short: 'Just a quick 8 minute video about giraffe things',
      youtube_url: '//www.youtube.com/embed/Kdgt1ZHkvnM',
      description_long: 'This is a longer description about why this video is about giraffe things'
    },
    {
      title: 'Learn About Squid In 46 Minutes',
      description_short: 'Just a quick 46 minute video about squid things',
      youtube_url: '//www.youtube.com/embed/Kdgt1ZHkvnM',
      description_long: 'This is a longer description about why this video is about squid things'
    },
    {
      title: 'Learn About Elephants In 3 Minutes',
      description_short: 'Just a quick 7 minute video about fish things',
      youtube_url: '//www.youtube.com/embed/Kdgt1ZHkvnM',
      description_long: 'This is a longer description about why this video is about fish things'
    },
    {
      title: 'Learn About Tiger In 2 Minutes',
      description_short: 'Just a quick 2 minute video about tiger things',
      youtube_url: '//www.youtube.com/embed/Kdgt1ZHkvnM',
      description_long: 'This is a longer description about why this video is about tiger things'
    },
])
users.each do |u|
  if u.email.include?("val") || u.email.include?("super")
    ut = UserType.create(title: "superadmin")
  elsif u.email.include?("admin")
    ut = UserType.create(title: "admin")
  elsif u.email.include?("consult")
    ut = UserType.create(title: "consultant")
  else
    ut = UserType.create(title: "user")
  end
  u.user_type = ut
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