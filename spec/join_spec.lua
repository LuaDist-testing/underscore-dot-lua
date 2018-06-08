local _ = require("src/underscore")

describe("_.join", function()
  describe("when not specifying a separator", function()
    it("should return a string with each string concatenated", function()
      local input = {'c', 'a', 't'}
      local result = _.join(input)
      assert.are.equals(result, 'cat')
    end)
  end)

  describe("when specifying a separator", function()
    it("should return a string with each string concatenated with specified separator", function()
      local input = {'c', 'a', 't'}
      local result = _.join(input, ",")
      assert.are.equals(result, 'c,a,t')
    end)
  end)
end)
