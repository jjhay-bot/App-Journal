# SAMPLES y
User.destroy_all
Category.destroy_all

user1 = User.create!(email: "admin1@mail.com",password: "admin1", password_confirmation: "admin1")

c1 = user1.categories.create(category: 'School', content: 'anything related to school activities ')

c1.tasks.create(name: 'Email', description: 'Remind product delivery', category_id: c1.id, schedule: Date.today)
c1.tasks.create(name: 'Checking', description: 'Check progress of new items', category_id: c1.id, schedule: Date.today+1.day)
c1.tasks.create(name: 'Category Sample', description: 'Category desc', category_id: c1.id, schedule: Date.today+1.day)
c1.tasks.create(name: 'Interview', description: 'Remind product delivery', category_id: c1.id, schedule: Date.today)
c1.tasks.create(name: 'HR interview', description: 'Check progress of new items', category_id: c1.id, schedule: Date.today+1.day)
c1.tasks.create(name: 'Skill test', description: 'Category desc', category_id: c1.id, schedule: Date.today+1.day)