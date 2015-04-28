class Dog < ActiveRecord::Base
  validates :name, presence: true
  def say_hello
    "Woof from #{name}"
  end
end
