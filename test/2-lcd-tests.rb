# This file should be copied into a test ending in 'tests.rb' so that
# the Rakefile knows it's a test.

require "set-standalone-test-paths.rb" unless $started_from_rakefile
require 'test/unit'
require 's4t-utils'
include S4tUtils

## Require either the particular file under test like this:
# require 'ruby-quiz/my-file'
## or the entire package:
# require 'ruby-quiz'

class TestName < Test::Unit::TestCase
  ## You probably want to include your library so that you don't have
  ## to tack RubyQuiz:: onto every name, but I won't assume
  ## that.
  # include RubyQuiz

  def setup
  end

  def teardown
  end

  def test_something
  end
end
