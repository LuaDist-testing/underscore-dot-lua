local _ = require("src/underscore")

describe("_.push", function()

  local input = {1, 2}
  local result = _.push(input, 3)

  it("should add the item onto the end of the array", function()
    assert.are.same(result, {1, 2, 3})
  end)
  it("should return the input array", function()
    assert.are.same(result, input)
  end)
end)
