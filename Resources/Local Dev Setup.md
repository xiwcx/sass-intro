
Your Mac, like your server, is a unix based system, which makes it awesome for developing web sites and appications. It even comes with a lot of the applications you would need to set up a server built in.

But, you don't necessarily want to start editing configuration files or installing specialized server applications directly in the environment you Mac uses to run itself. Instead, we're going to install applications that *sandbox* server applications and scripts in a separate environment. Sandboxing basically limits what you can mess up, which is a good thing.

You'll need a little acumen on the command line to get things set up, but after that it's smooth sailing.

### Install these tools in this order:

1. Mamp: http://www.mamp.info/en/index.html  
    Mamp is Mac Apache Mysql Php. It's your personal web server on your development machine.  
    *Install directions on site*
2. RVM: https://rvm.io/rvm/install/  
    Ruby Version Manager is a good way to automatically manage ruby versions and gems. It's likely that you'll never actually touch any of its advanced functions, but it's good to have. Sass, Compass, Guard, and every Sass/Compass extension are Ruby Gems.  
    *Install directions on site*
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
    LiveReload requires a small browser extension to work.  
    *Download and install like a normal browser extension*

### Config files

