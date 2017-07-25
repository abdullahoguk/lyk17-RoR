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

    class NotANumberError < StandardError
    end
    
    class Calculator
        def topla(sayi1, sayi2)
            fail NotANumberError unless [sayi1,sayi2].all? {|sayi| sayi.is_a?(Fixnum)}
            sayi1 + sayi2
        end
    end


