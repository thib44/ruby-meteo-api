40.times do
  Meteo.create(
    temperature: rand(-10..40),
    pressure: rand(100000..102000),
    humidity: rand(40.. 80)
  )
end
