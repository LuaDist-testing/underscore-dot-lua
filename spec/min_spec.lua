local _ = require("src/underscore")

describe("_.min", function()
  describe("when not providing a transformation function", function()
    it("should return the smallest item in the list", function()
      local input = {1, 2, 3, 2, 1}
      local result = _.min(input)
      assert.are.equals(result, 1)
    end)
  end)

  describe("when providing a transformation function", function()
    it("should item in the list that has the smallest tranformed value", function()
      local input = {1, 2, 3}
      local result = _.min(input, function(i) return -i end)
      assert.are.equals(result, 3)
    end)
  end)
end)
