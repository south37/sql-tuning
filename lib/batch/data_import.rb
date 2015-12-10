COMPANY_SIZE = 10_000
JOB_SIZE = 50_000
USER_SIZE = 500_000
PROFILE_SIZE = 10_000
TOURIST_SPOT_SIZE = 100_000
PAGE_VIEW_SIZE = 500_000

COUNTRIES = ['japan', 'united_states', 'britain', 'china', 'germany', 'russia'] + (COMPANY_SIZE - 6).times.map { |i| "country_#{i}" }

COMPANY_SIZE.times do
  Company.create(country: COUNTRIES.sample(1).first)
end

company_ids = Company.pluck(:id)
JOB_SIZE.times do
  job = Job.create(company_id: company_ids.sample(1).first)
  job.id_without_index = job.id
  job.save
end

USER_SIZE.times do
  User.create(registered: (rand < 0.1))
end

user_ids = User.pluck(:id)
PROFILE_SIZE.times.with_index do |i|
  email = "sample_#{i}@wantedly.com"
  Profile.create(
    user_id: user_ids.sample(1).first,
    email:   email,
    gender:  (rand < 0.5) ? 'male' : 'female',
  )
  BoxerProfile.create(
    gender: (rand < 0.9) ? 'male' : 'female'
  )
  ProfilesWithIndexesOnExpression.create(
    email: email,
  )
end

TOURIST_SPOT_SIZE.times.with_index do |i|
  params = {
    name:    "spot_#{i}",
    country: COUNTRIES.sample(1).first,
    city:    "city_#{i}",
  }
  TouristSpot.create(params)
  TouristSpotWithoutMultipleIndex.create(params)
end

PAGE_VIEW_SIZE.times do
  viewed_at = Time.now
  PageViewLog.create(viewed_at: viewed_at);
  PageViewLogWithIndex.create(viewed_at: viewed_at);
end
