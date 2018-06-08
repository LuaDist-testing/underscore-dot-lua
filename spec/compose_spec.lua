local _ = require("src/underscore")

describe("_.compose", function()
  it("should create a function that when called calls all the functions like f(g(h()))", function()

    local f = mock(function() return 1 end)
    local g = mock(function() return 2 end)
    local h = mock(function() return 3 end)

    local c = _.compose(f, g, h)

    -- f(g(h(4)))
    local result = c(4)

    assert.spy(f).was.called_with(2)
    assert.spy(g).was.called_with(3)
    assert.spy(h).was.called_with(4)

    assert(result == 1)

  end)
end)
