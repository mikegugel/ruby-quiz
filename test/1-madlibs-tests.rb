# This file should be copied into a test ending in 'tests.rb' so that
# the Rakefile knows it's a test.

require "set-standalone-test-paths.rb" unless $started_from_rakefile
require 'test/unit'
require 's4t-utils'
include S4tUtils

## Require either the particular file under test like this:
 require 'ruby-quiz/1-madlibs'
## or the entire package:
# require 'ruby-quiz'

class TestName < Test::Unit::TestCase
  ## You probably want to include your library so that you don't have
  ## to tack RubyQuiz:: onto every name, but I won't assume
  ## that.
  include RubyQuiz

  def setup
  end

  def teardown
  end

  def test_find_single_placeholder
    assert_equal(find_placeholder("I had a ((an adjective)) sandwich"), ["an adjective"])
  end
  def test_find_multiple_placeholders
    assert_equal(find_placeholder("I had a ((an adjective)) sandwich for lunch today. It dripped all over my ((a body part)) and ((a noun))"), ["an adjective","a body part", "a noun"])
  end
end
