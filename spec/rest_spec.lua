local _ = require("src/underscore")

describe("_.rest", function()
  it("should all items but the first", function()
    local input = {1, 2, 3, 4}
    local result = _.rest(input)
    assert.are.same(result, {2,3,4})
  end)
  describe("when specifying a starting index", function()
    it("should all items but the first, starting with the specified index", function()
      local input = {1, 2, 3, 4}
      local result = _.rest(input, 3)
      assert.are.same(result, {3, 4})

    end)
  end)
end)
