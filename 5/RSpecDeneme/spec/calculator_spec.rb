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

=begin

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

=end


#4 ---------------------------------------------------
# other tests

=begin
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

    context "#cikar" do
        
        it "returns difference of two nums" do
            calculator = Calculator.new
            expect(calculator.cikar(3, 5)).to eq -2
        end

        it "rises when inputs are not a number" do
            calculator = Calculator.new
            expect{calculator.cikar("sa", 5)}.to raise_error(NotANumberError)
        end
    end

    context "#carp" do
        
        it "returns sum of two nums" do
            calculator = Calculator.new
            expect(calculator.carp(3, 5)).to eq 15
        end

        it "rises when inputs are not a number" do
            calculator = Calculator.new
            expect{calculator.carp("sa", 5)}.to raise_error(NotANumberError)
        end
    end

    context "#bol" do
        
        it "returns division of two nums" do
            calculator = Calculator.new
            expect(calculator.bol(7, 3)).to eq 2
        end

        it "rises when inputs are not a number" do
            calculator = Calculator.new
            expect{calculator.bol("sa", 5)}.to raise_error(NotANumberError)
        end

        it "rises when dividing zero" do
            calculator = Calculator.new
            expect{calculator.bol(13, 0)}.to raise_error(DivededByZero)
        end
    end
end

=end



#5 ---------------------------------------------------
# Improved version of other tests

RSpec.describe Calculator do
before do
    @calculator = Calculator.new
end

    context "#topla" do
        
        it "returns sum of two nums" do
            expect(@calculator.topla(3, 5)).to eq 8
        end

        it "rises when inputs are not a number" do
            expect{@calculator.topla("sa", 5)}.to raise_error(NotANumberError)
        end
    end

    context "#cikar" do
        
        it "returns difference of two nums" do
            expect(@calculator.cikar(3, 5)).to eq -2
        end

        it "rises when inputs are not a number" do
            expect{@calculator.cikar("sa", 5)}.to raise_error(NotANumberError)
        end
    end

    context "#carp" do
        
        it "returns sum of two nums" do
            expect(@calculator.carp(3, 5)).to eq 15
        end

        it "rises when inputs are not a number" do
            expect{@calculator.carp("sa", 5)}.to raise_error(NotANumberError)
        end
    end

    context "#bol" do
        
        it "returns division of two nums" do
            expect(@calculator.bol(7, 3)).to eq 2
        end

        it "rises when inputs are not a number" do
            expect{@calculator.bol("sa", 5)}.to raise_error(NotANumberError)
        end

        it "rises when dividing zero" do
            expect{@calculator.bol(13, 0)}.to raise_error(DivededByZero)
        end
    end
end
