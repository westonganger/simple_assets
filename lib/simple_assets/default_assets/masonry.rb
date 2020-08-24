SimpleAssets.add("masonry") do |opts|
  <<~EOL
    <script src="https://cdnjs.cloudflare.com/ajax/libs/masonry/#{opts[:version] || '4.2.2'}/masonry.pkgd.min.js"></script>
  EOL
end
