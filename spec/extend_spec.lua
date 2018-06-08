local _ = require("src/underscore")

describe("_.extend", function()
  local source = {a = 1 }
  local destination = {b = 2, c = 3}
  local result = _.extend(source, destination)

  it("should add all values from the destination table into the source table", function()
    assert.are.same(result, {a = 1, b = 2, c = 3})
  end)

  it("should return the source table", function()
    assert.are.equals(result, source)
  end)
end)
