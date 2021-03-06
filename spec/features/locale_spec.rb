# encoding: UTF-8

require 'spec_helper'

feature 'Я хочу подать объявление на сайте на русском языке' do
  scenario 'Я захожу на сайт' do
    visit '/'
    current_path.should == "/#{I18n.locale}"
  end

  scenario 'Хочу поменять язык на русский, если это не текущий язык' do
    I18n.locale = :en
    visit '/'
    click_link 'RU'

    current_path.should == '/ru'
  end
end
