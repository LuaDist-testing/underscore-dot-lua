local _ = require("src/underscore")

describe("_.pluck", function()
  it("should return an array of the same size with the value of the specified property for each element", function()
    local input = {{i = 1}, {i = 2}, {i = 3}}
    local result = _.pluck(input, 'i')
    assert.are.same(result, {1, 2, 3})
  end)
end)
