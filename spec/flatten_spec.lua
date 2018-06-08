local _ = require("src/underscore")

describe("_.flatten", function()
  local input = {1, 2, {3, 4, {5}}, {{6, 7}}}
  local result = _.flatten(input)

  it("should return an array with each item", function()
    assert.are.same(result, {1, 2, 3, 4, 5, 6, 7})
  end)
end)
