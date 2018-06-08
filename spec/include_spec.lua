local _ = require("src/underscore")

describe("_.include", function()
  it("should return the true if the item is in the list", function()
    local input = {1, 2, 3}
    local result = _.include(input, 2)
    assert.are.equals(result, true)
  end)

  it("should return false when the item is not in the list", function()
    local input = {1, 2, 3}
    local result = _.include(input, 4)
    assert.are.equals(result, false)
  end)
end)
