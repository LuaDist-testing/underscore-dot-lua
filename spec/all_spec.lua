local _ = require("src/underscore")

local input
local result

describe("_.all", function()

  describe("provide a truth function", function()
    describe("all elements pass the function", function()
      it("should return true", function()
        input = {2, 4, 6}
        result = _.all(input, function(i) return i % 2 == 0 end)
        assert.same(result, true)

      end)
    end)

    describe("when all elements don't pass the function", function()
      it("should return false", function()
        input = {1, 2, 3}
        result = _.all(input, function(i) return i % 2 == 0 end)
        assert(not result)

      end)
    end)
  end)

  describe("when not providing a truth function", function()
    describe("when all elements are not false", function()
      it("should return true", function()
        input = {1, 2, true}
        result = _.all(input)

        assert(result)
      end)
    end)

    describe("when some elements are not true", function()
      it("should return false", function()
        input = {1, 2, 3, false}
        result = _.all(input)

        assert(not result)
      end)
    end)
  end)
end)
