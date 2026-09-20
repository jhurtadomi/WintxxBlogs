# Compatibility patch for Ruby 3.2+ with Liquid 4 / Jekyll 3.9
class Object
  unless method_defined?(:tainted?)
    def tainted?
      false
    end
  end

  unless method_defined?(:taint)
    def taint
      self
    end
  end

  unless method_defined?(:untaint)
    def untaint
      self
    end
  end

  unless method_defined?(:untrusted?)
    def untrusted?
      false
    end
  end

  unless method_defined?(:trust)
    def trust
      self
    end
  end

  unless method_defined?(:untrust)
    def untrust
      self
    end
  end
end
