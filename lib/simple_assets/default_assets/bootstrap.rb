SimpleAssets.add("bootstrap") do |opts|
  html = ""
  
  version = opts[:version] || "4.3.1"
  major_version = version.to_s.to_i

  if opts[:only] == "css"
    if opts[:bootswatch_theme].present?
      url = "//stackpath.bootstrapcdn.com/bootswatch/#{version}/#{bootswatch_theme}/bootstrap.min.css"
    else
      if major_version == 2
        url = "//stackpath.bootstrapcdn.com/twitter-bootstrap/#{version}/css/bootstrap-combined.min.css"
      else
        url = "//stackpath.bootstrapcdn.com/bootstrap/#{version}/css/bootstrap.min.css"
      end
    end

    html += %Q(<link rel="stylesheet" href="#{url}" />)
  end

  if opts[:only] == "js"
    case major_version
    when 2
      url = "//stackpath.bootstrapcdn.com/twitter-bootstrap/#{version}/js/bootstrap.min.js"
    when 3
      url = "//stackpath.bootstrapcdn.com/bootstrap/#{version}/js/bootstrap.min.js"
    else
      url = "//stackpath.bootstrapcdn.com/bootstrap/#{version}/js/bootstrap.bundle.min.js"
    end

    html += %Q(<script src="#{url}"></script>)
  end

  html
end
