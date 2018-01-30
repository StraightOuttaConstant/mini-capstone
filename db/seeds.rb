Supplier.create!([
  {name: "Big Bob's Novelty Emporium", email: "bigbob@emporium.com", phone_number: "312-555-0864"},
  {name: "Ted's Toys and Stuff", email: "ted@gmail.com", phone_number: "818-555-1357"},
  {name: "Phil's Van Down By the River", email: "van4627@yahoo.com", phone_number: "444-van-dude"}
])
Product.create!([
  {name: "Lightsaber", price: "270.1", description: "Part laser, part samuri sword, all awesome. The lightsaber is an elogant weapon for a more civilized age, not nearly as clumsy as a blaster", supplier_id: 3},
  {name: "WNYX Mug", price: "1.5", description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", supplier_id: 1},
  {name: "Space Cowboy Laser Gun", price: "170.89", description: "This weapon has no other description than, Shiney!", supplier_id: 2},
  {name: "DnD Dice set", price: "57.5", description: "Take down mighty dragons with this timeless set of 20 sided wonders", supplier_id: 3},
  {name: "Sonic Screwdriver", price: "8.99", description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", supplier_id: 3}
])
