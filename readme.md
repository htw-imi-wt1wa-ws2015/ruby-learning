
# Rubylearning Project

  [![Build Status](https://travis-ci.org/htw-imi-info3/rubylearning.png?branch=master)](https://travis-ci.org/htw-imi-info3/rubylearning)

This is a project where you can explore the ruby language together.
Your assignment is to create one file in a group of 2-3 students together
to show how that construct works and is used in ruby. I've provided an
example on how it could look like with classes.

At the same time you practice using git, github and rspec.
(and working with several people on one repository including handling merge conflicts)

To avoid merge bubbles, please git pull --rebase instead of just git pull before
committing your changes. Read [https://de.atlassian.com/git/tutorials/rewriting-history/git-rebase](https://de.atlassian.com/git/tutorials/rewriting-history/git-rebase)
if you're not sure what that means.

I want to see contributions of everyone of you in the repository.
Send me an email with "htw-imi-wt1wa-ws2015/ruby-learning
" in the subject containing just your github login so I can add you as committer
to the repository.

The Idea is to create a file for each concept, e.g.

| File Name                         | Who's working on it | Reviewer | Notes                                                             |
|:----------------------------------|:--------------------|:---------|:------------------------------------------------------------------|
| classes.rb                        |                     |          |                                                                   |
| method_definitions.rb             |                     |          |                                                                   |
| control_structures.rb             |                     |          |                                                                   |
| loops.rb                          |                     |          |                                                                   |
| strings.rb                        |                     |          |                                                                   |
| arrays.rb                         |                     |          |                                                                   |
| hashes.rb                         |                     |          |                                                                   |
| symbols.rb                        |                     |          |                                                                   |
| iteration_idioms.rb # each, to    |                     |          |                                                                   |
| enumerator.rb # esp. map & inject |                     |          | see http://ruby-doc.org/core-2.2.3/Enumerable.html                |
| regular_expressions.rb            |                     |          |                                                                   |
| reading_and_writing_files.rb      |                     |          |                                                                   |
| blocks_and_yield.rb               |                     |          | https://github.com/neo/ruby_koans/blob/master/src/about_blocks.rb |
|                                   |                     |          |                                                                   |

(we fill the "Who's working on it" in class, if you're finished pick a file to review and just add your name in the table. Make sure to do
this quickly to avoid merge conflicts.)

## How it works
to run the about files, simply type

    rake

## Installation

You need ruby installed.

First, you need to install the necessary dependencies using [bundler](http://bundler.io/).
If you haven't already installed the bundler gem, run

        gem install bundler

Then, run

        bundle

once. This will install all gems listed in `Gemfile` and creates Gemfile.lock stating the actual versions of the installed gems

### Calling the Tests

You can either run all tests with

	rake

(which calls rspec about/\*.rb)

or individual files with

    rspec about/<filename>.rb

You need to make sure all tests / about files run before you push to github.
I've set up Travis for Continuous Integration/Testing.



# Ruby Learning Resources

    * [Differences when coming from Java](https://www.ruby-lang.org/en/documentation/ruby-from-other-languages/to-ruby-from-java/)
    * A neat little tutorial on a [command line app](http://neurogami.com/content/neurogami-10_minutes_to_your_first_Ruby_app/)
    * (old Version of)[Pickaxe Book](http://ruby-doc.com/docs/ProgrammingRuby/)
    * last not least the documentation: [http://ruby-doc.org/core-2.2.3/](http://ruby-doc.org/core-2.2.3/)
