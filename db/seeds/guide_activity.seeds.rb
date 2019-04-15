# guide activity seed
after :guide, :activity do
  100.times do
    guide = Guide.order('RAND()').first
    activity = Activity.order('RAND()').first
    guide.guide_activities.create!(activity: activity)
  end
end
