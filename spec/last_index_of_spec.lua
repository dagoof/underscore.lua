require 'spec_helper'

describe['_.last_index_of'] = function()
    before = function()
        input = {4, 3, 5, 6, 4}
    end
    it['should return the index of the given element'] = function()
        result = _.last_index_of(input, 5)
        expect(result).should_be(3)
    end
    
    describe['when multiple instances exist'] = function()
        it['should return the last index'] = function()
            result = _.last_index_of(input, 4)
            expect(result).should_equal(5)
        end
    end
end

spec:report(true)
