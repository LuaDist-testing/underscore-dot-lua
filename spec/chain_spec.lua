local _ = require("src/underscore")

describe("_.chaining", function()
  it("should be able to chain calls and retrieve the value", function()

    local input = {1, 2, 3}
    local result = _(input):chain():map(function(i) return i * 2 end):map(function(i) return i * 2 end):value()

    assert.are.same(result, {4, 8, 12})

  end)
end)
