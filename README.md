# SimpleAssets

<a href="https://badge.fury.io/rb/simple_assets" target="_blank"><img height="21" style='border:0px;height:21px;' border='0' src="https://badge.fury.io/rb/simple_assets.svg" alt="Gem Version"></a>
<a href='https://travis-ci.com/westonganger/simple_assets' target='_blank'><img height='21' style='border:0px;height:21px;' src='https://travis-ci.com/westonganger/simple_assets.svg?branch=master' border='0' alt='Build Status'></a>
<a href='https://rubygems.org/gems/simple_assets' target='_blank'><img height='21' style='border:0px;height:21px;' src='https://ruby-gem-downloads-badge.herokuapp.com/simple_assets?label=rubygems&type=total&total_label=downloads&color=brightgreen' border='0' alt='RubyGems Downloads' /></a>
<a href='https://ko-fi.com/A5071NK' target='_blank'><img height='22' style='border:0px;height:22px;' src='https://az743702.vo.msecnd.net/cdn/kofi1.png?v=a' border='0' alt='Buy Me a Coffee'></a>


Dead simple HTML-based assets helper for Ruby. The main idea is to promote re-usability between projects. Great for Static Site Generators, Apps, Rails Engines, etc.

# Features

- Simplify your asset management in a sane way
- Promote Re-usability across Projects
- Works with any Ruby website generator or framework

# Installation

```ruby
gem "simple_assets"
```

# Usage

Create your asset definitions:

```ruby
# config/initializers/simple_assets/my-asset.rb

SimpleAssets.add("my-asset") do |opts|
  html = ""

  if opts[:only] == "css"
    html += <<~EOL
      <link rel="stylesheet" href="#{ENV["CDN_URL"]}/my-asset/#{opts[:version]}/my-asset.min.css" />
    EOL
  end

  if opts[:only] == "js"
    html += <<~EOL
      <script src="#{ENV["CDN_URL"]}/my-asset/#{opts[:version]}/my-asset.min.js"></script>

      <script type"text/css">
        $(document).on('ready', function(){
          MyAsset.init();
        });
      </script>
    EOL
  end

  html
end
```

For another example definition please view the default [bootstrap asset definition](https://github.com/westonganger/simple_assets/blob/master/lib/simple_assets/default_assets/bootstrap.rb)

Note: I recommend using a seperate file for each asset so that its easy to copy custom assets from one project to another

Then in your view file call the following function:

```erb
<%= SimpleAssets.render("my-asset", version: "1.0.0", foo: "bar") %>
```

Note: When `SimpleAssets.render` is called the lambda/proc is called using `.call`. It does not cache the output string so as to enable for more dynamic usage.

# Built-In Library Support

In an effort to save time and energy this gem comes bundled with a small default set of libraries that I think every application could benefit from. These defaults can easily be overwritten using the `SimpleAssets.add` method. 

Please create an issue if you truly feel another library should be included here. Please note that this library does not target any specific Ruby framework or site generator, so only recommend libraries that apply to all possible use-cases.

- [autosize](http://www.jacklmoore.com/autosize/) - [View Source](https://github.com/westonganger/simple_assets/blob/master/lib/simple_assets/default_assets/autosize.rb)
- [bootstrap](https://getbootstrap.com/) - [View Source](https://github.com/westonganger/simple_assets/blob/master/lib/simple_assets/default_assets/bootstrap.rb)
  * Additional Options: `bootswatch_theme: "yeti"`
- [bulma](https://bulma.io/) - [View Source](https://github.com/westonganger/simple_assets/blob/master/lib/simple_assets/default_assets/bulma.rb)
- [chosen](https://github.com/harvesthq/chosen) - [View Source](https://github.com/westonganger/simple_assets/blob/master/lib/simple_assets/default_assets/chosen.rb)
- [font-awesome](https://fontawesome.com/) - [View Source](https://github.com/westonganger/simple_assets/blob/master/lib/simple_assets/default_assets/font-awesome.rb)
- [jquery](https://jquery.com/) - [View Source](https://github.com/westonganger/simple_assets/blob/master/lib/simple_assets/default_assets/jquery.rb)
- [jquery.tablesorter](https://github.com/Mottie/tablesorter) - [View Source](https://github.com/westonganger/simple_assets/blob/master/lib/simple_assets/default_assets/jquery.tablesorter.rb)
- [masonry](https://github.com/desandro/masonry) - [View Source](https://github.com/westonganger/simple_assets/blob/master/lib/simple_assets/default_assets/masonry.rb)
- [milligram](https://github.com/milligram/milligram) - [View Source](https://github.com/westonganger/simple_assets/blob/master/lib/simple_assets/default_assets/font-awesome.rb)
- [rails-ujs](https://github.com/rails/rails/tree/master/actionview/app/assets/javascripts) - [View Source](https://github.com/westonganger/simple_assets/blob/master/lib/simple_assets/default_assets/rails-ujs.rb)
- [turbolinks](https://github.com/turbolinks/turbolinks) - [View Source](https://github.com/westonganger/simple_assets/blob/master/lib/simple_assets/default_assets/turbolinks.rb)
- [x-editable](https://vitalets.github.io/x-editable/) - [View Source](https://github.com/westonganger/simple_assets/blob/master/lib/simple_assets/default_assets/x-editable.rb)

# Credits

Created & Maintained by [Weston Ganger](https://westonganger.com) - [@westonganger](https://github.com/westonganger)

[![Solid Foundation Web Development Logo](https://solidfoundationwebdev.com/logo-sm.png)](https://solidfoundationwebdev.com)
