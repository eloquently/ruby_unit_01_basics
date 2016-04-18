# Check out spec/interview_questions_spec.rb for some interview questions!
# Solve them in this file. Add the methods inside the Interview class for the
# tests to work

class Interview
    # add methods described in the spec file here as static methods. Example:
    # def self.factorial_loop(n)
    #     ....
    # end

    def self.factorial_loop(n)
        factorial = 1
        i = 2
        while i <= n
            factorial = factorial * i
            i += 1
        end
        return factorial
    end

    def self.factorial_recursion(n)
        return 1 if n == 1
        return factorial_recursion(n-1) * n
    end


    def self.fibonacci_loop(n)
        return 1 if n == 0
        return 1 if n == 1
        prev_number = 1
        prev_prev_number = 1
        next_number = 2
        (2..n).each do |i|
            next_number = prev_number + prev_prev_number
            prev_prev_number = prev_number
            prev_number = next_number
        end
        return next_number
    end

    def self.fibonacci_recursion(n, n0=1, n1=1)
        return n0 if n == 0
        return n1 if n == 1
        return fibonacci_recursion(n-1, n0, n1) + fibonacci_recursion(n-2, n0, n1)
    end

    def self.ways_to_make_change(n, coin_values)
        return 0 if n < 0
        return 0 if coin_values.count == 0
        return 1 if n == 0

        return ways_to_make_change(n - coin_values.last, coin_values) +
                    ways_to_make_change(n, coin_values.first(coin_values.count-1))
    end
end