
class Array

    def my_uniq 
       array= [] 
       self.each do |el| 
        array << el if !array.include?(el)
       end
       array
    end

    def two_sum
        return nil if self.empty?
        arr = []
        self.each_with_index do |num1, i1|
            self.each_with_index do |num2, i2|
                arr <<[i1,i2] if i1 < i2 && num1 + num2 == 0 
            end
        end
        arr 
    end
    def my_transpose 
        self.transpose 
    end


    
end
