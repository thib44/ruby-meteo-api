40.times do
  Meteo.create(
    temperature: rand(-10..40),
    pressure: rand(1000..1020),
    humidity: rand(40.. 80)
  )
end
