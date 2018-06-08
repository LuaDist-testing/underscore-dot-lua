local _ = require("src/underscore")

describe("_.is_empty", function()
  it("should return false when the table has elements in it", function()
    assert.are.equals(_.is_empty {1}, false)
    assert.are.equals(_.is_empty {a = 1}, false)
  end)

  it("should return true when the table has no elements in it", function()
    assert.are.equals(_.is_empty {}, true)
  end)
end)
