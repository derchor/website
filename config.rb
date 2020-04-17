# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :images do |images|
  images.optimize = true
end


configure :build do
  activate :minify_css
  activate :minify_javascript
end

activate :livereload
activate :directory_indexes

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

page 'index.html', layout: 'home'
page "/konzerte/*", layout: "concert"
page "*", layout: "default"

# Webpack config for postcss (tailwindcss, purgecss)
activate :external_pipeline,
         name: :webpack,
         command: build? ? './node_modules/webpack/bin/webpack.js --bail' : './node_modules/webpack/bin/webpack.js --watch -d --color',
         source: ".tmp/dist",
         latency: 1

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

helpers do
  def next_concert
    concert_paths = concerts.map(&:url)
    index = concert_paths.index(current_page.url)
    concert_paths[index-1]
  end

  def previous_concert
    concert_paths = concerts.map(&:url)
    index = concert_paths.index(current_page.url)
    concert_paths[index+1]
  end

  def concerts
    sitemap.resources.select{ |r| r.path.include?("konzerte/") && !r.data.current_concert }
                      .sort_by { |c| c.data.year.to_i  }
  end

  def posts
    sitemap.resources.select{ |r| r.path.include?("posts/") && !r.data.current_concert }
                     .sort_by { |p| p.data.date }
  end
end

