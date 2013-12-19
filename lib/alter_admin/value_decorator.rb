module AlterAdmin
  class ValueDecorator

    def self.render(model, attribute, info)
      info.has_key?(:value) ? call_value(model, attribute, info) : send_attribute(model, attribute)
    end

    private

    def self.call_value(model, attribute, info)
      info[:value].call(model)
    end

    def self.send_attribute(model, attribute)
      model.send(attribute)
    end

  end
end