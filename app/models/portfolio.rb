class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, reject_if: lambda {|attrs| attrs['name'].blank?}

  include Placeholder

  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
    # Another Way to define scope.
    # scope :ruby_on_rails_portfolio_items, -> { where(subtitle: ‘angular’)}
  end

  #runs after the instance of portfolio is created in the create def
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||=  Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '250')
  end
end
