# frozen_string_literal: true

require 'rspec/expectations'

class SowePage
  include RSpec::Matchers

  def initialize
    get_screen_mappings 'sowe', 'core'
  end

  def sowe_home_page?
    wait_for_element_exist @mappings['home_page_sowe']
  end

  def click_btn_register
      click @mappings['cadastrar_btn']
  end

  def send_keys_phone text
      fill_in @mappings['phone_input'], text
  end

  def click_phone_avancar_btn
      click @mappings['phone_submit']
  end

  def send_keys_name text
      fill_in @mappings['name_input'], text
  end

  def click_name_avancar_btn
      click @mappings['name_submit']
  end

  def click_on_localization_btn
      click @mappings['localization_btn']
  end

  def click_on_localization_answer_yes_btn
      click @mappings['localization_answer_yes']
  end

  def sowe_home_temperature_page?
      wait_for_element_exist @mappings['header_sowe']
  end
end
