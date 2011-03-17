require 'spec_helper'

describe['_.compact'] = function()
    before = function()
        input = {1, 2, 3, false, 4, nil, 5, true}
        result = _.compact(input)
    end

    it['should remove falsey values'] = function()
        expect(result).should_equal {1, 2, 3, 4, 5, true}
    end
end

spec:report(true)
