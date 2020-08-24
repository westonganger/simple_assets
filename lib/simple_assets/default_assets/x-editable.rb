SimpleAssets.add("x-editable") do |opts|
  <<~EOL
    <script src="https://cdnjs.cloudflare.com/ajax/libs/x-editable/#{opts[:version] || '1.5.1'}/bootstrap-editable/js/bootstrap-editable.min.js"></script>
  EOL
end
