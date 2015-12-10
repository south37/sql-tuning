100000.times.each_with_index do |i|
  profile = Profile.create(
    tall: (rand > 0.5),
    wide: (rand > 0.5),
    male: (rand > 0.5),
    heavy: (rand > 0.5),
    long: (rand > 0.5),
    fast: (rand > 0.5),
  )
  p i, profile
end
