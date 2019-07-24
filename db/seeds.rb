# servicesname = %w(Corte de Energia, Reestabelecer Energia, Manutenção de Energia, Instalar Gerador )
# User.create  email: 'admin@control.eng.br', password: 123456

# 4.times do |i|
#     Service.create!(
#       name: servicesname.shuffle.first,
#       description: Faker::Lorem.sentence(10),
#       price: rand(1..10000),
#       user: User.all.sample
#       )
#     end

# 10.times do |i|
#     OrderService.create!(
#       service: Service.all.sample ,
#       amount: rand(1..100),
#       employee: Faker::Name.name,
#       date:  Faker::Date.between(2.days.ago, Date.today),
#       starttime: Faker::Time.between(2.days.ago, Date.today, :all),
#       endtime: Faker::Time.between(2.days.ago, Date.today, :all),
#       detail: Faker::Lorem.sentence(10),
#       user: User.all.sample
#     )
#     end