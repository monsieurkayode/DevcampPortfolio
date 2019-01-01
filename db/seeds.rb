puts 'Seeding database....'

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog + 1}",
    body: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem 
      accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab 
      illo inventore veritatis et quasi architecto beatae vitae dicta sunt 
      explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut 
      odit aut fugit, sed quia consequuntur magni dolores eos qui ratione 
      voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum 
      quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam 
      eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat 
      voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam 
      corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? 
      Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam 
      nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas 
      nulla pariatur?'
  )
end

puts '10 blog posts created!'

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill + 1}",
    percent_utilized: rand(100)
  )
end

puts '5 skills created!'

9.times do |portfolio_item|
  Portfolio.create!(
    title: "My Portfolio Title #{portfolio_item + 1}",
    subtitle: 'My great service',
    body: "Lorem ipsum dolor sit amet ut perspiciatis unde omnis iste natus
      accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab 
      illo inventore veritatis et quasi architecto beatae vitae dicta sunt 
      explicabo.",
    main_image: 'https://via.placeholder.com/600x400',
    thumb_image: 'https://via.placeholder.com/350x200',
  )
end

puts '9 portfolios created!'
puts 'Database seeding complete'
