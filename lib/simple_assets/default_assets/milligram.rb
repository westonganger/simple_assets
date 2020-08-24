SimpleAssets.add("milligram") do |opts|
  <<~EOL
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/milligram/#{opts[:version] || "1.3.0"}/milligram.min.css" />
  EOL
end
