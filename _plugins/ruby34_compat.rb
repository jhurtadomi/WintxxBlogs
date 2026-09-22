# _plugins/ruby34_compat.rb
# Liquid 4.0.3 (locked by github-pages) calls String#tainted? which was
# removed in Ruby 3.2. This plugin restores it as a no-op so the site
# builds correctly on Ruby 3.2+ without changing any gem versions.
if RUBY_VERSION >= '3.2'
  class String
    def tainted?
      false
    end
    def untaint
      self
    end
  end

  class Object
    def tainted?
      false
    end
    def untaint
      self
    end
  end
end
