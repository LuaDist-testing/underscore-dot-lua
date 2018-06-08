local _ = require("src/underscore")

describe("_.pop", function()

  local input = {1, 2}
  local result = _.pop(input)

  it("should return the last item of the array", function()
    assert.are.equals(result, 2)
  end)
  it("should remove the last item from the array", function()
    assert.are.same(input, {1})
  end)
end)
