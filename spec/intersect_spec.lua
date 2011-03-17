require 'spec_helper'

describe['_.intersect'] = function()
    before = function()
        a = {1, 2, 3}
        b = {101, 2, 1, 10}
        c = {2, 1}
        result = _.intersect(a, b, c)
    end

    it['should return only values present in all inputs'] = function()
        expect(result).should_equal {1, 2}
    end
end

spec:report(true)
