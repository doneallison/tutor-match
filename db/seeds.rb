# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(name: "Don Allison", email: "doneallison@gmail.com", slack: "doneallison", github: "doneallison", uid: "3227364", image: "https://avatars.githubusercontent.com/u/3227364?v=3")

Tutor.create(name: "Don Allison", uid: "3227364", image: "https://avatars.githubusercontent.com/u/3227364?v=3")

TutorSkill.create(tutor_id: 1, skill_id: 1)
TutorSkill.create(tutor_id: 1, skill_id: 2)
TutorSkill.create(tutor_id: 1, skill_id: 3)

TutorWindow.create(tutor_id: 1, window_id: 1)
TutorWindow.create(tutor_id: 1, window_id: 2)
TutorWindow.create(tutor_id: 1, window_id: 3)
TutorWindow.create(tutor_id: 1, window_id: 4)
TutorWindow.create(tutor_id: 1, window_id: 5)
TutorWindow.create(tutor_id: 1, window_id: 6)
TutorWindow.create(tutor_id: 1, window_id: 7)
TutorWindow.create(tutor_id: 1, window_id: 8)
TutorWindow.create(tutor_id: 1, window_id: 10)
TutorWindow.create(tutor_id: 1, window_id: 11)
TutorWindow.create(tutor_id: 1, window_id: 12)

Window.create(name: "Sunday Morning")
Window.create(name: "Sunday Afternoon")
Window.create(name: "Sunday Night")
Window.create(name: "Monday Night")
Window.create(name: "Tuesday Night")
Window.create(name: "Wednesday Night")
Window.create(name: "Thursday Night")
Window.create(name: "Friday Night")
Window.create(name: "Saturday Morning")
Window.create(name: "Saturday Afternoon")
Window.create(name: "Saturday Night")

Skill.create(name: "Git")
Skill.create(name: "Environment")
Skill.create(name: "Bash")
Skill.create(name: "Ruby")
Skill.create(name: "CLI")
Skill.create(name: "Scraping")
Skill.create(name: "Testing")
Skill.create(name: "SQL")
Skill.create(name: "Rake")
Skill.create(name: "ORMs")
Skill.create(name: "Rack")
Skill.create(name: "ERB")
Skill.create(name: "Sinatra")
Skill.create(name: "Rails")
Skill.create(name: "JavaScript")
Skill.create(name: "jQuery")
Skill.create(name: "Ajax")