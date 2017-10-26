module Enumerable


    def my_each

        for i in self
            yield i
        end

    end


    def my_each_with_index

        ind = 0     # logs the index

        for i in self
            yield(i, ind)
            ind += 1
        end

    end


    def my_select

        sel = []

        self.my_each do |e|
            if yield e
                sel << e
            end
        end

        return sel
    end



end
