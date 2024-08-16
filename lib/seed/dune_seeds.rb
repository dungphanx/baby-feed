# this seed
# 1. creates new users
# 2. creates new babies
# 3. creates new user_babies
#
class DuneSeeds
  class << self
    def run!
      new.run
    end
  end

  def run
    ActiveRecord::Base.transaction do
      create_pics!
      create_babies!
    end
  end

  private

  def create_pics!
    %w(dad mom grandma).each do |role|
      User.create!(name: role)
    end
  end

  def create_babies!
    dad_id = User.find_by(name: 'dad').id
    %w(Pearl Jade).each do |name|
      Baby.create!(name: name, dob: Date.new(2024, 8, 9), user_id: dad_id).tap do |baby|
        User.pluck(:id).each do |user_id|
          UserBaby.create!(user_id: user_id, baby: baby)
        end
      end
    end
  end
end