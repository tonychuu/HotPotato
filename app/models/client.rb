class Client < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :country_code, presence: true
  validates :phone_number, format: {  with: /\A([(]\d{3}[)]\d{3}-\d{4})|^$\Z/,
                                      message: 'must be in the format (123)456-7890'}

  # Assuming country_select is used with User attribute `country_code`
  # This will attempt to translate the country name and use the default
  # (usually English) name if no translation is available

  def country_name
    country = ISO3166::Country[country_code]
    country.translations[I18n.locale.to_s] || country.name
  end
end
