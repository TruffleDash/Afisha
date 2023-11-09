task :create_admin => :environment do
  admin = User.create(role: "admin", email: "admintest@gmail.com", password: SecureRandom.hex(8))
  puts "Your login - #{admin.email}, password - #{admin.password}"
end