require 'rails_helper'

describe Contact do
  it { should validate_presence_of :email }
  it { should validate_presence_of :text }
end












   # START TEST
# rspec contact_spec.rb ----- pokazywaep putь

# rake spec
# bundle exec rspec 
