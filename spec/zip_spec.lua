require 'spec_helper'

describe['_.zip'] = function()
    before = function()
        a = {1, 2, 3}
        b = {4, 5, 6}
        result = _.zip(a, b)
    end

    it['should transpose the elements of the two arrays'] = function()
        expect(#result).should_be(3)
        expect(result[1]).should_equal {1, 4}
        expect(result[2]).should_equal {2, 5}
        expect(result[3]).should_equal {3, 6}
    end

    describe['when uneven inputs are given'] = function()
        before = function()
            a = {1, 2, 3}
            b = {1, 2}
            result = _.zip(a, b)
        end

        it['should truncate extra elements'] = function()
            expect(#result).should_be(2)
            expect(result[1]).should_equal {1, 1}
            expect(result[2]).should_equal {2, 2}
        end
    end
end

spec:report(true)
