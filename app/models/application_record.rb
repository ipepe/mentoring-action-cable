class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
#   acts_as_paranoid

  def self.human_enum_name(enum_name, enum_value)
    I18n.t("activerecord.attributes.#{model_name.i18n_key}.#{enum_name.to_s.pluralize}.#{enum_value}")
  end

  def human_enum_name(enum_name)
    I18n.t("activerecord.attributes.#{model_name.i18n_key}.#{enum_name.to_s.pluralize}.#{self.read_attribute(enum_name)}")
  end
  
  def self.pluck_to_hash(*keys)
    pluck(*keys).map{|pa| Hash[keys.zip(pa)]}
  end

  protected
  def self.enum_with_string_values(definitions)
    definitions.keys.each do |k|
      definitions[k]= definitions[k].each_with_object(Hash.new) {|ct,h|  h[ct] = ct.to_s}
    end
    enum(definitions)
  end
end
