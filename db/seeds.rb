# Create product types
ProductType.create({ name: 'eBooks' }) if ProductType.where(name: 'eBooks').blank?

# Add country code
country_codes = {
  'India' => 91,
  'Afghanistan' => 93,
  'Albania' => 355,
  'Algeria' => 213,
  'Australia' => 61,
  'Saudi Arabia' => 966,
  'United Arab Emirates' => 971,
  'United Kingdom' => 44,
  'United States' => 1,
  'Syria' => 963,
  'Switzerland' => 41,
  'New Zealand' => 64,
  'Iraq' => 964,
  'Iran' => 98
}

country_codes.each do |name, code|
  CountryCode.create({ name: name, code: code }) if CountryCode.where(name: name).blank?
end

india_code = CountryCode.where(name: 'India').first

# Create admin user
if User.where(email: '1991sahilchopra@gmail.com').blank?
  user_params = {
    email: '1991sahilchopra@gmail.com',
    password: 'admin123',
    admin_role: true,
    user_role: false,
    name: 'Admin',
    cellphone: '9478294301',
    country_code_id: india_code.id
  }
  User.create(user_params)
end



# Create admin user
if User.where(email: 'techopra@gmail.com').blank?
  user_params = {
    email: 'techopra@gmail.com',
    password: 'admin123',
    admin_role: false,
    user_role: true,
    name: 'User',
    cellphone: '9463412393',
    country_code_id: india_code.id
  }
  User.create(user_params)
end