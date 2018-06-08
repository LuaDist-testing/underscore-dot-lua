local _ = require("src/underscore")

describe("_.reduce", function()
  it("should apply the reduction function to each item in the list - sum function", function()
    local input = {1, 2, 3, 4}
    local result = _.reduce(input, 0, function(memo, val) return memo + val end)
    assert.are.equals(result, 10)
  end)
  it("should apply the reduction function to each item in the list - mult function", function()
    local input = {1, 2, 3, 4}
    local result = _.reduce(input, 1, function(memo, val) return memo * val end)
    assert.are.equals(result, 24)
  end)
end)
