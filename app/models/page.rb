# coding: utf-8
class Page < ActiveRecord::Base
  validates :name, format: { :with => /\A[0-9A-Za-zА-Яа-яЁё_]+\z/ }
end
