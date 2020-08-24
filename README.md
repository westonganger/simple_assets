# SimpleAssets

<a href="https://badge.fury.io/rb/simple_assets" target="_blank"><img height="21" style='border:0px;height:21px;' border='0' src="https://badge.fury.io/rb/simple_assets.svg" alt="Gem Version"></a>
<a href='https://travis-ci.org/westonganger/simple_assets' target='_blank'><img height='21' style='border:0px;height:21px;' src='https://travis-ci.org/westonganger/simple_assets.svg?branch=master' border='0' alt='Build Status'></a>
<a href='https://rubygems.org/gems/simple_assets' target='_blank'><img height='21' style='border:0px;height:21px;' src='https://ruby-gem-downloads-badge.herokuapp.com/simple_assets?label=rubygems&type=total&total_label=downloads&color=brightgreen' border='0' alt='RubyGems Downloads' /></a>
<a href='https://ko-fi.com/A5071NK' target='_blank'><img height='22' style='border:0px;height:22px;' src='https://az743702.vo.msecnd.net/cdn/kofi1.png?v=a' border='0' alt='Buy Me a Coffee'></a>


Dead simple assets helper and management for Ruby. The main idea here is to promote re-usability for projects. Pairs nicely with any Ruby website generator or framework. Great for Static Site Generators, Apps, Rails Engines, etc.

# Features

- Simplify your asset management in a sane way
- Promote Re-usability across Projects
- Works with any Ruby website generator or framework

# Installation

```ruby
gem "simple_assets"
```

# Usage

Define each asset:

```ruby
# config/initializers/simple_assets/my-asset.rb

SimpleAssets.add("my-asset") do |opts|
  html = <<~ EOL
    if opts[:only] == "css"
      <link src="https://#{ENV["CDN_URL"]}/my-asset/#{opts[:version]}/my-asset.min.css" type="text/css" />
    end

    if opts[:only] == "js"
      <script src="https://#{ENV["CDN_URL"]}/my-asset/#{opts[:version]}/my-asset.min.js"></script>

      <script type"text/css">
        $(document).on('ready', function(){
          MyAsset.init();
        });
      </script>
    end
  EOL

  html
end
```

Note: I recommend using a seperate file for each asset so that its easy to copy custom assets from one project to another

Then in your view file call the following function:

```erb
<%= SimpleAssets.render("my-asset", version: "1.0.0", foo: "bar") %>
```

Note: When `SimpleAssets.render` is called the lambda/proc is called using `.call`. It does not cache the output string so as to enable for more dynamic usage.

# Built-In Library Support

In an effort to save time and energy this gem comes bundled with a small default set of libraries that I think every application could benefit from:

- [autosize](http://www.jacklmoore.com/autosize/)
- bootstrap - Additional Options: `bootswatch_theme: "yeti"`
- [bulma](https://bulma.io/)
- [chosen](https://github.com/harvesthq/chosen)
- font-awesome - 3.x, 4.x, 5.x
- jquery
- [jquery.sticky](https://github.com/garand/sticky)
- [jquery.tablesorter](https://github.com/Mottie/tablesorter)
- [milligram](https://github.com/milligram/milligram)
- [masonry](https://github.com/desandro/masonry)
- [rails-ujs](https://github.com/rails/rails/tree/master/actionview/app/assets/javascripts)
- [turbolinks](https://github.com/turbolinks/turbolinks)
- [x-editable](https://vitalets.github.io/x-editable/)

Please create an issue if you truly feel another library should be included here. Please note that this library does not target any specific Ruby framework or site generator, so only recommend libraries that apply to all possible use-cases.

# Credits

Created & Maintained by [Weston Ganger](https://westonganger.com) - [@westonganger](https://github.com/westonganger)

[![Solid Foundation Web Development Logo](https://solidfoundationwebdev.com/logo-sm.png)](https://solidfoundationwebdev.com)
