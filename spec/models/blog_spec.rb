require 'rails_helper'

RSpec.describe Blog, type: :model do
   it { is_expected.to belong_to(:user) }
   it { is_expected.to have_db_column(:title).of_type(:string) }
   it { is_expected.to have_db_column(:content).of_type(:text) }
end
