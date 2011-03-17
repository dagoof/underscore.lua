require 'spec_helper'

describe['_.last'] = function()
    it['should return the last item'] = function()
        input = {1, 2, 3, 4}
        result = _.last(input)
        expect(result).should_be(4)
    end

    describe['when passing in a size'] = function()
        it['should return an array with the last n items'] = function()
            input = {1, 2, 3, 4}
            result = _.last(input, 2)
            expect(result).should_equal {3, 4}
        end
    end
end

spec:report(true)
