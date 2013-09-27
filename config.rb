###
# Page options, layouts, aliases and proxies
###

with_layout false do
  page "/index.html"
  page "/index2.html"
end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)

%w(event books shopping about_us shop_list link blog contact news info).each do |p|
  proxy "/#{p}.html", "/underconstructing.html"
end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
