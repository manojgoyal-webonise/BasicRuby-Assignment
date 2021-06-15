# 1) Compute the sum of cubes for a given range a through b. Write a method called sum_of_cubes to accomplish this 
# task. Example Given range 1 to 3 the method should return 36.


def sum_of_cubes(a, b)
    sum = 0
    a.upto(b) do |i|
        sum = sum + i**3
    end
    sum
end

a = gets.to_i
b = gets.to_i
puts sum_of_cubes(a, b)





# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------




# 2) Given an Array, return the elements that are present exactly once in the array. You need to write a method 
# called non_duplicated_values to accomplish this task. Example: Given [1,2,2,3,3,4,5], the method should return [1,4,5].


def non_duplicated_values(arr)
    counts = Hash.new(0)

    arr.each do |ele|
        counts[ele]+=1
    end
    counts.select do |key, count|
        count == 1
    end.keys
end

arr = [1,2,2,3,3,4,5]
print non_duplicated_values(arr), "\n"




# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 3) Given a sentence, return true if the sentence is a palindrome. You are supposed to write a method palindrome? to 
# accomplish this task. Note Ignore whitespace and cases of characters. Example: Given ""Never odd or even"" the 
# method should return true.


def palindrome(str)
    len, i = str.length, 0
    while i < len/2 do
        if str[i].eql?str[len-i-1]
            i+=1;
            next
        else
            return 'false'
        end
    end
        return 'true'
end


str = gets.downcase
str.gsub!(/[^0-9A-Za-z]/, '')
puts palindrome(str)




# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 4) 9 is a Kaprekar number since 9 ^ 2 = 81 and 8 + 1 = 9, 297 is also Kaprekar number since 297 ^ 2 = 88209 and 
# 88 + 209 = 297. In short, for a Kaprekar number # k with n-digits, if you square it and add the right n digits to 
# the left n or n-1 digits, the resultant sum is k. Find if a given number is a Kaprekar number.

def kaprekar(n)
    sqrN = n*n
    sqrN = sqrN.to_s
    len = sqrN.length
    if len%2==0
        a = sqrN[0...len/2].to_i
        b = sqrN[len/2...len].to_i
        if a==0 || b==0
            return "false"
        elsif a+b==n
            return "true"
        else
            return "false"
        end
    else
        a = sqrN[0...len/2].to_i
        b = sqrN[len/2...len].to_i
        if a==0 || b==0
            return "false"
        elsif a+b==n
            return "true"
        else
            a = sqrN[0..len/2].to_i
            b = sqrN[len/2+1...len].to_i
            if a+b==n
                return "true"
            end
            return "false"
        end
    end
end

n = gets.to_i
puts kaprekar(n)




# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 5) Find occurance of RUBY from string 1.

string = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the 
text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."

puts string.scan('RUBY').length




# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------






# 6) Find the position where RUBY occures in the string 1.

string = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the 
text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."

puts string.index("RUBY")




# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 7) Create array of words in string 1 & print them using a recursive function.


def printArr(arr)
    if arr.size==0
        return
    else
        print arr.shift, " "
        printArr(arr)
    end
end
string = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."

wordArr = string.split(' ')
printArr(wordArr)




# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 8) Capitalise string 1


string = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the 
text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."

string.upcase!

puts string




# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 9) Combine string 1 & 2.

string1 = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the 
text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."

string2 = "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type 
is determined by the context in which the variable is used."

puts string1+string2




# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 10) Print current date.

time = Time.now
print "#{time.day} #{time.month} #{time.year} "



# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 11) print 12th Jan 2012

months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
time = Time.local(2012, 1, 12)

print "#{time.day}th #{months[time.month-1]} #{time.year} "



# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 12) add 7 days in current date


def incrementDate(time, n)
    day = time.day + n
    month = time.month
    year = time.year
    if month==1 || month==3 || month==5 || month==7 || month==8 || month==10 || month==12
        if day>31
            day = day - 31
            month+=1
            if month>12
                month-=12
                year+=1
            end
        end
    elsif month==2
        if day>28
            day= day - 28
            month = 3
        end
    else
        if day>30
            day = day - 30
            month+=1
        end
    end
    print "#{day}-#{month}-#{year}"
end

time = Time.now
incrementDate(time, 7)





# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 13) Cut the string 1 into 4 parts & print it.

string = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."

len = string.length

