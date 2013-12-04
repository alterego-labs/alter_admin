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

  private

  def self.default_columns
    model_class.columns.inject({}) { |hash, c| hash[c.name.to_sym] = {as: c.type }; hash;  }
  end

end
