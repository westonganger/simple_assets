SimpleAssets.add("chosen") do |opts|
  <<~EOL
    <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/#{opts[:version] || '1.8.7'}/chosen.jquery.min.js"></script>
  EOL
end
