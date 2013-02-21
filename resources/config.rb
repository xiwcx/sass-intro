# Require any additional compass plugins here.
## Example:
# require 'singularitygs' # Includes modular-scale.
# require 'breakpoint'

# Choose environment. One of :production or :development
environment = :development

# Select an output style. One of :expanded, :nested, :compact, or :compressed.
output_style = (environment == :development) ? :nested : :compressed

# Directory settings. All are relative to the watched folder.
http_path = "/" # Set to the root of your project when deployed.
css_dir = "css"
sass_dir = "scss"
images_dir = "img"
generated_images_dir = "img/sprites"
javascripts_dir = "js"
fonts_dir = "webtype"

# Enable relative paths to assets via compass helper functions.
# Use for Drupal and Wordpress themes instead of setting base path.
relative_assets = true

# Display the original location of your selectors in css comments. Defaults to true.
# line_comments = false

# To debug directly with FireSass or Chrome Web Inspector, set to true.
debug = false
# Pass options to sass.
sass_options = (environment == :development && debug == true) ? {:debug_info => true} : {}

# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass
