SimpleAssets.add("bulma") do |opts|
  <<~EOL
    <link rel="stylesheet" src="https://cdnjs.cloudflare.com/ajax/libs/bulma/#{opts[:version] || "0.9.0"}/css/bulma.min.css">
  EOL
end
