# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Destroying"
# User.destroy_all
# Restaurant.destroy_all



p "Create questions"

wedding = Questionnaire.create(name: "Wedding")
wedding.save!

question1 = wedding.questions.create(name: 'Distance', q_body: 'What is your willingness to travel by car from an international airport?')
question1.save!

p "Create answers for 1st question"

answer1_1 = question1.answers.create(name: "A1_1", a_body: "None.")
answer1_1.save!
p "Answer 1 saved"
answer1_2 = question1.answers.create(name: "A1_2", a_body: "Willing to travel less than 1 hour.")
answer1_2.save!
p "Answer 2 saved"
answer1_3 = question1.answers.create(name: "A1_3", a_body: "Willing to travel more than 1 hour (up to 2 hours).")
answer1_3.save!
p "Answer 3 saved"

question2 = wedding.questions.create(name: 'Preference', q_body: 'Do you prefer a...?')
question2.save!

p "Create answers for 2nd question"

answer2_1 = question2.answers.create(name: "A2_1", a_body: "More international and cosmopolitian feel?")
answer2_1.save!
p "Answer 1 saved"
answer2_2 = question2.answers.create(name: "A2_2", a_body: "Or a more traditional Portuguese setting?")
answer2_2.save!
p "Answer 2 saved"


question3 = wedding.questions.create(name: 'Setting', q_body: 'Which setting do you prefer for you wedding location?')
question3.save!

p "Create answers for 3rd question"

answer3_1 = question3.answers.create(name: "A3_1", a_body: "Beach")
answer3_1.save!
p "Answer 1 saved"
answer3_2 = question3.answers.create(name: "A3_2", a_body: "Vineyard")
answer3_2.save!
p "Answer 2 saved"
answer3_3 = question3.answers.create(name: "A3_3", a_body: "Quinta/farmhouse")
answer3_3.save!
p "Answer 3 saved"
answer3_4 = question3.answers.create(name: "A3_4", a_body: "Boutique Hotel")
answer3_4.save!
p "Answer 4 saved"
answer3_5 = question3.answers.create(name: "A3_5", a_body: "Alternative, modern space")
answer3_5.save!
p "Answer 5 saved"
answer3_6 = question3.answers.create(name: "A3_6", a_body: "Glamping, rustic venue")
answer3_6.save!
p "Answer 6 saved"


queston4 = wedding.questions.create(name: 'Weather', q_body: 'What kind of weather do you want on your day?')
queston4.save!

p "Create answers for 4th question"

answer4_1 = queston4.answers.create(name: "A4_1", a_body: "Hot as hot can be!")
answer4_1.save!
p "Answer 1 saved"
answer4_2 = queston4.answers.create(name: "A4_2", a_body: "Sun, we just want sun!")
answer4_2.save!
p "Answer 2 saved"
answer4_3 = queston4.answers.create(name: "A4_3", a_body: "No rain is all we ask.")
answer4_3.save!
p "Answer 3 saved"
answer4_4 = queston4.answers.create(name: "A4_4", a_body: "Doesn't matter to us.")
answer4_4.save!
p "Answer 4 saved"


question5 = wedding.questions.create(name: 'Timing', q_body: 'What time of year are you getting married?')
question5.save!

p "Create answers for 5th question"

answer5_1 = question5.answers.create(name: "A5_1", a_body: "Winter")
answer5_1.save!
p "Answer 1 saved"
answer5_2 = question5.answers.create(name: "A5_2", a_body: "Spring")
answer5_2.save!
p "Answer 2 saved"
answer5_3 = question5.answers.create(name: "A5_3", a_body: "Summer")
answer5_3.save!
p "Answer 3 saved"
answer5_4 = question5.answers.create(name: "A5_4", a_body: "Fall")
answer4_4.save!
p "Answer 4 saved"

question6 = wedding.questions.create(name: 'Location', q_body: 'Do you prefer to be...?')
question6.save!

p "Create answers for 6th question"

answer6_1 = question6.answers.create(name: "A6_1", a_body: "Off the beaten path?")
answer6_1.save!
p "Answer 1 saved"
answer6_2 = question6.answers.create(name: "A6_2", a_body: "Or on the well worn path?")
answer6_2.save!
p "Answer 2 saved"

p "Seeded"
