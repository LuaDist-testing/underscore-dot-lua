local _ = require("src/underscore")

describe("_.to_array", function()
  it("should return the values produced by the iterator in an array", function()

    local function sq(n)
      return coroutine.wrap(function()
        for i = 1, n do
          coroutine.yield(i * i)
        end
      end)
    end

    local result = _.to_array(sq(3))

    assert.are.same(result, {1, 4, 9})
  end)
end)
