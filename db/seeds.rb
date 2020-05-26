# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plan.create(name: "free", price: 0)
Plan.create(name: "basic", price: 5)
Plan.create(name: "pro", price: 10)

users_list = [
  ["test1@gmail.com", "12345678", 3, "cus_Fv021PJEScLYaY"],
  ["test2@gmail.com", "12345678", 3, "cus_Fv021PJEScLYbY"],
  ["test3@gmail.com", "12345678", 3, "cus_Fv021PJEScLYcY"],
  ["test4@gmail.com", "12345678", 3, "cus_Fv021PJEScLYdY"],
  ["test5@gmail.com", "12345678", 3, "cus_Fv021PJEScLYeY"],
  ["test6@gmail.com", "12345678", 3, "cus_Fv021PJEScLYfY"],
  ["test7@gmail.com", "12345678", 3, "cus_Fv021PJEScLYgY"],
  ["test8@gmail.com", "12345678", 3, "cus_Fv021PJEScLYiY"],
  ["test9@gmail.com", "12345678", 3, "cus_Fv021PJEScLYjY"],
  ["test10@gmail.com", "12345678", 2, "cus_Fv021PJEScLYkY"],
  ["test11@gmail.com", "12345678", 2, "cus_Fv021PJEScLYlY"],
  ["test12@gmail.com", "12345678", 2, "cus_Fv021PJEScLYmY"],
  ["test14@gmail.com", "12345678", 2, "cus_Fv021PJEScLYnY"],
  ["test15@gmail.com", "12345678", 2, "cus_Fv021PJEScLYoY"],
  ["test16@gmail.com", "12345678", 2, "cus_Fv021PJEScLYpY"],
  ["test17@gmail.com", "12345678", 2, "cus_Fv021PJEScLYqY"],
  ["test18@gmail.com", "12345678", 2, "cus_Fv021PJEScLYrY"],
  ["test19@gmail.com", "12345678", 2, "cus_Fv021PJEScLYsY"],
  ["test20@gmail.com", "12345678", 2, "cus_Fv021PJEScLYtY"],
  ["test21@gmail.com", "12345678", 2, "cus_Fv021PJEScLYuY"],
  ["test22@gmail.com", "12345678", 2, "cus_Fv021PJEScLYvY"],
  ["test23@gmail.com", "12345678", 2, "cus_Fv021PJEScLYwY"],
  ["test24@gmail.com", "12345678", 2, "cus_Fv021PJEScLYxY"],
  ["test25@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwia"],
  ["test26@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwib"],
  ["test27@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwic"],
  ["test28@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwid"],
  ["test29@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwie"],
  ["test30@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwif"],
  ["test31@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwig"],
  ["test32@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwih"],
  ["test33@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwii"],
  ["test34@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwij"],
  ["test35@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwik"],
  ["test36@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwil"],
  ["test37@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwim"],
  ["test38@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwin"],
  ["test39@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwio"],
  ["test40@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwip"],
  ["test41@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwiq"],
  ["test42@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwir"],
  ["test43@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwis"],
  ["test44@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwit"],
  ["test45@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwiu"],
  ["test46@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwiv"],
  ["test47@gmail.com", "12345678", 2, "cus_Tyusijdiiwjwiw"],
  ["test48@gmail.com", "12345678", 3, "cus_Tyusijdiiwjwix"],
  ["test49@gmail.com", "12345678", 3, "cus_Tyusijdiiwjwiy"],
  ["test50@gmail.com", "12345678", 3, "cus_Tyusijdiiwjwiz"],
  ["test51@gmail.com", "12345678", 3, "cus_Tyusijdaiwjwiw"],
  ["test52@gmail.com", "12345678", 3, "cus_Tyusijdbiwjwiw"],
  ["test53@gmail.com", "12345678", 3, "cus_Tyusijdciwjwiw"],
  ["test54@gmail.com", "12345678", 3, "cus_Tyusijddiwjwiw"],
  ["test55@gmail.com", "12345678", 3, "cus_Tyusijdeiwjwiw"],
  ["test56@gmail.com", "12345678", 3, "cus_Tyusijdfiwjwiw"],
  ["test57@gmail.com", "12345678", 3, "cus_Tyusijdgiwjwiw"],
  ["test58@gmail.com", "12345678", 3, "cus_Tyusijdhiwjwiw"],
  ["test59@gmail.com", "12345678", 3, "cus_Tyusijdiiwjwiw"],
  ["test60@gmail.com", "12345678", 3, "cus_Tyusijdjiwjwiw"],
  ["test61@gmail.com", "12345678", 3, "cus_Tyusijdkiwjwiw"],
  ["test62@gmail.com", "12345678", 3, "cus_Tyusijdliwjwiw"],
  ["test63@gmail.com", "12345678", 3, "cus_Tyusijdmiwjwiw"],
  ["test64@gmail.com", "12345678", 3, "cus_Tyusijdniwjwiw"],
  ["test65@gmail.com", "12345678", 3, "cus_Tyusijdoiwjwiw"],
  ["test66@gmail.com", "12345678", 3, "cus_Tyusijdpiwjwiw"],
  ["test67@gmail.com", "12345678", 3, "cus_Tyusijdqiwjwiw"],
  ["test68@gmail.com", "12345678", 3, "cus_Tyusijdriwjwiw"],
  ["test69@gmail.com", "12345678", 1, ""],
  ["test70@gmail.com", "12345678", 1, ""],
  ["test71@gmail.com", "12345678", 1, ""],
  ["test72@gmail.com", "12345678", 1, ""],
  ["test73@gmail.com", "12345678", 1, ""],
  ["test74@gmail.com", "12345678", 1, ""],
  ["test75@gmail.com", "12345678", 1, ""],
  ["test76@gmail.com", "12345678", 1, ""],
  ["test77@gmail.com", "12345678", 1, ""],
  ["test78@gmail.com", "12345678", 1, ""],
  ["test79@gmail.com", "12345678", 1, ""],
  ["test80@gmail.com", "12345678", 1, ""],
  ["test81@gmail.com", "12345678", 1, ""],
  ["test82@gmail.com", "12345678", 1, ""],
  ["test83@gmail.com", "12345678", 1, ""],
  ["test84@gmail.com", "12345678", 1, ""],
  ["test85@gmail.com", "12345678", 1, ""],
  ["test86@gmail.com", "12345678", 1, ""],
  ["test87@gmail.com", "12345678", 1, ""],
  ["test88@gmail.com", "12345678", 1, ""],
  ["test89@gmail.com", "12345678", 1, ""],
  ["test90@gmail.com", "12345678", 1, ""],
  ["test91@gmail.com", "12345678", 1, ""],
  ["test92@gmail.com", "12345678", 1, ""],
  ["test94@gmail.com", "12345678", 1, ""],
  ["test95@gmail.com", "12345678", 1, ""],
  ["test96@gmail.com", "12345678", 1, ""],
  ["test97@gmail.com", "12345678", 1, ""],
  ["test98@gmail.com", "12345678", 1, ""],
  ["test99@gmail.com", "12345678", 1, ""],
  ["test100@gmail.com", "12345678", 1, ""]
]


users_list.each do  |email, password_digest, plan_id, stripe|
  User.create(email: email, password_disgest: password_digest, plan_id: plan_id, stripe_customer_token: stripe)
end  

profiles_list = [
  ["Ben"]
]