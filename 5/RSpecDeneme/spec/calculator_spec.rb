require "calculator"

#1 -------------------------------
=begin

RSpec.describe Calculator do

    context "#topla" do
        
        it "returns sum of two nums" do
            calculator = Calculator.new
            expect(calculator.topla(3, 5)).to eq 8
        end

        it "rises when inputs are not a number" do
            calculator = Calculator.new
            expect(calculator.topla("sa", 5)).to eq 8
        end
    end
end

=end






#2 ---------------------------------------------------

# Eşitlik kontrolu normal parantez ile ()
# Davranış, hata kontrolün süslü parantez -blok- ile {}
=begin

RSpec.describe Calculator do

    context "#topla" do
        
        it "returns sum of two nums" do
            calculator = Calculator.new
            expect(calculator.topla(3, 5)).to eq 8
        end

        it "rises when inputs are not a number" do
            calculator = Calculator.new
            expect{calculator.topla("sa", 5)}.to raise_error
        end
    end
end

=end
#Warning: undefined exception

#3 ---------------------------------------------------
# improved version of test to test exception name

RSpec.describe Calculator do

    context "#topla" do
        
        it "returns sum of two nums" do
            calculator = Calculator.new
            expect(calculator.topla(3, 5)).to eq 8
        end

        it "rises when inputs are not a number" do
            calculator = Calculator.new
            expect{calculator.topla("sa", 5)}.to raise_error(NotANumberError)
        end
    end
end


