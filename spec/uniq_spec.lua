require 'spec_helper'

describe['_.uniq'] = function()
    before = function()
        a = {2, 4, 6, 2, 4, 8, 9, 1}
        result = _.uniq(a)
    end

    it['should remove duplicate elements'] = function()
        expect(result).should_equal {2, 4, 6, 8, 9, 1}
    end
end

spec:report(true)
