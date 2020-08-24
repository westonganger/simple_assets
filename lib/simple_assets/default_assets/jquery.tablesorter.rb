SimpleAssets.add("jquery.tablesorter") do |opts|
  <<~EOL
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/#{opts[:version] || '2.31.1'}/js/jquery.tablesorter.min.js"></script>
  EOL
end
