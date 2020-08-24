SimpleAssets.add("turbolinks") do |opts|
  <<~EOL
    <script src="https://cdnjs.cloudflare.com/ajax/libs/turbolinks/#{opts[:version] || '5.2.0'}/turbolinks.js"></script>
  EOL
end
