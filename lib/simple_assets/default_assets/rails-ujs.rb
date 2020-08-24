SimpleAssets.add("rails-ujs") do |opts|
  <<~EOL
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-ujs/#{opts[:version] || '1.2.2'}/rails.min.js"></script>
  EOL
end
