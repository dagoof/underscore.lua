require 'spec_helper'

describe['_.index_of'] = function()
    before = function()
        input = {4, 3, 5, 6, 4}
    end
    it['should return the index of the given element'] = function()
        result = _.index_of(input, 5)
        expect(result).should_be(3)
    end
    
    describe['when multiple instances exist'] = function()
        it['should return the first index'] = function()
            result = _.index_of(input, 4)
            expect(result).should_equal(1)
        end
    end
end

spec:report(true)
