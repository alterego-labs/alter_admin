# -*- encoding : utf-8 -*-
class <%= class_name %>AdminSetting

  def self.model_class
    <%= class_name %>
  end

  def self.table_columns
    default_columns
  end

  def self.show_columns
    default_columns
  end

  def self.edit_columns
    default_columns
  end

  def self.scopes
    []
  end

  private

  def self.default_columns
    model_class.columns.inject({}) { |hash, c| hash[c.name.to_sym] = {as: c.type }; hash;  }.except(*hidden_columns)
  end

  def self.hidden_columns
    [:created_at, :updated_at]
  end

end
