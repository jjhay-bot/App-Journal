# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


m1 = Category.create(category: 'School', content: 'anything related to school activities ')

Task.create(name: 'Meeting', description: 'Attend meeting at 7pm today', category_id: m1.id, status: 'pending', schedule: '2021-08-06' )
Task.create(name: 'Project Proposal', description: 'Deadline of project proposal tomorrow', category_id: m1.id, status: 'pending', schedule: '2021-08-07' )
Task.create(name: 'Sample Task', description: 'Taskdesc', category_id: m1.id, status: 'pending', schedule: '2021-08-07' )


m2 = Category.create(category: 'Office', content: 'anything related to office work')

Task.create(name: 'Email', description: 'Remind product delivery', category_id: m2.id, status: 'pending', schedule: '2021-08-08')
Task.create(name: 'Checking', description: 'Check progress of new items', category_id: m2.id, status: 'pending', schedule: '2021-08-08')
Task.create(name: 'Category Sample', description: 'Category desc', category_id: m2.id, status: 'ongoing', schedule: '2021-08-08')
