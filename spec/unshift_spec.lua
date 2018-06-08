local _ = require("src/underscore")

describe("_.unshift", function()

  local input = {1, 2}
  local result = _.unshift(input, 3)

  it("should add the item onto the beginning of the array", function()
    assert.are.same(result, {3, 1, 2})
  end)
  it("should return the input array", function()
    assert.are.equals(result, input)
  end)
end)
