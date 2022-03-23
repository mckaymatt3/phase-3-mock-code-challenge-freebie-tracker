puts "Creating companies..."
c1 = Company.create(name: "Google", founding_year: 1998)
c2 = Company.create(name: "Facebook", founding_year: 2004)
c3 = Company.create(name: "Dunder Mifflin", founding_year: 2002)
c4 = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
d1 = Dev.create(name: "Rick")
d2 = Dev.create(name: "Morty")
d3 = Dev.create(name: "Mr. Meseeks")
d4 = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
Freebie.create(item_name: "Towelie", value: 60, company: c1, dev: d1)
Freebie.create(item_name: "Hashish", value: 35, company: c1, dev: d2)
Freebie.create(item_name: "Afghan Kush", value: 1, company: c2, dev: d1)
Freebie.create(item_name: "Mango Kush", value: 20, company: c2, dev: d2)
Freebie.create(item_name: "Get A Little Highh", value: 800, company: c2, dev: d3)
Freebie.create(item_name: "Pineapple Express", value: 800, company: c3, dev: d1)

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

puts "Seeding done!"
