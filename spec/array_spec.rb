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

    describe "#two_sum" do
        it "finds all pairs of positions where the elements at those positions sum to 0" do
            array1 = Array.new([-1, 0, 2, -2, 1])
            expect(array1.two_sum).to eq([[0, 4], [2, 3]])
        end
        it "if array is empty, returns nil" do 
            expect([].two_sum).to eq(nil)
        end
    end

    describe "#my_transpose" do 
    rows = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
       ]
   cols = [
       [0, 3, 6],
       [1, 4, 7],
       [2, 5, 8]
       ]
        it "Should convert rows into columns" do 
            expect(rows.my_transpose).to eq(cols)
        end
        it "Should convert columns into rows" do
            expect(cols.my_transpose).to eq(rows)
        end
        it "does not call Array#transpose" do 
        # rows = [
        #     [0, 1, 2],
        #     [3, 4, 5],
        #     [6, 7, 8]
        #    ]
            # expect(rows.my_transpose).to_not receive(:transpose)
            # expect(rows).to_not receive(:zip)
            # expect(cols).to_not receive(:transpose)
            # expect(cols).to_not receive(:zip)
            allow_any_instance_of(Array).to receive(:transpose).and_raise("Inappropriate call of Array#transpose")
            expect{rows.my_transpose}.to_not raise_error
            allow_any_instance_of(Array).to receive(:transpose).and_call_original
        end
    end



end