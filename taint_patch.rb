# Patch: restore String#tainted? removed in Ruby 3.2+
# Required by Liquid 4.0.3 which is locked by github-pages gem
if RUBY_VERSION >= '3.2'
  class String
    def tainted?; false; end
    def untaint; self; end
  end
  class Object
    def tainted?; false; end
    def untaint; self; end
  end
end