str1 = string[0...len/4]
str2 = string[len/4...len/2]
str3 = string[len/2...3*len/4]
str4 = string[3*len/4...len]


puts str1, str2, str3, str4



# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 14) Divide the string 1 by occurances of '.'. Combine the array in reverse word sequence

string = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
splitArr = string.split('.')

splitArr.each do |line|
    print line.split(' ').reverse, " "
end




# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 15) Remove the HTML characters from string.

string = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the 
text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."

puts string.gsub(/<\/?[^>]*>/, "")




# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 16) Print the 'RUBY' word from string 1 by traversing it using string functions

string = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."

if(string.include? "RUBY")
    puts "RUBY"
end




# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 17) Find the length of string 1 & 2.

string1 = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the 
text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."

string2 = "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type 
is determined by the context in which the variable is used."

puts string1.length, string2.length




# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 18) Compare two dates. (12-04-2010 & 12-05-2011). Calculate the days between these two dates

date1 = Time.local(2010, 4, 12)
date2 = Time.local(2011, 5, 12)

sec = (date1-date2).to_i
if sec<0
    sec = sec*-1
end
min = sec/60
hours = min/60
days = hours/24
print days, " days"





# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 19) Print date after 20 days from current date

def incrementDate(time, n)
    day = time.day + n
    month = time.month
    year = time.year
    if month==1 || month==3 || month==5 || month==7 || month==8 || month==10 || month==12
        if day>31
            day = day - 31
            month+=1
            if month>12
                month-=12
                year+=1
            end
        end
    elsif month==2
        if day>28
            day= day - 28
            month = 3
        end
    else
        if day>30
            day = day - 30
            month+=1
        end
    end
    print "#{day}-#{month}-#{year}"
end

time = Time.now
incrementDate(time, 20)





# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 20) Print date in array format.

time = Time.now
print time.to_a

# arr = [time.day, time.month, time.year]
# print arr





# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 21. Print prime numbers from the given array

def prime(n)
    if n<=1
        return "false"
    end
    2.upto(n-1) do |m|
        if n%m==0
            return "false"
        end
    end
    return "true"
end


arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
arr.each do |n|
    if prime(n)=="true"
        puts n
    end
end





# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 22. Write a program for fuel indication.
# Ex: 0 -> Out of fuel, 1-10 -> Low, Please fill, 11-30 -> Good for now, 31-50 -> Almost Full, > 50 -> Full

def fuel_indication(fuel)
    if fuel==0
        return "Out of fuel"
    elsif fuel>=1 && fuel<=10
        return "Low, Please fill"
    elsif fuel>=11 && fuel<=30
        return "Good for now"
    elsif fuel>=31 && fuel<=50
        return "Almost Full"
    elsif fuel>50
        return "Full"
    end
end

fuel = gets.chomp.to_i
puts fuel_indication(fuel)





# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 23. Swap the given values(without the third variable)

def swap(a, b)
    a = a+b
    b = a-b
    a = a-b
    return a, b
end

a,b = 1, 2
puts "a = #{a}  b = #{b}"
a, b = swap(a,b)
puts "a = #{a}  b = #{b}"




# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 24. Program to Randomly Select an Element From the Array


arr = [1, 3, 6, 2, 5, 19, 23, 54]
puts arr.sample

# puts arr.shuffle.first





# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 25. Program to Count the Number of Each Vowel

def count_each_vowel(str)
    puts "a = #{str.count('a')}"
    puts "e = #{str.count('e')}"
    puts "i = #{str.count('i')}"
    puts "o = #{str.count('o')}"
    puts "u = #{str.count('u')}"
end


str = gets.chomp
count_each_vowel(str)




# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 26. Program to Sort a Hash by Value

def sortHash(itemPrice)
    itemPrice.sort_by {|key, val| val}.to_h
    # itemPrice.sort_by(&:last).to_h        another method
end


itemPrice = {
    "pen" => 10,
    "book" => 400,
    "notebook" => 50,
    "bag" => 600,
    "pencil" => 5,
    "gel_pen" => 20
}
print sortHash(itemPrice)




# -----------------------------------------+++++++++++++++++++++++++++++++++++++---------------------------------------------------------------





# 27. Program to Convert Two Arrays Into a Hash

key = ['a', 'b', 'c', 'd']
val = [1, 2, 3, 4]

myHash =  Hash[key.zip(val)]
print myHash



