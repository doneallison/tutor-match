# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tutor.create(name: "David Heinemeier Hansson")
Tutor.create(name: "Yukihiro Matsumoto")
Tutor.create(name: "_why the lucky stiff")
Tutor.create(name: "Grace Hopper")
Tutor.create(name: "Ada Lovelace")

Tutor.find(1).skills.push(skill.find(1), skill.find(2), skill.find(3), skill.find(4))
Tutor.find(1).windows.push(window.find(1), window.find(2), window.find(3))

Tutor.find(2).skills.push(skill.find(3), skill.find(4), skill.find(5), skill.find(6))
Tutor.find(2).windows.push(window.find(3), window.find(7), window.find(11))

Tutor.find(3).skills.push(skill.find(2), skill.find(7), skill.find(12), skill.find(17))
Tutor.find(3).windows.push(window.find(5), window.find(6), window.find(10))

Tutor.find(4).skills.push(skill.find(8), skill.find(4), skill.find(13), skill.find(16))
Tutor.find(4).windows.push(window.find(4), window.find(7), window.find(9))

Tutor.find(5).skills.push(skill.find(1), skill.find(2), skill.find(3), skill.find(7))
Tutor.find(5).windows.push(window.find(1), window.find(2), window.find(3))

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