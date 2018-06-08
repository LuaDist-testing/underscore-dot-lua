local _ = require("src/underscore")

describe("_.slice", function()
  it("should return the values of the input starting at the specified index and the specified length", function()

    local input = {1, 2, 3, 4}
    local result = _.slice(input, 2, 2)

    assert.are.equals(#result, 2)
    assert.are.equals(result[1], 2)
    assert.are.equals(result[2], 3)
  end)

  describe("when requesting more items than are available", function()
    it("should return all the values of the input after the specified index", function()
      local input = {1, 2, 3, 4}
      local result = _.slice(input, 2, 5)

      assert.are.same(result, {2, 3, 4})
    end)
  end)
end)
