local _ = require("src/underscore")

describe("_.keys", function()
  it("should return an array with all property names", function()
    local input = { a = 1, b = 2, c = 3 }
    local keys = _.keys(input)

    assert.are.equals(#keys, 3)
    assert.are.equals(_.include(keys, 'a'), true)
    assert.are.equals(_.include(keys, 'b'), true)
    assert.are.equals(_.include(keys, 'c'), true)
  end)
end)
