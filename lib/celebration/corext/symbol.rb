class Symbol
  alias to_path to_s
  alias_method :to_str, :to_s if RUBY_VERSION =~ /1\.8/
end
