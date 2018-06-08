local _ = require("src/underscore")

describe("_.reverse", function()
  it("should return a reversed array", function()

    local input = {1, 2, 3}
    local result = _.reverse(input)

    assert.are.same(result, {3,2,1})
  end)
end)
