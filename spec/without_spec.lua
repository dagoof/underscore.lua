require 'spec_helper'

describe['_.without'] = function()
    before = function()
        a = {1, 2, 3, 4, 2, 4}
        result = _.without(a, 2)
    end

    it['should remove the specified element'] = function()
        expect(result).should_equal {1, 3, 4, 4}
    end
end

spec:report(true)
