local _ = require("src/underscore")

describe("_.map", function()
  it("should return an array of the same size with all elements transformed by the function", function()
    local input = {1, 2, 3}
    local result = _.map(input, function(i) return i * 2 end)

    assert.are.same(result, {2, 4, 6})

  end)
end)
