local _ = require("src/underscore")

describe("_.invoke", function()

  local i1 = mock({foo = function() end})
  local i2 = mock({foo = function() end})
  local input = {i1, i2}
  local result = _.invoke(input, 'foo')

  it("should call the function on each element", function()
    -- TODO Review this test
    --assert.spy(input.i1.foo).was.called_with(_)
    --assert.spy(input.i2.foo).was.called_with(_)
  end)

  it("should return the input", function()
    assert.are.equals(result, input)
  end)
end)
