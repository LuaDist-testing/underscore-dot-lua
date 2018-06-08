local _ = require("src/underscore")

describe("_.wrap", function()
  it("should create a new function that is pased the wrapped function when called", function()

    local f = mock(function() end)
    local g = _.wrap(f, function(func, p1, p2)
      func(p1 + 1, p2 + 1)
    end)

    g(2,4)

    assert.spy(f).was.called_with(3,5)

  end)
end)
