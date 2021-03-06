# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: 'Topic #{topic}'
  )
end

puts "3 Topics Created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
    doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis
    et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia v
    oluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui
    ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia
    dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora
    incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam,
    quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea
    commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit
    esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas
    nulla pariatur?",
    topic_id: Topic.last.id
  )
end

puts "10 blog Posts Created"

5.times do |skills|
  Skill.create!(
    title: "Rails #{skills}",
    percent_utilized: 15
  )
end

puts "5 Skills Created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio item: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "ed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
    doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis
    et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia v
    oluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui
    ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia
    dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora
    incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam,
    quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea
    commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit
    esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas
    nulla pariatur?",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "8 Portfolios Created"

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio item: #{portfolio_item}",
    subtitle: "Angular",
    body: "ed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
    doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis
    et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia v
    oluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui
    ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia
    dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora
    incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam,
    quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea
    commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit
    esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas
    nulla pariatur?",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "1 Portfolios Created"

3. times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology  #{technology}"
  )
end

puts '3 Technologies Created'
