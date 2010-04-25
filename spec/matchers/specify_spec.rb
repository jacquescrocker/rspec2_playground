require 'spec_helper'

# -------
# this spec shows off the specify block that creates an example description from the matchers
# -------

describe "Rspec generated descriptions from matchers" do
  before(:each) do
    @board = ChessBoard.new
  end
  
  # names the example "should have 32 pieces"
  specify { @board.should have(32).pieces }
end