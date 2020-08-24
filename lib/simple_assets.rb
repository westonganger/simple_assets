require "simple_assets/version"

module SimpleAssets

  class Error < StandardError; end

  @@assets = {}

  def self.add(name, &block)
    @@assets[name] = block

    return true
  end

  def self.render(name, opts={})
    if @@assets[name]
      str = @@assets[name].call(opts)
    else
      raise Error.new("Asset `#{name}` is not yet defined")
    end

    if str.respond_to?(:html_safe) && !str.html_safe?
      str = str.html_safe
    end

    return str
  end

end

### Require Default Assets
Dir[File.join(__dir__, "simple_assets/default_assets/*.rb")].each do |f| 
  require "simple_assets/default_assets/#{f.split("/").last}"
end
