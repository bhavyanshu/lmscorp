# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plan.create(plan_level: 'legacy')
Plan.create(plan_level: 'custom')
Plan.create(plan_level: 'basic')
Plan.create(plan_level: 'plus')
Plan.create(plan_level: 'growth')
Plan.create(plan_level: 'enterprise')
