require "array"

describe "Array" do 
    let(:array) {[1,2,1,3,3]}

    describe "#my_uniq" do 
        it "removes duplicates from an array and returns the unique elements in the order in which they first appear" do
            expect(array.my_uniq).to eq([1,2,3])
        end
        it "does not mutate orginal array" do 
            expect(array.my_uniq).to eq(array.my_uniq)
        end
    end
end