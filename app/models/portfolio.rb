class Portfolio < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
    # Another Way to define scope.
    # scope :ruby_on_rails_portfolio_items, -> { where(subtitle: ‘angular’)}
  end

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= 'http://via.placeholder.com/600x400'
    self.thumb_image ||= 'http://via.placeholder.com/350x200'
  end
end
