# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bill.delete_all

  rand(10..20).times do
    Bill.create!(service: "SBP",
      reference_number: "SBP" + Time.now.to_i.to_s,
      amount: rand(1..10),
      mpesa_number: ["0728592629", "0720967297", "0721523997", "0722941572"].sample,
      contact_number: ["0728592629", "0720967297", "0721523997", "0722941572"].sample,
      email: ["crispin@gmail.com", "mwangi@nouveta.tech", "hezron@nouveta.tech", "patrick@nouveta.tech"].sample,
      payment_mode: ["Mpesa", "Card"].sample
      # due_date: [Date.today + rand(-2..5)],
    )
  end
  rand(10..20).times do
    Bill.create!(service: "LR",
      reference_number: "LR" + Time.now.to_i.to_s,
      amount: rand(1..10),
      mpesa_number: ["0728592629", "0720967297", "0721523997", "0722941572"].sample,
      contact_number: ["0728592629", "0720967297", "0721523997", "0722941572"].sample,
      email: ["crispin@gmail.com", "mwangi@nouveta.tech", "hezron@nouveta.tech", "patrick@nouveta.tech"].sample,
      payment_mode: ["Mpesa", "Card"].sample
      # due_date: [Date.today + rand(-2..5)],
    )
  end
  rand(10..20).times do
    Bill.create!(service: "AD",
      reference_number: "AD" + Time.now.to_i.to_s,
      amount: rand(1..10),
      ad_type: ["Billboard", "Petrol Station", "Bus Stop"].sample,
      location: ["0.06..34.2861", "0.06..30.2861", "0.034..44.2861", "0.06..36.2861"].sample,
      mpesa_number: ["0728592629", "0720967297", "0721523997", "0722941572"].sample,
      contact_number: ["0728592629", "0720967297", "0721523997", "0722941572"].sample,
      email: ["crispin@gmail.com", "mwangi@nouveta.tech", "hezron@nouveta.tech", "patrick@nouveta.tech"].sample,
      payment_mode: ["Mpesa", "Card"].sample
      # due_date: [Date.today + rand(-2..5)],
    )
  end
  rand(10..20).times do
    Bill.create!(service: "LZ",
      reference_number: "LZ" + Time.now.to_i.to_s,
      amount: rand(1..10),
      street: ["Hospital Rd", "Stima Rd", "Court Rd"].sample,
      desc: ["ATM", "Equity Bank", "Siaya Supermarket"].sample,
      mpesa_number: ["0728592629", "0720967297", "0721523997", "0722941572"].sample,
      contact_number: ["0728592629", "0720967297", "0721523997", "0722941572"].sample,
      email: ["crispin@gmail.com", "mwangi@nouveta.tech", "hezron@nouveta.tech", "patrick@nouveta.tech"].sample,
      payment_mode: ["Mpesa", "Card"].sample
      # due_date: [Date.today + rand(-2..5)],
    )
  end

Bill.all.each do |var|
  var.update(user_action: "Invoiced", status: ["STK Request", "Paid", "Failed"].sample, channel_used: ["Mpesa" , "SMS", "Email"].sample)
end

Bill.where(status: "Paid").each do |var|
  var.update(channel_response: (0...8).map { (65 + rand(26)).chr }.join)
end

Bill.all.update(due_date: "2018-11-30")
