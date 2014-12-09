# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


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

Tutor.create(name: "David Heinemeier Hansson")
Tutor.create(name: "Yukihiro Matsumoto")
Tutor.create(name: "_why the lucky stiff")
Tutor.create(name: "Grace Hopper")
Tutor.create(name: "Ada Lovelace")

Tutor.find(1).skills.push(Skill.find(1), Skill.find(2), Skill.find(3), Skill.find(4))
Tutor.find(1).windows.push(Window.find(1), Window.find(2), Window.find(3))

Tutor.find(2).skills.push(Skill.find(3), Skill.find(4), Skill.find(5), Skill.find(6))
Tutor.find(2).windows.push(Window.find(3), Window.find(7), Window.find(11))

Tutor.find(3).skills.push(Skill.find(2), Skill.find(7), Skill.find(12), Skill.find(17))
Tutor.find(3).windows.push(Window.find(5), Window.find(6), Window.find(10))

Tutor.find(4).skills.push(Skill.find(8), Skill.find(4), Skill.find(13), Skill.find(16))
Tutor.find(4).windows.push(Window.find(4), Window.find(7), Window.find(9))

Tutor.find(5).skills.push(Skill.find(1), Skill.find(2), Skill.find(3), Skill.find(7))
Tutor.find(5).windows.push(Window.find(1), Window.find(2), Window.find(3))