module Utils
  class Aux

    def self.get_class(m,t)
      klass = Kernel.const_get("#{m}::#{t}")
    end
  end
end