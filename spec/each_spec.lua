local _ = require("src/underscore")

describe("_.each", function()
  local input = {1, 2, 3}
  local func = mock(function() end)
  local result = _.each(input, func)

  it("should call the function on each element", function()
    assert.spy(func).was.called_with(3)
  end)

  it("should return the input", function()
    assert.are.equals(result, input)
  end)
end)
