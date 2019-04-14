# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Create examle

guide = Guide.create!(email: 'phanthanhhai07t1@gmail.com')

language = Language.create!(code: 'en')

activity = Activity.create!(name: 'Football')

# guide has many language
GuideLanguage.create!(guide: guide, language: language)
# guide has many activity
GuideActivity.create!(guide: guide, activity: activity)

