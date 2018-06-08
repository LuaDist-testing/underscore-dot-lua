local _ = require("src/underscore")

describe("_.values", function()
  it("should return an array with all property values", function()

    local input = {a = 1, b = 2, c = 3}
    local values = _.values(input)

    assert.are.equals(#values, 3)
    assert.are.equals(_.include(values, 1), true)
    assert.are.equals(_.include(values, 2), true)
    assert.are.equals(_.include(values, 3), true)

  end)
end)
