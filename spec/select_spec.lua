local _ = require("src/underscore")

describe("_.select", function()

  local input = {1, 2, 3}
  local result = _.select(input, function(i) return i > 2 end)

  it("should return an array with only elements that do pass the truth function", function()
    assert.are.same(result, {3})
  end)
end)
