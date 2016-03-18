class Seave
  def duplicate_counter(data)
    unless data.class == Array
      puts "Please provide an array populated with numbers!"
    else
      if data == data.uniq
        puts "'duplicate_counter(#{data})` would return `0` because there are no duplicate elements."
      else
        data_copy = data
        duplicates = []

        data.each do |n|
          if data.count(n) < 2
            duplicates << n
          end
        end

        data -= duplicates
        hash = {}

        data.each do |n|
          hash[data.count(n)-1] = n
        end

        str = "`duplicate_counter(#{data_copy})` would return "
        no_of_sets = 0

        hash.keys.each do |key_value|
          no_of_sets += key_value
        end

        str += "`#{no_of_sets}` because there are #{no_of_sets} sets of duplicates ("

        hash.each do |key,value|
          if key == 1
            str += "#{key} set of `#{value}`s "
            unless key == hash.keys.last
              str += "and "
            end
          else
            str += "#{key} sets of `#{value}`s"
            unless key == hash.keys.last
              str += "and "
            end
          end
        end
        str += ")."

        puts str
      end
    end
  end
end

test = Seave.new.duplicate_counter(1)
test = Seave.new.duplicate_counter([5, 7, 9])
test = Seave.new.duplicate_counter([1, 7, 7, 7, 3, 5])
test = Seave.new.duplicate_counter([0,-5,-5,33,33,33])
