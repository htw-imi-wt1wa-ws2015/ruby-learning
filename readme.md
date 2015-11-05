
# Rubylearning Project

[![Build Status](https://travis-ci.org/htw-imi-wt1wa-ws2015/ruby-learning.svg)](https://travis-ci.org/htw-imi-wt1wa-ws2015/ruby-learning)

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
to the repository. **I added admin rights, so each one of you who already has commit rights can
add other contributers**

The Idea is to create a file for each concept, e.g.

| File Name                         | Who's working on it     | Ready for Review? | Reviewer    | Notes                                                             |
|:----------------------------------|:------------------------|:------------------|:------------|:------------------------------------------------------------------|
| method_definitions.rb             | Silvio, Maté            | yes               | Max, Stefan, Katia, Ramin|                                                                   |
| control_structures.rb             | Houssein                | no                |            |                                                                   |
| loops.rb                          | Ludwig, Katia           | yes               | Silvio, Tim, Jessica, Arian | added downto / Tim: Removed "upto, downto, each, times" because these are iteration idioms and not "loops". Check iteration_idioms.rb for those. #pedantic |
| strings.rb                        | Arian, Lars, Jessica    | yes               | Matthias, Simon | all good. added multiply test, fixed grammar and typos in test descriptions. |
| arrays.rb                         | Tu, Nadine, Christina   | yes               | Arian, Oliver       |                                                                   |
| hashes.rb                         | Stefan, Josh            | yes               |             |                                                                   |
| symbols.rb                        | Simon, Matthias         | yes               | Michel, Maté, Silvio | looks good, didn't find any other possible/relevant examples, no failures |
| iteration_idioms.rb # each, to    | Tim, Stefan, Konrad     | yes               | Katia, Lars |                                                                   |
| enumerator.rb # esp. map & inject | Moritz, Felix           | no                |             | see http://ruby-doc.org/core-2.2.3/Enumerable.html                |
| regular_expressions.rb            | Oliver, Ramin           | yes               |Tu, Christina, Nadine  |worked without failures, main test cases are represented                                                                |
| reading_and_writing_files.rb      | Stefan, Michel, Max     | yes               | Konstantin, Sebastian | Good selection of examples. Everything worked without errors, no typos found. |
| blocks_and_yield.rb               | Konstantin, Sebastian   | yes               | Josh, Stefan            | https://github.com/neo/ruby_koans/blob/master/src/about_blocks.rb |
|                                   |                         |                   |             |                                                                   |

There are a couple of people missing! Just add your name or maybe even find a
part of ruby that isn't covered yet.

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
