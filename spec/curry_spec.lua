local _ = require("src/underscore")

describe("_.curry", function()
  it("should use the provided argument as the first argument for calls", function()

    local func = mock(function() end)

    local curried_func = _.curry(func, "a")
    curried_func("b", "c")

    assert.spy(func).was.called_with("a", "b", "c")
  end)
end)
