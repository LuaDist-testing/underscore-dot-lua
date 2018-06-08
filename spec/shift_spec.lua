local _ = require("src/underscore")

describe("_.shift", function()

  local input = {1, 2}
  local result = _.shift(input)

  it("should return the first item of the array", function()
    assert.are.equals(result, 1)
  end)

  it("should remove the first item from the array", function()
    assert.are.same(input, {2})
  end)
end)
