# Guardfile for livereloading Sass and Compass local development.

# For Notification Center notifications, install terminal-notifier-guard.

# guard-compass settings
#   https://github.com/guard/guard-compass#configure-guardcompass-plug-in

# :project_path: path to the compass project directory (from guard working directory)
# :configuration_file: path to your compass configuration file (from guard working directory)

# Watch all folders named sass or scss inside the guarded folder, and
# autocompile when a file changes.
guard 'compass' do
  watch(/^.+(\.s[ac]ss)/)
end

# guard-livereload settings
#   https://gist.github.com/1610551

# Reload the browser when assets change inside the guarded directory or any of
# its subfolders.
require 'find'
if Find.find(Dir.pwd).detect{|dir|dir=~/.+\.(css|js|html?|php|inc|module|info)$/}
  # https://github.com/guard/guard-livereload
  guard 'livereload' do
    watch(%r{.+\.(css|js|html?|php|inc|module|info)$})
  end
end