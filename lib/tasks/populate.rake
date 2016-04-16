namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'faker'

      [Category, Post].each(&:delete_all)

      8.times do       
        Category.create!(
          :name => Faker::Hacker.noun
        )
      end
	

      50.times do       
        Post.create!(

          :title => Faker::Lorem.sentence(2, true),
          :description => Faker::Lorem.paragraph(sentence_count = 2),
          :format_post => "new",
          :image  => "http://demo.themeregion.com/newspress-v2/images/post/rising/1.jpg"
        )
      end
      30.times do       
        Post.create!(

          :title => Faker::Lorem.sentence(2, true),
          :description => Faker::Lorem.paragraph(sentence_count = 2),
          :format_post => "hot",
          :image  => "http://demo.themeregion.com/newspress-v2/images/post/sports/2.jpg"
        )
      end
      20.times do       
        Post.create!(

          :title => Faker::Lorem.sentence(2, true),
          :description => Faker::Lorem.paragraph(sentence_count = 2),
          :format_post => "rising",
          :image  => "http://demo.themeregion.com/newspress-v2/images/post/w2.jpg"
        )
      end
  end
end

