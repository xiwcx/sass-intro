# Sass, Compass, & Working Locally

## Sass

Sass is a css preproessor that compiles in to CSS.

-  css/scss Example

### Intro

-  Why Sass? What do you get?
    - Organizational and
    - Logic tools, which equal
    - More managable, more maintainable, faster developing, and more fun coding!
-  SASS vs. SCSS: There are two syntaxes. Today we’re using the SCSS syntax
    - Scss is a superset of css
    - So easy to start, just rename your files
    - Start using the features you're comfortable with, and when you
-  Compile output
    - Your sass turns into css
    - This is what you feed the browser
    - ? Not sure what other info to push here.
-  sassmeister.com (if their local setups aren't solid)

### The Easy Stuff

-  Variables
-  Nesting

### Mid-level

-  Mixins, arguments
-  Extend
-  Functions
    -  [Great Color Function Example](http://sassme.arc90.com/)

### Advanced Catch All

-  Math
-  Control Directives
-  Debug


Pretty exhausting to write and maintain your own library. Sass is extensible. There are a few libraries built on top of it, but we're going to focus on

## Compass

- SASS is extensible with libraries. The two most popular are Compass and Bourbon.
- Compass is more than just a collection of prebuilt mixins
- It's the defacto standard. People build on Sass *and* Compass.
- It's the clear winner and what we’ll be talking about today.

### What does it offer, and what makes it different (from sass and other extensions)?

When most people think compass, they think:

-  prebuilt mixins and functions for CSS3. People contribute to keep them up to date.
-  shortcuts: link colors mixin

Compass is also:

-  config.rb
    -  Preferences don't have to be called everytime in the command line, they can be set in the config.rb
    -  Extensions can be required together, and the config file shared for people working on the same project
-  Compass Watch -- Like sass watch (command line tool) but uses the configuration file instead of arguments
-  Further ecosystem
    - There are tons of compass extensions. Grids, color management, toolkits. Don’t write it yourself, use and contribute.
    -  For example: singularity & breakpoint. Code/screenshot example.

Compass is not perfect

- Use wisely. Always check what the mixin/function you're using outputs (example output and source code on site).
    -  clearfix example — their default is overflow: hidden.
    -  People try to keep the mixins up to date, but there's a lag
    -  You always have to understand your tools. Don't use blindly



-----

**FIVE MINUTE STRETCH - JUMPING JACKS**

-----

## Best Practices

### Sass/Compass

- Two layer abstraction
- Populate your extends with a mixin (rwd gotcha)
- Partials for code organization and mental sanity
    - It's easier to wrap your head around what this code should do and avoid spreading rules around the css file if you wall it in with a partial.
- Let go of how the css looks. Maintainable scss, performant css
    - explain gzip 
- Remember: DON'T EDIT THE CSS
    - All people working on a project need to buy in to sass
    - Junk file for the bits and pieces, people who don't know scss
- WORK LOACALLY. You are a fool to not. 
    - Some reasons.
    - Which brings us to...

## Practical Local Workflow

- Why dev locally?
    - check your work much faster (no FTP)
    - 

Now that you have the basics, here's how to roll sass into a practical, modern local workflow for efficient and enjoyable development

### Components:

-  MAMP, Local server
-  Compiling your sass (compass, guard-compass, codekit/gui)
    -  Command Line
        -  Sass
        -  Compass
        -  Livereload
        -  Bundled: Guard (guard-livereload, guard-compass)
    -  GUI
        -  Compass.app: works in mac, linux, and PC
        -  Scout: for Windows
        -  Codekit (livereload doesn't work in Firefox, only webkit)
-  Style injection
    - Keep a browser window open.
    - What is livereload? (style injection)
    - No page refresh, maintain states. Save time and waiting. Little waits add up.
- Inspecting your css, revising your sass
    - Turn on Sass line number comments
    - Using sass inspector
    - Going cray cray and saving from the inspector directly to sass
- What to upload, brief touch on mysql import/ git




## This concludes. Questions?

-----------

### Inspection Notes

-  Browser inspecting: using sass you want to add `Sass::Plugin.options[:debug_info] = true` to `config/environment.rb`. Using Compass you want to add `sass_options = {:debug_info => true}` to `config.rb`
    -  Firesass extension for Firebug
        -  [Firesass Github page](https://github.com/nex3/firesass)
    -  Chrome: Don’t use Sass Inspector, it’s harder to set up and appears to have been abandoned for the native ability being developed. Enable dev tool experiments. Seems to be broken in Canary at the moment.
        -  [Using Sass source maps in WebKit Inspector](http://bricss.net/post/33788072565/using-sass-source-maps-in-webkit-inspector)
        -  [The Breakpoint with Paul Irish and Addy Osmani—Episode 2](http://www.youtube.com/watch?v=PPXeWjWp-8Y) (first segment)
