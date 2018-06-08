local _ = require("src/underscore")

describe("_.reject", function()
  it("should return an array with only elements that don't pass the truth function", function()
    local input = {1, 2, 3}
    local result = _.reject(input, function(i) return i > 2 end)
    assert.are.same(result, {1, 2})
  end)
end)
