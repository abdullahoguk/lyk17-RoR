#1 ----------------------------
#code before first test
=begin

    class Calculator
        def topla(sayi1, sayi2)
            sayi1 + sayi2
        end
    end

=end

#2 ----------------------------
#code for first two tests
=begin

    class Calculator
        def topla(sayi1, sayi2)
            fail unless [sayi1,sayi2].all? {|sayi| sayi.is_a?(Fixnum)}
            sayi1 + sayi2
        end
    end

=end


#3 ----------------------------
#improved code for first two tests to get rid of warning undifined exception

=begin
    class NotANumberError < StandardError
    end
    
    class Calculator
        def topla(sayi1, sayi2)
            fail NotANumberError unless [sayi1,sayi2].all? {|sayi| sayi.is_a?(Fixnum)}
            sayi1 + sayi2
        end
    end

=end


#4 ----------------------------
# other methods


=begin
    class NotANumberError < StandardError
    end
    

    class DivededByZero  < StandardError
    end

    class Calculator
        def topla(sayi1, sayi2)
            fail NotANumberError unless [sayi1,sayi2].all? {|sayi| sayi.is_a?(Fixnum)}
            sayi1 + sayi2
        end

        def cikar(sayi1, sayi2)
            fail NotANumberError unless [sayi1,sayi2].all? {|sayi| sayi.is_a?(Fixnum)}
            sayi1 - sayi2
        end

        def carp(sayi1, sayi2)
            fail NotANumberError unless [sayi1,sayi2].all? {|sayi| sayi.is_a?(Fixnum)}
            sayi1 * sayi2
        end

        def bol(sayi1, sayi2)
            fail NotANumberError unless [sayi1,sayi2].all? {|sayi| sayi.is_a?(Fixnum)}
            fail DivededByZero if sayi2 == 0
            sayi1 / sayi2
        end
    end

=end

#5 ----------------------------
# other methods improved

    class NotANumberError < StandardError
    end
    

    class DivededByZero  < StandardError
    end

    class Calculator
        def topla(sayi1, sayi2)
            sayi?(sayi1, sayi2)
            sayi1 + sayi2
        end

        def cikar(sayi1, sayi2)
            sayi?(sayi1, sayi2)
            sayi1 - sayi2
        end

        def carp(sayi1, sayi2)
            sayi?(sayi1, sayi2)
            sayi1 * sayi2
        end

        def bol(sayi1, sayi2)
            sayi?(sayi1, sayi2)
            fail DivededByZero if sayi2 == 0
            sayi1 / sayi2
        end

        private 
        def sayi?(*numbers)
            fail NotANumberError unless [*numbers].all? {|sayi| sayi.is_a?(Fixnum)}
        end 
    end




