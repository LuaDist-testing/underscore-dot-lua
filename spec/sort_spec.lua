local _ = require("src/underscore")

describe("_.sort", function()
  describe("when not providing a comparison function", function()
    it("should return an array sorted by <", function()

      local input = {1, 3, 2}
      local result = _.sort(input)
      assert.are.same(result, {1, 2, 3})
    end)
  end)

  describe("when providing a comparison function", function()
    it("should return the items sorted by the comparison function", function()

      local i1 = {age = 10}
      local i2 = {age = 8}
      local i3 = {age = 20}
      local input = {i1, i2, i3}
      local result = _.sort(input, function(first, second) return first.age < second.age end)

      assert.are.same(result, {i2, i1, i3})
    end)
  end)
end)
