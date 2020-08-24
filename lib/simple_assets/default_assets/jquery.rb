SimpleAssets.add("jquery") do |opts|
  <<~EOL
    "<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/#{opts[:version]}/jquery.min.js" ></script>"
  EOL
end
