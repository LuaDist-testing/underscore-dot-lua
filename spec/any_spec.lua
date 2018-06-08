local _ = require("src/underscore")

local input
local result

describe("_.all", function()
  describe("when providing a truth function", function()
    describe("when some of the elements pass the function", function()
      it("should return true", function()
        input = {1, 2, 3}
        result = _.any(input, function(i) return i % 2 == 0 end)
        assert(result)

      end)
    end)

    describe("when none of the elements pass the function", function()
      it("should return false", function()
        input = {1, 3, 5}
        result = _.any(input, function(i) return i % 2 == 0 end)

        assert(not result)
      end)
    end)
  end)

  describe("when not providing a truth function", function()
    describe("when some elements are not false", function()
      it("should return true", function()
        input = {1, 2, true, false}
        result = _.any(input)

        assert(result)
      end)
    end)

    describe("when none of the elements are not true", function()
      it("should return false", function()
        input = {false, false}
        result = _.any(input)

        assert(not result)
      end)
    end)
  end)
end)
