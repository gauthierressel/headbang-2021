# activate :sprockets
activate :livereload
activate :directory_indexes
activate :dato, live_reload: true

# Proxy
proxy "/contact/index.html", "/templates/contact/index.html"
proxy "/informations-utiles/index.html", "/templates/informations-utiles/index.html"
proxy "/manifeste/index.html", "/templates/manifeste/index.html"
proxy "/mentions-legales/index.html", "/templates/mentions-legales/index.html"
proxy "/politique-de-confidentialite/index.html", "/templates/politique-de-confidentialite/index.html"
proxy "/credits/index.html", "/templates/credits/index.html"

dato.dates.each do |date|
  proxy "/#{date.slug}/index.html", "/templates/date/index.html", :locals => { :date => date }
end

# enable livereload on development
# configure :development do
#   activate :livereload
# end

# Source & build dir
# set :source, "app"

# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Slim
set :slim, { :pretty => false }

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
  activate :minify_css
  activate :minify_javascript
end
