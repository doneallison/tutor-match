# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(name: "Tom Cohenno", email: "tomcohenno@gmail.com", slack: "tomcohenno", github: "tomcohenno", bio: "I'm a baller.")

Student.create(name: "Donny-o", email: "donnyo@gmail.com", slack: "donnyo", github: "donnyo", bio: "me from massachusets")

Student.create(name: "Rodrigo", email: "rodd@gmail.com", slack: "rodrigofigueroa", github: "bidah", bio: "right here")

Tutor.create(name: "Tristan Siegel", email: "tristan@flatironschool.com", slack: "tristansiegel", github: "tristansiegel", bio: "My glasses are smaller now.", flatiron_class: "Ruby005", employer: "The Flatiron School")

Tutor.create(name: "Mr. Einstein", email: "relativityrocks@space.com", slack: "einstein", github: "einstein", bio: "i'm arguably the smartest person in the last century", flatiron_class: "Ruby000", employer: "i'm dead now")

Appointment.create(start_time: "2014-12-02 20:00:00 UTC", end_time: "2014-12-02 23:00:00 UTC")

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