# typed: strict

require 'ffaker'

equipment =[]
5.times do
  equipment << Helmet.create!(
    ventilation_type: %w[Passive Active].sample,
    has_audio_support: [true, false].sample,
    certifications: "ASTM #{rand(100..500)}",
  )
end

5.times do
  equipment << Ski.create!(
    sidecut_radius: rand(10.0..25.0).round(2),
    waist_width: rand(70..100),
    binding_type: %w[Fixed Adjustable].sample,
    is_twin_tip: [true, false].sample,
    core_type: %w[Wood Carbon Hybrid].sample,
    recommended_min_weight: rand(40..60),
    recommended_max_weight: rand(70..100)
  )
end

5.times do
  equipment << Snowboard.create!(
    shape: %w[Directional Twin Hybrid].sample,
    flex: %w[Soft Medium Stiff].sample,
    profile: %w[Camber Rocker Flat].sample,
    recommended_min_weight: rand(40..60),
    recommended_max_weight: rand(70..100)
  )
end

equipment.each do |e|
  Equipment.create!(
    storable_type: e.class.name,
    storable_id: e.id,
    size: %w[Small Medium Large].sample,
    color: FFaker::Color.name,
    brand: FFaker::Company.name,
    model: "Model-#{rand(1000..9999)}",
    article_number: Array.new(10) { rand(36).to_s(36) }.join.upcase,
    description: FFaker::Lorem.sentence,
    material: %w[Plastic Metal Wood].sample,
    weight: rand(1..10),
    purpose: %w[Skiing Snowboarding].sample
  )
end


puts "Seeding complete!"