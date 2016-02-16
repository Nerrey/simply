task :user_add, [:param] => :environment do |task, args| 
  User.create(email: "ns@enknight.com", password: "12345678")
end