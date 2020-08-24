SimpleAssets.add("chosen") do |opts|
  <<~EOL
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.min.css" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/#{opts[:version] || '1.8.7'}/chosen.jquery.min.js"></script>
  EOL
end
