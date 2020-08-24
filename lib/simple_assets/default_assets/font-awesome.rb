SimpleAssets.add("font-awesome") do |opts|
  html = ""

  if opts[:version].to_i >= 5
    html += %Q(<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/#{opts[:version]}/css/all.css" />)
  else
    html += %Q(<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/#{opts[:version] || "4.7.0"}/css/font-awesome.min.css" />)
  end

  html
end
