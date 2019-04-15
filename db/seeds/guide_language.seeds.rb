# guide activity seed
after :guide, :language do
  100.times do
    guide = Guide.order('RAND()').first
    language = Language.order('RAND()').first
    guide.guide_languages.create!(language: language)
  end
end
