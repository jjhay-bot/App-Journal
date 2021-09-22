# SAMPLES y
User.destroy_all
Category.destroy_all

user1 = User.create!(email: "user1@mail.com",password: "123qwe", password_confirmation: "123qwe")

c1 = user1.categories.create(category: 'School', content: 'anything related to school activities ')

c1.tasks.create(name: 'Email', description: 'Remind product delivery', category_id: c1.id, schedule: Date.today)
c1.tasks.create(name: 'Checking', description: 'Check progress of new items', category_id: c1.id, schedule: Date.today+1.day)
c1.tasks.create(name: 'Category Sample', description: 'Category desc', category_id: c1.id, schedule: Date.today+1.day)

