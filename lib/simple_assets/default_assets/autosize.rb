SimpleAssets.add("autosize") do |opts|
  <<~EOL
    <script src="https://cdnjs.cloudflare.com/ajax/libs/autosize.js/#{opts[:version] || "4.0.2"}/autosize.min.js"></script>

    <script type="text/javascript">
      $(document).on('turbolinks:load', function(){
        var textarea = $("textarea:not(.no-autosize)");
        textarea.prop('rows','3');
        autosize(textarea);
      });
    </script>
  EOL
end
