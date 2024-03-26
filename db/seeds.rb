User.create!(
  email: 'test@example.com',
  password: 'password',
  admin: true
)

User.create!(
  email: 'johnt@doe.com',
  password: 'password',
  admin: false
)
