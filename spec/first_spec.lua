local _ = require("src/underscore")

describe("_.first", function()
  it("should return the first item", function()
    local input = {1, 2, 3, 4}
    local result = _.first(input)
    assert.are.equals(result, 1)
  end)

  describe("when passing in a size", function()
    it("should return an array with the first n items", function()
      local input = { 1,2,3,4 }
      local result = _.first(input, 2)
      assert.are.same(result, {1, 2})
    end)
  end)
end)
