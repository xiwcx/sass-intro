
Your Mac, like your server, is a unix based system. This makes it awesome for developing web sites and appications as you can configure it to run very similarly to your production environment. In fact, it's shipped with the applications you need to run a web server included.

But wait! Don't go enabling apache yet, friend. You don't necessarily want to  edit configuration files or install server applications directly in the environment your Mac uses to run itself. Instead, we'll install some applications that place server apps and scripts in a separate, *sandboxed*environment. Sandboxing helps limit how much of your computer you can mess up, which we can all agree is a good thing.

You'll need a little command line knowledge to get things set up, but after that it's smooth sailing.

## Install these tools in order:

1. Mamp: http://www.mamp.info/en/index.html  
    Mamp is Mac Apache Mysql Php. It's your personal web server on your development machine.  
    *Install directions on site*
2. RVM: https://rvm.io/rvm/install/  
    Ruby Version Manager is a good way to automatically manage ruby versions and gems. It's likely that you'll never actually touch any of its advanced functions, but it's good to have. Sass, Compass, Guard, and every Sass/Compass extension are Ruby Gems.  
    *Install directions on site*  
    Install the latest version of ruby and remember to [set it as your default](https://rvm.io/rubies/default/)
3. Sass: http://sass-lang.com  
    *Install on the command line: gem install sass*
4. Compass: http://compass-style.org/  
    *Install on the command line: gem install compass*
5. Guard: https://github.com/guard/guard  
    Guard is a command line application that runs events on system changes (like saving or adding a new file). We want it because it lets us run multiple "watch" apps under a single terminal tab.  
    *Install on the command line: gem install guard*
6. Guard Compass: https://github.com/guard/guard-compass  
    Handles compass watch through guard  
    *Install on the command line: gem install guard-compass*
7. Guard LiveReload: https://github.com/guard/guard-livereload  
    LiveReload automatically reloads the page when specified assets are changed, and injects specific assets like css into a loaded browser window without reloading the page. It is the bomb.
    *Install on the command line: gem install guard-livereload*  
    Alternatives: If you'd rather use a gui, the LiveReload app is cheap, and if you ask the developer will give it to you... [for free (!?)](http://feedback.livereload.com/knowledgebase/articles/86189-i-don-t-like-livereload-can-you-recommend-somethi).
8. Guard Terminal Notifier: https://github.com/Springest/terminal-notifier-guard
    Sends notifications from guard (like compass watch errors) to Mac's notifier app.  
    *Install on the command line: gem install terminal-notifier-guard*
9. LiveReload browser extensions: http://feedback.livereload.com/knowledgebase/articles/86242-how-do-i-install-and-use-the-browser-extensions-  
    LiveReload requires a small browser extension to work. These extensions add the javascript snippet LiveReload needs to inject styles without reloading the page.   
    *Download and install like a normal browser extension*

## Config files

Guard and Compass use configuration files to manage their settings. You can share these files between projects and with co-workers. 

These are my personal config files, and are provided as robust starting point. They're well commented, but if you have any questions please read the documentation or contact us for clarification.

### Guardfile

Place the .guardfile in your user directory. It manages settings for all guard instances run in directories below it.

### Compass's config.rb

The config file manages all of the Sass and Compass settings that you would otherwise have to input on the command line everytime you initiate `compass --watch`. 

Place config.rb in your project or theme folder, and set up a directory structure like this:

- [Project or theme name]
    - css // Compass will output your compiled css here.
    - scss // Place your scss files here.
    - img // All image files used in s/css go here.
    - js // All javascript files go here.
    - webtype // Place any webfonts you're serving from your site here.

The settings in Config.rb are used in very interesting ways in advanced Sass and Compass coding. We encourage you to research them yourself. A good starting point is [Compass's config file reference](http://compass-style.org/help/tutorials/configuration-reference/).

## Usage

### MAMP

- There are plenty of tutorials on setting up a local server with MAMP. A good starting point is the CSS-Tricks video on setting up MAMP and Wordpress called [First Moments with MAMP](http://css-tricks.com/video-screencasts/86-mamp/).
- For easy project management, set MAMP's root to `/Users/{user name}/Sites`. Download a fresh install of Wordpress, move it to this folder and rename it with your project name. You can then access it with a web browser at `localhost:8888/myproject`.
- A more advanced method is to set up custom local domains like `http://myproject.local`. To do this you'll need to add domain information to:
    - Mac's `hosts` file, located at `/private/etc/`
    -  and Mamp's `httpd-vhosts.conf` file, located at `/Applications/MAMP/conf/apache/extra/`
- Sample files are included in this folder, including commented instructions. An alternate tutorial is available [here](http://mark-kirby.co.uk/2008/setting-up-virtual-hosts-on-os-x-leopard/).

### Command Line

- A little command line knowledge is needed to use Sass, Compass, and Guard. A simple tutorial for using OS X's command line can be found [here](http://wiseheartdesign.com/articles/2010/11/12/the-designers-guide-to-the-osx)
- You could get by with just the `cd` command, but on the command line learning a little more goes a long way. Bone up on `mkdir` and `touch` [right here](http://www.slackbook.org/html/file-commands-creation.html).
- If you're starting to spend a lot of time in Terminal, you may want to grab [iTerm 2](http://www.iterm2.com/#/section/home) a far superior terminal to the default that comes with OS X.

### Compass

- Copy Compass' config.rb file in your theme's root folder `localhost:8888/{your project name}/wp-content/themes/yourtheme`. This will tell Compass which are the relavant files and folders to watch.

### Migration from Local to Production

Migration is a bit out of scope of what we're teaching, but we'll touch on it briefly. If you want to get more in depth, feel free to contact either of us
 
There are a few ways to Migrate. Every one involves transferring files and databases from your local site to a production server.

- There are a few ways to Migrate.
    - The simplest is to change the settings in the Wordpress Admin. This Wordpress Codex page shares a few, the relevant section is [When Your Domain Name or URLs Change: If You Don't Care If Your Old Blog Works](http://codex.wordpress.org/Moving_WordPress#If_You_Don.27t_Care_If_Your_Old_Blog_Works). Then upload the database to the new server, this will break the local install.
    - You can also edit the __siteurl__ and __home__ fields in the _wp_options_ table from `localhost:8888/devsite1` to `http://url.com` once you've imported the database on to the new server. This method is preferable as it leaves both versions functioning.
=======
- The simplest method starts by changing the settings in the Wordpress Admin. This Wordpress Codex page shares some tips in [When Your Domain Name or URLs Change: If You Don't Care If Your Old Blog Works](http://codex.wordpress.org/Moving_WordPress#If_You_Don.27t_Care_If_Your_Old_Blog_Works). Then you'll need to upload the database to the new server. Watch out — this will break the local install.
- You can also edit the _siteurl_ and _home_ fields in the _wp_options_ table from `localhost:8888/{my project name}` to `http://productionsite.com` once you've imported the database on to the new server. This method is preferable as it leaves both versions functioning.
>>>>>>> a886e4857371d95ff98773bfc52202419b5da469
