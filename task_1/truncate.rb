module Truncate

  def truncate *names, length: 120
    prepend_module = Module.new do
      
      names.map(&:to_sym).each do |name|
        assign_method = "#{name}=".to_sym

        define_method assign_method do |value|
          value = value.to_s
          value = value[0...length] + '...' if value.length > length
          defined?(super) ? super(value) : instance_variable_set("@#{name}", value)
        end

      end

    end

    prepend prepend_module
  end


  def truncate2 *names, length: 120
    names.map(&:to_sym).each do |name|
      assign_method = "#{name}=".to_sym
      old_method    =  instance_methods(false).include?(assign_method) ? instance_method(assign_method) : nil

      define_method assign_method do |value|
        value = value.to_s
        value = value[0...length] + '...' if value.length > length
        old_method ? old_method.bind(self).call(value) : instance_variable_set("@#{name}", value)
      end

    end
  end

end
