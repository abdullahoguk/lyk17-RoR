# LYK 2017 Log

## 1. Gün (21 Temmuz) 
* install `rvm` from http://rvm.io/
    * `gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB`

    * `\curl -sSL https://get.rvm.io | bash -s stable`
* install ruby `rvm install ruby`
* `rvm list` > `ruby-2.4.0 [ x86_64 ]`
* `rvm alias create default 2.4.0` then `rvm use default`


## 2. Gün (22 Temmuz)

* Ruby gems (https://rubygems.org/)
* Interactive ruby `irb`
* 
```ruby
4.class
"".empty?
"".nil?
2.methods
```
* define method
    ```ruby
        def hello(name, surname, age)
            puts "Name: #{name}" Surname: #{surname} Age: #{age}"
            puts "Name: "+ name + "Surname: "surname + "Age: " age
        end
    ```
* call method
```ruby
hello("as", "df", 22)
hello "as", "df", 22
```

* method names ends with 
    * `!` : danger (modifying method)
    * `?` : like is ... 
    * `=` : setter method
* Naming
    * Constants are upper case `PI`
    * Class and module names are `camelCase`
    * variables are `snail_case`
    * local vars and temporary variables `_temp`
    * global vars starts with `$`
    * instance vars starts with `@`
    * static vars starts with `@@`

* Run ruby file `ruby "filename.rb"`

* Semantic Versioning (http://semver.org/lang/tr/)
    * Major, Minor, Patch
* Git Flow (https://danielkummer.github.io/git-flow-cheatsheet/)
* bundler gem  `gem install bundler`  https://rubygems.org/gems/bundler/
    * `bundle init`
    * add `gem "sinatra"` to Gemfile 
    * `bundle install`
    
* 



## 3. Gün (23 Temmuz)
* Pry
* Documentations
* Data Types
* Input/output
    * Input
        * gets `message = gets`
        * readline
    * Output
* Regex
    * `=~` or `match`
    * Sources
        * http://regexr.com/
        * http://emailregex.com/
        * http://rubular.com/
        * https://ruby-doc.org/core-2.2.0/Regexp.html
        * https://github.com/VerbalExpressions/RubyVerbalExpressions

* Enumerables
    * each
        ```ruby
            arr = [14, "str", true, /\Ab\Z/]
            
            arr.each do |i| 
                print "#{i.class}
            end

        ```
        > `Integer String TrueClass Regexp`
    * map
        ```ruby 
        pry(main)> arr.map {|i| i.class}
        ```
        > `[Integer, String, TrueClass, Regexp]
    * select 
        ```ruby
            (1..100).select{|i| i%5 == 0 && i%7 == 0} 

        ```
        > `Select 1 to 100 that can be divided by 5 and 7`
    * reject
        ```ruby
            (1..100).reject{|i| i%5 == 0 && i%7 == 0}  

        ```
        > `Select all 1 to 100 except that can be divided by 5 and 7`
    * inject
    * group_by

* Arrays
    * `<<`
    * `+` 
    * `flatten`
    * `-` 
    * `delete`
    * `delete_at`
    * `*` `ilk, * , son`, `a, *b`, ...

* **Hash** data structre (dict, associative array, keyValue ...)
    * 
        ```ruby
            ogrenci = { 'ad': 'Serdar', 'soyad':'Doğruyol', 1 => "saa" }  
        ```
     > ` {"ad"=>"Serdar", :soyad=>"Doğruyol", 1=>"saa"}`
    * `ogrenci.keys`, `ogrenci.values`


* **HWs**
    * `palindrome?`
        ```ruby
        def palindrome?(input)
        input.downcase.delete(" ") == input.downcase.delete(" ").reverse
        end
        ```
    * `kac_adet(sentence, search_entry)` cümlede kaç adet girilen entryden var
        ```ruby
        def kac_adet(sentence, entry)
            sentence.split.select{|i| i==entry}.length
        end
        ```
    * `uzunluk_bulucu_metod` kelimeleri uzunluğuna göre ayır
        
    * `sirala` Kelimeleri uzunluğuna göre sırala ve ayır
        ```ruby
        def sirala(str)
            str.split(" ").sort_by {|word| word.size}.join(' ') 
        end
        ```


## 4. Gün (24 Temmuz)
* Conditional Statements
    * `if, else, elsif`
        ```ruby
        if condition 
            print "success"
        end

        if condition then print "success" end
        
        print "success" if condition
        ```
        ```ruby
         if condition 
             print "success"
        elsif condition
            print "fail"
        else
            print "unknown"
        end

        if statement then print"success" else print"fail" end
        ```
        
    * `unless` runs when it is not true (if not) 
        ```ruby
        unless condition 
          print "success" 
        end

        if !condition
          print"success" 
        end

        print"success"  unless condition
        ```

    * `? :` (Ternatry operator)
        ```ruby
            condition ? print"success" : print"fail"
            
        ```
    * if unless and ternary, returns value of final statement
        
    * `case - when` (switch case)
    ```ruby
       num = 14.7

       puts case num
            when String  then "It is a String"
            when Integer then "It is an integer"
            when Float   then "It is a Float"
            else              "Unknown"
       end

       puts case 
            when num.class == String  then "It is a String"
            when num.class == Integer then "It is an integer"
            when num.class == Float   then "It is a Float"
            else              "Unknown"
       end
    ```

* Enumerable Module (looping, iterating...)
    ```
    Enumerable.instance_methods.sort

    :all?, :any?, :chunk, :collect, :collect_concat, :count, :cycle, :detect, :drop, :drop_while, 
    :each_cons, :each_entry, :each_slice, :each_with_index, :each_with_object,
    :entries, :find, :find_all, :find_index, :first, :flat_map, :grep, :group_by, 
    :include?, :inject, :lazy, :map, :max, :max_by, :member?, :min, :min_by, :minmax, 
    :minmax_by, :none?, :one?, :partition, :reduce, :reject, :reverse_each, 
    :select, :slice_before, :sort, :sort_by, :take, :take_while, :to_a, :to_h, :zip]
    ```

* Loops
* Error Handling
* **Blocks** (do ... end {} like anonymous function)
    * Everything is object in ruby but blocks are not. so we cannot assign blocks to a variable 
    * 
    ```ruby
        def topla(a, b) a+b end
        topla(3,5)   # => 8

        topla = {|a, b| a+b } #SyntaxError...
    ```
    * **lambda** and **proc** are object versions of **block** we can use them when assigning
    ```ruby
        topla = lambda {|a, b| a+b }

    ```
    * metodu proca cevir, arraye at, bir stringde bu metotların hepsini birere biren cagır
    ```ruby
    # converting methods to proc
    def topla(a,b) a+b end
    method(:topla).to_proc
    

    yazdır = -> a {puts a}
    cizdir = -> a {puts "-----#{a}:)"}
    buyut = -> a {puts a.upcase}
    methods = [yazdır,cizdir,buyut]

    methods.each {|proc| proc.call "test"}
    #Output>>>
    #   test
    #   -----test:)
    #   TEST
    ```
    * passing **proc** to a function
    ```ruby
    def hesapla(s1, s2, islem)
      islem.call(s1, s2)
    end

    toplam = hesapla(3, 5, lambda {|a, b| a+b})  # => 8 
    fark   = hesapla(3, 5, lambda {|a, b| a-b})  # => -2
    carpma = hesapla(3, 5, lambda {|a, b| a*b})  # => 15
    bolme  = hesapla(3, 5, lambda {|a, b| a/b})  # => 0
 
    # toplam equals to
    topla = lambda {|a, b| a+b}
    topla.call(3,5)
    ```
    * passing **block** to a function
    ```ruby
    def hesapla(s1, s2, &islem)
        islem.call(s1, s2)
    end

    toplam = hesapla(3, 5) {|a, b| a+b}  # => 8
    fark   = hesapla(3, 5) {|a, b| a-b}  # => -2
    carpma = hesapla(3, 5) {|a, b| a*b}  # => 15
    bolme  = hesapla(3, 5) {|a, b| a/b}  # => 0
    ```
* **Classes** inheritable (Inheritence)
    * 
    ```ruby
        class Device
    end
    ```
    
    * OOP
    ```ruby
    class Canli
        def breathe;end
        def breed;end
    end
    
    class Hayvan < Canli
        def hunt;end
    end

    class Mammal < Hayvan
        def birth;end
    end

    class Human < Mammal
        def initialize(name, surname, gender)
            @name = name
            @surname = surname
            @gender = gender
        end            
        
        def speak;end
        def think;end
        def know_thyself;end
    end

    # Instances
    serdar = Human.new
    serdar.think
    serdar.speak
    
    serdar.name #...
    ```

    * All vars in instances are private by default
    * Getter setter methods
    * multiple inheritence not allowed. Use modules instead (Composition over inheritence) 
    * Macro (kod yazan kod, class_eval, instance_eval, eval), meta programming ...
    * sınıf Metotları (sınıfa özel)
    * Classları ve modülleri yeniden açıp kapama !!! (Mindblown)
    ```ruby
        class String
            def selamun_aleykum
                puts "SA Ruby çok güzel"
            end
        end
        
        "Test".selamun_aleykum
        # > SA Ruby çok güzel
        
        # duplicate a function with different name
        class Array
            alias_method :kere, :each
        end
        
        [1,"tr"].kere do |item| prints item.class
        end 
        # >>
        # Integer
        # String  
    ```

    * Inheritence




## 5. Gün (25 Temmuz)
* **Modules** Includable (Composition)
    * `bundle gem gemName` intializes a gem
    * Multiple inheritence can be achieved by modules
    * Module names are constants
    * 
    ```ruby
    module MyModule
        SABIT = 26
        class A; end
        
        module Module2
        end
    end
    
    MyModule::SABIT
    MyModule::A.new
    MyModule::Module2
    ```
    * Methods
    * Module methods
    ```ruby
        module MyModule
            def self.myMethod() puts "Module Method" end
        end
        
        #Or
        module MyModule2
            def myMethod2() puts "Module Method 2" end

            module_function :myMethod2
        end

        MyModule.myMethod
        MyModule2.myMethod2
    ```
    * `include` (Ancestors can be Module or a Class)
    ```ruby
        module Behavior
            def say_hi() "Hello" end
        end

        class Person
            include Behavior
        end

        Person.new.say_hi  # => "Hello"

        ## ANCESTORS

        puts Person.ancestors

        ##>>
        # Person
        # Behavior
        # Object
        # PP::ObjectMixin
        # Kernel
        # BasicObject

    
        puts Person.ancestors.map {|a| a.class}

        ##>>
        # Class
        # Module
        # Class
        # Module
        # Module
        # Class
    ```
    * `prepend`
    * `extend`

* **File Operations** (`File` Class) 
    ```ruby
        File.open('hello', 'w') do |dosya|
          dosya.print "Hello World!"
        end
    ```

    * Modes
    * `close` ruby automatically closes file when block is given (close ! is important) 
    * write
    * read
    * csv
    
* **Date and time** operations
    * Time new
    * 
    ```ruby
        Time.new.tuesday? # >true ....
        
    ```
    * Date
    * DateTime

* Ruby Toolbox - best most used gems by categories (https://www.ruby-toolbox.com/)
* CodeWars - training, challenges, practice... (https://www.codewars.com/)
* Exercism (http://exercism.io)
* TDD (Test !!!)
* Continuous integretion (TravisCI)
* `rspec`
    1) `bundle init`
    2) add `gem "rspec"` to gemfile
    3) `bundle`
    4) `rspec --init`
    5) `bundle exec rspec` runs test
    6) code files will be in `/lib` directory (myFile.rb)
    7) test file will be in `/spec` directory (myFile_spec.rb) and add `require "myFile"` to top 


## 6. Gün (26 Temmuz)

## 7. Gün (27 Temmuz)

## 8. Gün (28 Temmuz)

## 9. Gün (29 Temmuz)

## 10. Gün (30 Temmuz)

## 11. Gün (31 Temmuz)

## 12. Gün (1 Ağustos)

## 13. Gün (2 Ağustos)

## 14. Gün (3 Ağustos)

## 15. Gün (4 Ağustos)

## 16. Gün (5 Ağustos)


