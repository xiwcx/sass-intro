# Sass, Compass, & Working Locally

## Sass

Sass is a css preproessor that compiles in to CSS. 

### Intro

-  Why? What do you get?
-  SASS vs. SCSS: There are two syntaxes. Today we’re using the SCSS syntax
-  Example
-  Compiled output

-  sassmeister.com

### The Easy Stuff

-  Variables
-  Nesting

### Mid-level

-  Mixins, arguments
-  Extend
-  Functions

### Advanced Catch All

-  Math
-  Control Directives
-  Debug

### Best Practices

-  Two layer abstraction
-  Populate your extends with a mixin (rwd gotcha)

Pretty exhausting to write and maintain your own library. Sass is extensible. There are a few libraries built on top of it, but we're going to focus on 

## Compass

There are libraries built on top of SASS. The two most popular are Compass and Bourbon. Compass is the clear winner and that’s what we’ll be talking about today.

### What does it offer?

-  prebuilt mixins and functions for CSS3
-  shortcuts: link colors

### What makes it different?

-  Preferences don't have to be called everytime in the command line, they can be set in the config.rb
-  Bundle extensions, gems can be called in to many projects from a single location

-  Not perfect — use wisely — (clearfix)

### Further ecosystem

There are tons of compass extensions. Grids, color management, toolkits.
Don’t write it yourself, use and contribute.
1 slide, 2 examples, no deeper.

-  singularity
-  breakpoint

_*FIVE MINUTE STRETCH - JUMPING JACKS*_

## Practical Local Workflow

Why?

Components:
-  MAMP, Local server
-  Something to compile your sass
-  Livereload
-  Browser inspection

### Compiling

-  Command Line
    -  Single
        -  Sass
        -  Compass
        -  Livereload
    -  Bundled
        - Guard (guard-livereload, guard-compass)
-  GUI
    -  Compass.app: works in mac, linux, and PC
    -  Scout: for Windows
    -  Codekit (livereload doesn't work in Firefox, only webkit)

### Inspection

-  Browser inspecting: using sass you want to add `Sass::Plugin.options[:debug_info] = true` to `config/environment.rb`. Using Compass you want to add `sass_options = {:debug_info => true}` to `config.rb`
    -  Firesass extension for Firebug
        -  [Firesass Github page](https://github.com/nex3/firesass)
    -  Chrome: Don’t use Sass Inspector, it’s harder to set up and appears to have been abandoned for the native ability being developed. Enable dev tool experiments. Seems to be broken in Canary at the moment.
        -  [Using Sass source maps in WebKit Inspector](http://bricss.net/post/33788072565/using-sass-source-maps-in-webkit-inspector)
        -  [The Breakpoint with Paul Irish and Addy Osmani—Episode 2](http://www.youtube.com/watch?v=PPXeWjWp-8Y) (first segment)